{ lib, stdenv, fetchFromGitHub, buildLinux, ... } @ args:

let
  modDirVersion = "6.6.5-sunlight1";

  parts = lib.splitString "-" modDirVersion;

  version = lib.elemAt parts 0;
  suffix = lib.elemAt parts 1;

  flavour = "lowlatency";

  numbers = lib.splitString "." version;
  branch = "${lib.elemAt numbers 0}.${lib.elemAt numbers 1}";

  rev = "${version}-${flavour}-${suffix}";

  hash = "sha256-GmxhSfCV2l/37r7xCyQhhrygQrOuwkWv62jedjjYVK4=";
in
buildLinux (args // rec {
    inherit version modDirVersion;

    src = fetchFromGitHub {
      owner = "sunlightlinux";
      repo = "linux-sunlight";
      inherit rev hash;
    };

    structuredExtraConfig = with lib.kernel; {
      # Expert option for built-in default values.
      GKI_HACKS_TO_FIX = yes;

      # AMD P-state driver.
      X86_AMD_PSTATE = lib.mkOverride 60 yes;
      X86_AMD_PSTATE_UT = no;

      # Google's BBRv3 TCP congestion Control
      TCP_CONG_BBR = yes;
      DEFAULT_BBR = yes;

      # FQ-PIE Packet Scheduling.
      NET_SCH_DEFAULT = yes;
      DEFAULT_FQ_PIE = yes;

      # Futex WAIT_MULTIPLE implementation for Wine / Proton Fsync.
      FUTEX = yes;
      FUTEX_PI = yes;

      # Shiftfs
      SHIFT_FS = yes;
      SHIFT_FS_POSIX_ACL = yes;

      # Preemptive Full Tickless Kernel at 858Hz.
      LATENCYTOP = yes;

      PREEMPT = lib.mkOverride 60 yes;
      PREEMPT_VOLUNTARY = lib.mkForce no;
      PREEMPT_NONE = lib.mkForce no;

      # WineSync driver for fast kernel-backed Wine.
      WINESYNC = module;

      # OpenRGB driver.
      I2C_NCT6775 = module;

      # 858 Hz is alternative to 1000 Hz.
      # Selected value for a balance between latency, performance and low power consumption.
      HZ = freeform "858";
      HZ_858 = yes;
      HZ_1000 = no;

      SCHEDSTATS = lib.mkOverride 60 yes;
      HID = yes;
      UHID = yes;
    };

    extraMeta = {
      inherit branch;
      maintainers = with lib.maintainers; [ ];
      description = "Sunlight Kernel. Built with custom settings and new features
                     built to provide a stable, responsive and smooth desktop experience";
      broken = stdenv.isAarch64;
    };
} // (args.argsOverride or { }))
