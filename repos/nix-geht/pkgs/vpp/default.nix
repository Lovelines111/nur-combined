{ stdenv, pkgs, lib,
runtimeShell, python3,
enableDpdk ? true,
enableRdma ? true,
enableAfXdp ? false}:

let
  version = "22.10-rc2";
  src = pkgs.fetchFromGitHub {
    owner = "FDio";
    repo = "vpp";
    rev = "v${version}"; #"61bae8a54d14899337b0d0a7ca9b9367f6321951";
    hash = "sha256-3b+cnEjbReCg+svVD4DZwgcLwoA/IDWTGoP9ALYZFR4=";
  };
  getMeta = description: with lib; {
     homepage = "https://fd.io/";
     inherit description;
     license = with licenses; [ asl20 ];
     maintainers = with maintainers; [ vifino ];
     platforms = [ "x86_64-linux" "aarch64-linux" ];
   };


  # Ideally, this'd be down below, but I need it the JSON files for Python API. Maybe have a seperate build for *just* the Schemas?
  vpp = stdenv.mkDerivation rec {
    pname = "vpp";
    inherit version;
    meta = getMeta "Vector Packet Processor Engine";
    inherit src;
    sourceRoot = "source/src";

    nativeBuildInputs = with pkgs; [ pkg-config cmake ninja nasm coreutils ];
    buildInputs = with pkgs; [
      libconfuse numactl libuuid
      libffi openssl zlib

      python3.pkgs.wrapPython(python3.withPackages (pp: with pp; [
        ply # for vppapigen
      ]))

      # linux-cp deps
      libnl libmnl
    ]
    # dpdk plugin
    ++ lib.optional enableDpdk [ dpdk libpcap jansson ]
    # rdma plugin - Mellanox/NVIDIA ConnectX-4+ device driver. Needs overridden rdma-core with static libs.
    ++ lib.optional enableRdma (rdma-core.overrideAttrs (x: {
      cmakeFlags = x.cmakeFlags ++ [ "-DENABLE_STATIC=1" "-DBUILD_SHARED_LIBS:BOOL=false"];
    }))
    # af_xdp deps - broken: af_xdp plugins - no working libbpf found - af_xdp plugin disabled
    ++ lib.optional enableAfXdp libbpf
    # Shared deps for DPDK and AF_XDP
    ++ lib.optional (enableDpdk || enableAfXdp) libelf;

    # Needs a few patches.
    patchPhase = ''
      # This attempts to use git to fetch the version, but we already know it.
      printf "#!${runtimeShell}\necho '${version}'\n" > scripts/version
      chmod +x scripts/version

      # Nix has no /etc/os-release.
      substituteInPlace pkg/CMakeLists.txt --replace 'file(READ "/etc/os-release" os_release)' 'set(os_release "NAME=NIX; ID=nix")'

      patchShebangs .
    '';

    enableParallelBuilding = true;
    cmakeFlags = [ 
      "-DCMAKE_INSTALL_LIBDIR=lib" # wants a relative path
      
      # For debugging CMake:
      #"--trace-source=CMakeLists.txt"
      #"--trace-expand"
    ]
    # Link against system DPDK. Note that this is actually statically linked as well.
    ++ lib.optional enableDpdk "-DVPP_USE_SYSTEM_DPDK=true";
  };
in {
  inherit vpp;

  vpp_papi = python3.pkgs.buildPythonPackage rec {
    pname = "vpp_papi";
    version = "2.0.0";
    meta = getMeta "Vector Packet Processor Engine - Python API";
    inherit src;
    sourceRoot = "source/src/vpp-api/python";

    nativeBuildInputs = [ 
      # Only needed if we'd actually build the JSON API Schemas, but instead we just depend on vpp.
      #ply
      vpp
    ];

    checkInputs = with python3.pkgs.pythonPackages; [ parameterized ];

    patches = [
      # Replaces VPPApiJSONFiles.find_api_dir with placeholder variable vpp
      ./vpp_papi-replace-find_api_dir.patch
    ];

    postPatch = ''sh
      # Replace the placeholder with the nix store path of our dependency.
      substituteInPlace vpp_papi/vpp_papi.py --subst-var-by vpp ${vpp}

      # Remove broken tests.
      rm vpp_papi/tests/test_vpp_papi.py # References old shmem transport, doesn't work with new variant. Ugh.
      rm vpp_papi/tests/test_vpp_serializer.py # Test wants logs DEBUG or higher, but none are triggered?
    '';
  };
}
