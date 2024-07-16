{
  stdenv,
  lib,
  fetchFromGitHub,
  python3,
  customtkinter,
  rocmPackages,
  nix-update-script,
}:
let
  pname = "koboldcpp-rocm";
  version = "1.70.yr0-ROCm";

  src = fetchFromGitHub {
    owner = "YellowRoseCx";
    repo = "koboldcpp-rocm";
    rev = "f123ad3f234ffbe77c75495add2e84936b07bbe7";
    hash = "sha256-uWBkfmYVTwTFdRahB1doyzkxsf+n7JCxD+MqxJ1ITBw=";
  };

  koboldcpp-libs = stdenv.mkDerivation {
    pname = "${pname}-libs";
    inherit version src;

    enableParallelBuilding = true;

    buildInputs = with rocmPackages; [ clr hipblas rocblas ];

    makeFlags = [
      "LLAMA_PORTABLE=1"
      "LLAMA_HIPBLAS=1"
      "CC=hipcc"
      "CXX=hipcc"
      "ROCM_PATH=${rocmPackages.clr}"
    ];

    installPhase = ''
      runHook preInstall

      mkdir -p $out/lib
      cp *.so $out/lib

      runHook postInstall
    '';
  };
in
stdenv.mkDerivation {
  inherit pname version src;

  propagatedBuildInputs = [
    (python3.withPackages (
      ps: [
        ps.numpy
        ps.sentencepiece
        ps.tkinter
        customtkinter
      ]
    ))
  ];

  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,lib}
    install -m755 ./koboldcpp.py $out/bin/koboldcpp
    cp ./{klite.embd,kcpp_docs.embd,rwkv_vocab.embd,rwkv_world_vocab.embd} $out/lib
    cp ${koboldcpp-libs}/lib/*.so $out/lib

    substituteInPlace $out/bin/koboldcpp \
      --replace-quiet "koboldcpp_default.so" "$out/lib/koboldcpp_default.so" \
      --replace-quiet "koboldcpp_failsafe.so" "$out/lib/koboldcpp_failsafe.so" \
      --replace-quiet "koboldcpp_openblas.so" "$out/lib/koboldcpp_openblas.so" \
      --replace-quiet "koboldcpp_noavx2.so" "$out/lib/koboldcpp_noavx2.so" \
      --replace-quiet "koboldcpp_clblast.so" "$out/lib/koboldcpp_clblast.so" \
      --replace-quiet "koboldcpp_clblast_noavx2.so" "$out/lib/koboldcpp_clblast_noavx2.so" \
      --replace-quiet "koboldcpp_cublas.so" "$out/lib/koboldcpp_cublas.so" \
      --replace-fail "koboldcpp_hipblas.so" "$out/lib/koboldcpp_hipblas.so" \
      --replace-quiet "koboldcpp_vulkan.so" "$out/lib/koboldcpp_vulkan.so" \
      --replace-quiet "koboldcpp_vulkan_noavx2.so" "$out/lib/koboldcpp_vulkan_noavx2.so" \
      --replace-warn "klite.embd" "$out/lib/klite.embd" \
      --replace-warn "kcpp_docs.embd" "$out/lib/kcpp_docs.embd" \
      --replace-quiet "rwkv_vocab.embd" "$out/lib/rwkv_vocab.embd" \
      --replace-quiet "rwkv_world_vocab.embd" "$out/lib/rwkv_world_vocab.embd"

    runHook postInstall
  '';

  passthru.updateScript = nix-update-script { };

  # 2024-07-13 broken on nixos-unstable
  preferLocalBuild = true;

  meta = with lib; {
    homepage = "https://github.com/YellowRoseCx/koboldcpp-rocm";
    description = "A simple one-file way to run various GGML models with KoboldAI's UI with AMD ROCm offloading";
    license = licenses.agpl3Only;
    platforms = platforms.linux;
    maintainers = with maintainers; [ ataraxiasjel ];
  };
}
