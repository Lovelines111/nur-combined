# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  amule-dlp = {
    pname = "amule-dlp";
    version = "7b3a07ab554d95267cca0c4a819b26d8474d6b3b";
    src = fetchFromGitHub {
      owner = "persmule";
      repo = "amule-dlp";
      rev = "7b3a07ab554d95267cca0c4a819b26d8474d6b3b";
      fetchSubmodules = false;
      sha256 = "sha256-aZ+BjBNKHbHP44L7iOK9t1n/4l4U+R/pZYfTSBjFOA4=";
    };
    date = "2023-03-02";
  };
  asterisk-alaw16 = {
    pname = "asterisk-alaw16";
    version = "3f81697eec6388a3cdf74743a436ef4faea542d6";
    src = fetchFromGitHub {
      owner = "traud";
      repo = "asterisk-alaw16";
      rev = "3f81697eec6388a3cdf74743a436ef4faea542d6";
      fetchSubmodules = false;
      sha256 = "sha256-A44u5jR+lBzvovS928DogFY8rxpmyxr9a9TeSa8X6hg=";
    };
    date = "2018-08-28";
  };
  asterisk-amr = {
    pname = "asterisk-amr";
    version = "420ab33f236e15955351e45bf9fbb256228afe21";
    src = fetchFromGitHub {
      owner = "traud";
      repo = "asterisk-amr";
      rev = "420ab33f236e15955351e45bf9fbb256228afe21";
      fetchSubmodules = false;
      sha256 = "sha256-Q8q2fF7MtMlyrVYABaM9V5C0FJj0g9oihE6TLsoe28E=";
    };
    date = "2022-01-07";
  };
  asterisk-evs = {
    pname = "asterisk-evs";
    version = "c31d342330ddb6e11cb4ac7b516ac5ea409c1fb8";
    src = fetchFromGitHub {
      owner = "traud";
      repo = "asterisk-evs";
      rev = "c31d342330ddb6e11cb4ac7b516ac5ea409c1fb8";
      fetchSubmodules = false;
      sha256 = "sha256-soayTFbl0FHkH4ZxaeL+ApDsJ2e3CDIIW0KX5rzAAAM=";
    };
    date = "2022-03-24";
  };
  asterisk-g72x = {
    pname = "asterisk-g72x";
    version = "3855cec2ef2667f3e9224006dbaf179575752218";
    src = fetchFromGitHub {
      owner = "arkadijs";
      repo = "asterisk-g72x";
      rev = "3855cec2ef2667f3e9224006dbaf179575752218";
      fetchSubmodules = false;
      sha256 = "sha256-H6j8zCyId+yTaSo7mmwDSmC64bznkvUgAcQbuNLbc8s=";
    };
    date = "2020-10-27";
  };
  asterisk-gsm-efr = {
    pname = "asterisk-gsm-efr";
    version = "e91ef643a7ff341e1fdaa1c6ff63b3cdc52ac8b4";
    src = fetchFromGitHub {
      owner = "traud";
      repo = "asterisk-gsm-efr";
      rev = "e91ef643a7ff341e1fdaa1c6ff63b3cdc52ac8b4";
      fetchSubmodules = false;
      sha256 = "sha256-EzQA+j2QBilNWgoPzcNEkf/3XO6XNl8ygDD6Q65tdFk=";
    };
    date = "2018-08-28";
  };
  attic = {
    pname = "attic";
    version = "fbe252a5c21febbe920c025560cbd63b20e24f3b";
    src = fetchFromGitHub {
      owner = "zhaofengli";
      repo = "attic";
      rev = "fbe252a5c21febbe920c025560cbd63b20e24f3b";
      fetchSubmodules = false;
      sha256 = "sha256-n9PK4O4X4S1JkwpkMuYm1wHZYJzRqif8g3RuVIPD+rY=";
    };
    date = "2024-01-18";
  };
  baidunetdisk = {
    pname = "baidunetdisk";
    version = "4.17.7";
    src = fetchurl {
      url = "http://wppkg.baidupcs.com/issue/netdisk/Linuxguanjia/4.17.7/baidunetdisk_4.17.7_amd64.deb";
      sha256 = "sha256-UOwY8FYmoT9X7wNGMEFtSBaCvBAYU58zOX1ccbxlOz0=";
    };
  };
  baidupcs-go = {
    pname = "baidupcs-go";
    version = "v3.9.5";
    src = fetchFromGitHub {
      owner = "qjfoidnh";
      repo = "BaiduPCS-Go";
      rev = "v3.9.5";
      fetchSubmodules = false;
      sha256 = "sha256-zNodRQzflOOB3hAeq4KbjRFlHQwknVy+4ucipUcoufY=";
    };
  };
  bepasty = {
    pname = "bepasty";
    version = "1.2.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/b/bepasty/bepasty-1.2.0.tar.gz";
      sha256 = "sha256-R3bvrl/tOP0S9m6X+MwYK6fMQ51cI6W5AoxyYZ8aZ/w=";
    };
  };
  bilibili = {
    pname = "bilibili";
    version = "1.13.0-2";
    src = fetchurl {
      url = "https://github.com/msojocs/bilibili-linux/releases/download/v1.13.0-2/io.github.msojocs.bilibili_1.13.0-2_amd64.deb";
      sha256 = "sha256-svTD8YZBFj0K9/3ggojiH+8cMRkCxHr/hHTC24NL2tE=";
    };
  };
  bird-lg-go = {
    pname = "bird-lg-go";
    version = "v1.3.5";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "bird-lg-go";
      rev = "v1.3.5";
      fetchSubmodules = false;
      sha256 = "sha256-lWpTIuN+wCSDBHmpRIfVG8Z1Qx1s55MnJomQPjczB5k=";
    };
  };
  boringssl-oqs = {
    pname = "boringssl-oqs";
    version = "8d99c122d2e5e3152de31a37ccda260b78f55d5c";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "boringssl";
      rev = "8d99c122d2e5e3152de31a37ccda260b78f55d5c";
      fetchSubmodules = false;
      sha256 = "sha256-fXGFS9m8L3w64loZBWqpbSD58/O4crCQ7MA+qzmR1+E=";
    };
    date = "2023-12-04";
  };
  cachyos-kernel-patches = {
    pname = "cachyos-kernel-patches";
    version = "5e1f905aed1c7f66d4cbfe341cfb8c1812cd5ab0";
    src = fetchFromGitHub {
      owner = "CachyOS";
      repo = "kernel-patches";
      rev = "5e1f905aed1c7f66d4cbfe341cfb8c1812cd5ab0";
      fetchSubmodules = false;
      sha256 = "sha256-f3QpzHPnFqbEf4mPlNsqOjmFmVXlr7s1aERZMbunkeQ=";
    };
    date = "2024-01-26";
  };
  calibre-cops = {
    pname = "calibre-cops";
    version = "1.1.3";
    src = fetchurl {
      url = "https://github.com/seblucas/cops/releases/download/1.1.3/cops-1.1.3.zip";
      sha256 = "sha256-aMnvs0CrMJic2JoZoXPEWHLTPthd0CZ0+K8It3SMvHc=";
    };
  };
  cef-binary = {
    pname = "cef-binary";
    version = "fecf00339545d2819224333cc506d5aa22ae8008";
    src = fetchFromGitHub {
      owner = "martyr-deepin";
      repo = "cef-binary";
      rev = "fecf00339545d2819224333cc506d5aa22ae8008";
      fetchSubmodules = false;
      sha256 = "sha256-lsis37fB+cJJbM3I9GCJpYMYdZaXx2YhBu34yA77IRo=";
    };
    date = "2019-02-18";
  };
  chromium-oqs-bin = {
    pname = "chromium-oqs-bin";
    version = "0.7.2";
    src = fetchurl {
      url = "https://github.com/open-quantum-safe/oqs-demos/releases/download/0.7.2/chromium-ubuntu-0.7.2.tgz";
      sha256 = "sha256-Gt2kucYmnMwfnPO15dhasA0Pus8m+70nDQfnfwMUxAE=";
    };
  };
  cloudpan189-go = {
    pname = "cloudpan189-go";
    version = "v0.1.3";
    src = fetchFromGitHub {
      owner = "tickstep";
      repo = "cloudpan189-go";
      rev = "v0.1.3";
      fetchSubmodules = false;
      sha256 = "sha256-CJCTfzcLw5e41RZXhgbJhZVOP4FDDYM74Oo9my/liZk=";
    };
  };
  cockpy = {
    pname = "cockpy";
    version = "00fa2f220fd5e22c14a88b5f6000487b49b071f1";
    src = fetchFromGitHub {
      owner = "Hiro420";
      repo = "CockPY";
      rev = "00fa2f220fd5e22c14a88b5f6000487b49b071f1";
      fetchSubmodules = false;
      sha256 = "sha256-AWjzqOwIRE7ytNowm46h5HhZI9MYT5aWZKwVjx7t00k=";
    };
    date = "2023-04-19";
  };
  cockpy-pyenet = {
    pname = "cockpy-pyenet";
    version = "1726b1d8e22ee1fa53c7560169d8814c7847a447";
    src = fetchFromGitHub {
      owner = "lilmayofuksu";
      repo = "pyenet";
      rev = "1726b1d8e22ee1fa53c7560169d8814c7847a447";
      fetchSubmodules = true;
      sha256 = "sha256-YzFge0S5S6TwCVeCuNgDUmDpwha7Zi8+ZgJ4cdW4AzM=";
    };
    date = "2022-11-20";
  };
  coredns-lantian = {
    pname = "coredns-lantian";
    version = "a411a29f831648afa98aa79b164e790add2d6f14";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "coredns";
      rev = "a411a29f831648afa98aa79b164e790add2d6f14";
      fetchSubmodules = false;
      sha256 = "sha256-LPQWyDzpN1K9tJosDE70QxqP9BDuSVqlTVRYappYUUc=";
    };
    date = "2023-09-02";
  };
  dingtalk = {
    pname = "dingtalk";
    version = "7.0.50.30831";
    src = fetchurl {
      url = "https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_7.0.50.30831_amd64.deb";
      sha256 = "sha256-ZO65cSYyNTMoMJj8LbjBcmpf0+M04SFRlVIIrqUB+TE=";
    };
  };
  douban-openapi-server = {
    pname = "douban-openapi-server";
    version = "c7e2a0f59ba5cfb2d10a31013547686a4afab99d";
    src = fetchFromGitHub {
      owner = "caryyu";
      repo = "douban-openapi-server";
      rev = "c7e2a0f59ba5cfb2d10a31013547686a4afab99d";
      fetchSubmodules = false;
      sha256 = "sha256-Ri56XBkGjLF8+Rv7lYDM83WfZ2rzwF0p5SZzBeC3ToI=";
    };
    date = "2022-12-17";
  };
  drone-file-secret = {
    pname = "drone-file-secret";
    version = "b69ba503becb41c72a1b724f38a26e7f2c34b110";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "drone-file-secret";
      rev = "b69ba503becb41c72a1b724f38a26e7f2c34b110";
      fetchSubmodules = false;
      sha256 = "sha256-aLr286rV6Ch3T1/r8Ru5JmRH1zDU6cfizGYzPW01snU=";
    };
    date = "2023-06-25";
  };
  drone-vault = {
    pname = "drone-vault";
    version = "v1.3.0";
    src = fetchFromGitHub {
      owner = "drone";
      repo = "drone-vault";
      rev = "v1.3.0";
      fetchSubmodules = false;
      sha256 = "sha256-g4D+pnOo41UqPDFF3lvh/yNFVzP8rqglG+4xPx+aEzM=";
    };
  };
  etherguard = {
    pname = "etherguard";
    version = "f622f2a15b91fc54286f3d1f95d59adebab1a4f7";
    src = fetchFromGitHub {
      owner = "KusakabeShi";
      repo = "EtherGuard-VPN";
      rev = "f622f2a15b91fc54286f3d1f95d59adebab1a4f7";
      fetchSubmodules = false;
      sha256 = "sha256-67ocXHf+AN3nyPt4636ZJHGRqWSjkpTiDvU5243urBw=";
    };
    date = "2024-01-12";
  };
  fastapi-dls = {
    pname = "fastapi-dls";
    version = "65de4d0534f0da3528588843347a82649d2df8d1";
    src = fetchgit {
      url = "https://gitea.publichub.eu/oscar.krause/fastapi-dls.git";
      rev = "65de4d0534f0da3528588843347a82649d2df8d1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-IhKy4Ye+AlYwSEqYxHaVURiCCO98UZUHacv+mDjonsA=";
    };
    date = "2023-10-16";
  };
  fcitx5-breeze = {
    pname = "fcitx5-breeze";
    version = "2.0.0";
    src = fetchurl {
      url = "https://github.com/scratch-er/fcitx5-breeze/releases/download/v2.0.0/fcitx5-breeze-prebuilt-2.0.0.tar.gz";
      sha256 = "sha256-Xw5oBsxsCzoqXZ3r6koVuVmRAi8Ys9e2CmKxBhLenHM=";
    };
  };
  flaresolverr = {
    pname = "flaresolverr";
    version = "v3.3.13";
    src = fetchFromGitHub {
      owner = "FlareSolverr";
      repo = "FlareSolverr";
      rev = "v3.3.13";
      fetchSubmodules = false;
      sha256 = "sha256-dIYxR+zks3IAE+ttlQDHbpL4kqQ2FyzPMNwZzafMvLE=";
    };
  };
  flasgger = {
    pname = "flasgger";
    version = "0.9.5";
    src = fetchFromGitHub {
      owner = "flasgger";
      repo = "flasgger";
      rev = "0.9.5";
      fetchSubmodules = false;
      sha256 = "sha256-cYFMKZxpi69gVWqyZUltCL0ZwcfIABNsJKqAhN2TTSg=";
    };
  };
  genshin-checkin-helper = {
    pname = "genshin-checkin-helper";
    version = "b9e36543bfe5b042e015463e5d0398cd234cba90";
    src = fetchgit {
      url = "https://gitlab.com/y1ndan/genshin-checkin-helper.git";
      rev = "b9e36543bfe5b042e015463e5d0398cd234cba90";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-sweiJeZx+/uShHxT0gXiVxADeHSyeTtK1G6jgMcMpZE=";
    };
    date = "2021-11-09";
  };
  genshinhelper2 = {
    pname = "genshinhelper2";
    version = "1382b89d0ee1f5dfcbe1425398fb4cfc260ddcdd";
    src = fetchFromGitHub {
      owner = "y1ndan";
      repo = "genshinhelper2";
      rev = "1382b89d0ee1f5dfcbe1425398fb4cfc260ddcdd";
      fetchSubmodules = false;
      sha256 = "sha256-jkg3ndR9t/v5TFsda6e94Duce5BexbUFvW8ZevJO35A=";
    };
    date = "2023-05-22";
  };
  glauth = {
    pname = "glauth";
    version = "v2.3.0";
    src = fetchFromGitHub {
      owner = "glauth";
      repo = "glauth";
      rev = "v2.3.0";
      fetchSubmodules = false;
      sha256 = "sha256-XYNNR3bVLNtAl+vbGRv0VhbLf+em8Ay983jqcW7KDFU=";
    };
  };
  google-earth-pro = {
    pname = "google-earth-pro";
    version = "7.3.6.9750";
    src = fetchurl {
      url = "https://dl.google.com/linux/earth/deb/pool/main/g/google-earth-pro-stable/google-earth-pro-stable_7.3.6.9750-r0_amd64.deb";
      sha256 = "sha256-gagYVWFmVj+FinNxtljqVDHNKDaHpcZ6dm3K2jHZtwU=";
    };
  };
  grasscutter = {
    pname = "grasscutter";
    version = "1.7.4";
    src = fetchurl {
      url = "https://github.com/Grasscutters/Grasscutter/releases/download/v1.7.4/grasscutter-1.7.4.jar";
      sha256 = "sha256-tIYnCxtB14M+cGSuIZSZHworIzFEXKowyAgwmJ1jZpU=";
    };
  };
  grasscutter-resources = {
    pname = "grasscutter-resources";
    version = "b09934e7b9a6e5ce063e5565d33f20d72614e030";
    src = fetchgit {
      url = "https://gitlab.com/YuukiPS/GC-Resources.git";
      rev = "b09934e7b9a6e5ce063e5565d33f20d72614e030";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-7D5EJYxo4124asGJCYe6gL7pKMkEVr0CuahzKDXchB8=";
    };
    date = "2023-11-23";
  };
  hoyo-glyphs = {
    pname = "hoyo-glyphs";
    version = "9914343c51384e45496522074c6cc6b15394543c";
    src = fetchFromGitHub {
      owner = "SpeedyOrc-C";
      repo = "Hoyo-Glyphs";
      rev = "9914343c51384e45496522074c6cc6b15394543c";
      fetchSubmodules = false;
      sha256 = "sha256-c4AyuP2eDeJ1rG61BBCIlnDdPe2+DPhLnxIQJW7VVJ4=";
    };
    date = "2023-10-06";
  };
  hoyo-glyphs-star-rail-neue = {
    pname = "hoyo-glyphs-star-rail-neue";
    version = "1.100";
    src = fetchurl {
      url = "https://github.com/SpeedyOrc-C/HoYo-Glyphs/releases/download/star-rail-neue-1.100/Star-Rail-Neue-1.100.zip";
      sha256 = "sha256-pOTen4C/z8Z3YS3YBgZK63Cf3YI/M+a6a3P7XuvLhGo=";
    };
  };
  hoyo-glyphs-teyvat-black = {
    pname = "hoyo-glyphs-teyvat-black";
    version = "1.003";
    src = fetchurl {
      url = "https://github.com/SpeedyOrc-C/HoYo-Glyphs/releases/download/teyvat-black-1.003/Teyvat-Black-1.003.zip";
      sha256 = "sha256-AzaZEyxnmi18T2vQSsR+PZ1yGt5pqyvGKioMn2BStqk=";
    };
  };
  hoyo-glyphs-xianzhou-seal = {
    pname = "hoyo-glyphs-xianzhou-seal";
    version = "1.000";
    src = fetchurl {
      url = "https://github.com/SpeedyOrc-C/HoYo-Glyphs/releases/download/xianzhou-seal-1.000/Xianzhou-Seal-1.000.zip";
      sha256 = "sha256-1cXp5ZH6oY6LPdeN7EpiMJzO4SiXmeJTnLLrBPJD4g4=";
    };
  };
  kata-containers = {
    pname = "kata-containers";
    version = "3.2.0";
    src = fetchFromGitHub {
      owner = "kata-containers";
      repo = "kata-containers";
      rev = "3.2.0";
      fetchSubmodules = false;
      sha256 = "sha256-zEKuEjw8a5hRNULNSkozjuHT6+hcbuTIbVPPImy/TsQ=";
    };
  };
  kata-image = {
    pname = "kata-image";
    version = "3.2.0";
    src = fetchurl {
      url = "https://github.com/kata-containers/kata-containers/releases/download/3.2.0/kata-static-3.2.0-amd64.tar.xz";
      sha256 = "sha256-IbuEhKBgRQ1lIvKb7X2I13PChSB3TqosUitvR/0SxKE=";
    };
  };
  konnect = {
    pname = "konnect";
    version = "v0.34.0";
    src = fetchFromGitHub {
      owner = "Kopano-dev";
      repo = "konnect";
      rev = "v0.34.0";
      fetchSubmodules = false;
      sha256 = "sha256-y7SD+czD/jK/m0LbFq7qGjwJgBIXfTNrdsA3pzgD2xE=";
    };
  };
  ldap-auth-proxy = {
    pname = "ldap-auth-proxy";
    version = "66a8236af574f554478fe376051b95f61235efc9";
    src = fetchFromGitHub {
      owner = "pinepain";
      repo = "ldap-auth-proxy";
      rev = "66a8236af574f554478fe376051b95f61235efc9";
      fetchSubmodules = false;
      sha256 = "sha256-kV3P3hRmfFH5g+BzjxZGstVHoQ4KMn9DVup5cInin+Y=";
    };
    date = "2020-07-29";
  };
  libltnginx = {
    pname = "libltnginx";
    version = "96698a667740ac45ca4571a04a6cfe39caf926c0";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "libltnginx";
      rev = "96698a667740ac45ca4571a04a6cfe39caf926c0";
      fetchSubmodules = false;
      sha256 = "sha256-A3+CpN0kKmxEw8N0ZQX284qjsSsiy1/RjJp5VvAKP5U=";
    };
    date = "2021-10-02";
  };
  liboqs = {
    pname = "liboqs";
    version = "2f4a25c8de89b2bb98607f24b2f401856482737e";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "liboqs";
      rev = "2f4a25c8de89b2bb98607f24b2f401856482737e";
      fetchSubmodules = false;
      sha256 = "sha256-eYq6EjYoSofW6kxQx58rHkCYB0h4g5Qn+Ydrik13jVs=";
    };
    date = "2024-01-23";
  };
  libqcef = {
    pname = "libqcef";
    version = "ff3448cb3f86f42946d4c9eb01ccaa994f174fe0";
    src = fetchFromGitHub {
      owner = "martyr-deepin";
      repo = "qcef";
      rev = "ff3448cb3f86f42946d4c9eb01ccaa994f174fe0";
      fetchSubmodules = false;
      sha256 = "sha256-0/Frqx7s9GEYbhLMsIPE64g6Yg4MIACvH5IPGJwaQ5E=";
    };
    date = "2019-11-23";
  };
  librime-charcode = {
    pname = "librime-charcode";
    version = "3e73214fdf5d162517a74762433f486b70a5c0e1";
    src = fetchFromGitHub {
      owner = "rime";
      repo = "librime-charcode";
      rev = "3e73214fdf5d162517a74762433f486b70a5c0e1";
      fetchSubmodules = false;
      sha256 = "sha256-wfaz4ReCV2w+zRaPbJuZ1lgXQI9Pa1Xz9NuQe+UqcB0=";
    };
    date = "2023-09-03";
  };
  librime-lua = {
    pname = "librime-lua";
    version = "9c611a15277b9978960df780a8f5ca3dee630354";
    src = fetchFromGitHub {
      owner = "hchunhui";
      repo = "librime-lua";
      rev = "9c611a15277b9978960df780a8f5ca3dee630354";
      fetchSubmodules = false;
      sha256 = "sha256-GWuZrHnOE6WGsl15UhQ5U0MPEX2UoArdZvKyvZwyoas=";
    };
    date = "2024-01-20";
  };
  librime-octagram = {
    pname = "librime-octagram";
    version = "a6ced5a1d623afed17284fbaa395dd3a8b019a14";
    src = fetchFromGitHub {
      owner = "lotem";
      repo = "librime-octagram";
      rev = "a6ced5a1d623afed17284fbaa395dd3a8b019a14";
      fetchSubmodules = false;
      sha256 = "sha256-6HVRrEM0XG3F5hCOvP+lHwUbYA38KmEMiDa2JtofFHI=";
    };
    date = "2023-01-25";
  };
  librime-proto = {
    pname = "librime-proto";
    version = "657a923cd4c333e681dc943e6894e6f6d42d25b4";
    src = fetchFromGitHub {
      owner = "lotem";
      repo = "librime-proto";
      rev = "657a923cd4c333e681dc943e6894e6f6d42d25b4";
      fetchSubmodules = false;
      sha256 = "sha256-HdypebfmzreSdEQBwbvRG6sJZPASP+e8Tew+GrMnpOQ=";
    };
    date = "2023-10-17";
  };
  linux-xanmod = {
    pname = "linux-xanmod";
    version = "6.7.2-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.7.2-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-nY7C3Qt5slxafvyVGtTf0celPF+W9MepL6MjsnPzTXg=";
    };
  };
  linux-xanmod-6_0 = {
    pname = "linux-xanmod-6_0";
    version = "6.0.12-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.0.12-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-k3fePBhb2zJfvPupdgenkdqG4sHNu2iv6T01EvOgbCg=";
    };
  };
  linux-xanmod-6_1 = {
    pname = "linux-xanmod-6_1";
    version = "6.1.75-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.1.75-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-SXaC2O5kBfH8qiQW4j9c8GhONTziXVLqDCJzDj5SKcI=";
    };
  };
  linux-xanmod-6_6 = {
    pname = "linux-xanmod-6_6";
    version = "6.6.14-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.6.14-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-WvzesXHAbOJMow4mE9Ty6JWMYef+Bq3MENLGalsThDU=";
    };
  };
  nbfc-linux-lantian = {
    pname = "nbfc-linux-lantian";
    version = "32a49117ca3ff17d7681713a8dc8812323142dcb";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "nbfc-linux";
      rev = "32a49117ca3ff17d7681713a8dc8812323142dcb";
      fetchSubmodules = false;
      sha256 = "sha256-jKuCBKUm32ulgH0+/be2s+CgeBqTww+4K3RETFFCCOc=";
    };
    date = "2022-06-13";
  };
  netboot-xyz-efi = {
    pname = "netboot-xyz-efi";
    version = "2.0.76";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.76/netboot.xyz.efi";
      sha256 = "sha256-21ZEydRcEpD5Qq4NawvXdM+i76jSUj3QRfOtJX2n1Jg=";
    };
  };
  netboot-xyz-lkrn = {
    pname = "netboot-xyz-lkrn";
    version = "2.0.76";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.76/netboot.xyz.lkrn";
      sha256 = "sha256-/2N9IvBYafAcDxBDTXubEAG/KN84kG2PgdexiPi7VBY=";
    };
  };
  netns-exec = {
    pname = "netns-exec";
    version = "aa346fd058d47b238ae1b86250f414bcab2e7927";
    src = fetchFromGitHub {
      owner = "pekman";
      repo = "netns-exec";
      rev = "aa346fd058d47b238ae1b86250f414bcab2e7927";
      fetchSubmodules = true;
      sha256 = "sha256-CnIgzRb58KIvdx7T9LpervSB2Ol6JMxmSM/Ti3K1+Dg=";
    };
    date = "2016-07-30";
  };
  nginx-module-stream-sts = {
    pname = "nginx-module-stream-sts";
    version = "a60cd2fc2bdd689b8b4e12abcf71f7cf5018424a";
    src = fetchFromGitHub {
      owner = "vozlt";
      repo = "nginx-module-stream-sts";
      rev = "a60cd2fc2bdd689b8b4e12abcf71f7cf5018424a";
      fetchSubmodules = false;
      sha256 = "sha256-MsQD2wrmnwMycgC5nUhAiwoxNvwmeDUyivQS/2EMJ4o=";
    };
    date = "2022-09-16";
  };
  nginx-module-sts = {
    pname = "nginx-module-sts";
    version = "3c10d42f8c3f78b6310906eab5c8e066ee753330";
    src = fetchFromGitHub {
      owner = "vozlt";
      repo = "nginx-module-sts";
      rev = "3c10d42f8c3f78b6310906eab5c8e066ee753330";
      fetchSubmodules = false;
      sha256 = "sha256-rAWQDBLW2gQjShC6G+w9tfeML4pFCBTHplcgiW9+Tsc=";
    };
    date = "2022-09-26";
  };
  nginx-module-vts = {
    pname = "nginx-module-vts";
    version = "724b34d7f1eff083860e3ac613a2c1d66a238dfd";
    src = fetchFromGitHub {
      owner = "vozlt";
      repo = "nginx-module-vts";
      rev = "724b34d7f1eff083860e3ac613a2c1d66a238dfd";
      fetchSubmodules = false;
      sha256 = "sha256-bnNHL7uOxrfQrqTtH/6S0u/KxG81tAAAFgaOfhN9m8M=";
    };
    date = "2024-01-20";
  };
  nginx-njs = {
    pname = "nginx-njs";
    version = "0.8.2";
    src = fetchFromGitHub {
      owner = "nginx";
      repo = "njs";
      rev = "0.8.2";
      fetchSubmodules = false;
      sha256 = "sha256-H50Gs5EtDzu1AwP2PWvZBD8JBMELRQihENEh9yr9Ykg=";
    };
  };
  ngx_brotli = {
    pname = "ngx_brotli";
    version = "3de5fda259f12a7fdefd040173c77114644cc11f";
    src = fetchFromGitHub {
      owner = "u5surf";
      repo = "ngx_brotli";
      rev = "3de5fda259f12a7fdefd040173c77114644cc11f";
      fetchSubmodules = false;
      sha256 = "sha256-5XSEqXyaIKoUzs1OC6WGPwqpx8JWaE0aMlfjvOoYs3U=";
    };
    date = "2023-10-04";
  };
  noise-suppression-for-voice = {
    pname = "noise-suppression-for-voice";
    version = "v1.03";
    src = fetchFromGitHub {
      owner = "werman";
      repo = "noise-suppression-for-voice";
      rev = "v1.03";
      fetchSubmodules = false;
      sha256 = "sha256-1DgrpGYF7G5Zr9vbgtKm/Yv0HSdI7LrFYPSGKYNnNDQ=";
    };
  };
  nullfs = {
    pname = "nullfs";
    version = "0884f87ec01faaee219f59742c14ed3c3945f5c0";
    src = fetchFromGitHub {
      owner = "xrgtn";
      repo = "nullfs";
      rev = "0884f87ec01faaee219f59742c14ed3c3945f5c0";
      fetchSubmodules = false;
      sha256 = "sha256-cokSWBZIeCfdxd+o59BssQetffFSdHrVipQuRLbqNdU=";
    };
    date = "2016-01-28";
  };
  oci-arm-host-capacity = {
    pname = "oci-arm-host-capacity";
    version = "369de7b2851f1b22db34f95ba02001d5c9f839c7";
    src = fetchFromGitHub {
      owner = "hitrov";
      repo = "oci-arm-host-capacity";
      rev = "369de7b2851f1b22db34f95ba02001d5c9f839c7";
      fetchSubmodules = false;
      sha256 = "sha256-2p0jpl2SlyEvZ+xvZMhZz9Mk+dHEfmxgd1Ht5o9cSFo=";
    };
    date = "2023-12-23";
  };
  onepush = {
    pname = "onepush";
    version = "8b09e62330ad74ba3221bfc2b080d1732a1dcc55";
    src = fetchFromGitHub {
      owner = "y1ndan";
      repo = "onepush";
      rev = "8b09e62330ad74ba3221bfc2b080d1732a1dcc55";
      fetchSubmodules = false;
      sha256 = "sha256-xBhHe2q5oxXUuo7G50TBUC1o07dZSjQ8M8YkPRJELkk=";
    };
    date = "2023-11-28";
  };
  openresty = {
    pname = "openresty";
    version = "1.25.3.1";
    src = fetchurl {
      url = "https://github.com/openresty/openresty/releases/download/v1.25.3.1/openresty-1.25.3.1.tar.gz";
      sha256 = "sha256-MuwaJTpaEyUDVaB1/mW31j7EXFYLviEzUPCZKlfNed8=";
    };
  };
  openssl-oqs = {
    pname = "openssl-oqs";
    version = "98ce60974b53ac99b975cf2418aabab7519f1dff";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "openssl";
      rev = "98ce60974b53ac99b975cf2418aabab7519f1dff";
      fetchSubmodules = false;
      sha256 = "sha256-pGXKS5GR/k+x3S7li0xsZIw4dJwyD4i0RY70ueWsgZo=";
    };
    date = "2023-07-19";
  };
  openssl-oqs-provider = {
    pname = "openssl-oqs-provider";
    version = "7b21bd3bf35ba5fec53d5e5ab20f071b8afcd8b8";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "oqs-provider";
      rev = "7b21bd3bf35ba5fec53d5e5ab20f071b8afcd8b8";
      fetchSubmodules = false;
      sha256 = "sha256-LXNBiKyCT2z9+UyHjr8cGOb/oYJOB2PlRXEsz2ZDnnY=";
    };
    date = "2024-01-23";
  };
  osdlyrics = {
    pname = "osdlyrics";
    version = "0.5.15";
    src = fetchFromGitHub {
      owner = "osdlyrics";
      repo = "osdlyrics";
      rev = "0.5.15";
      fetchSubmodules = false;
      sha256 = "sha256-4jEF1LdMwaLNF6zvzAuGW8Iu4dzhrFLutX69LwSjTAI=";
    };
  };
  payload-dumper-go = {
    pname = "payload-dumper-go";
    version = "1.2.2";
    src = fetchFromGitHub {
      owner = "ssut";
      repo = "payload-dumper-go";
      rev = "1.2.2";
      fetchSubmodules = false;
      sha256 = "sha256-P20/Nd2YOW9A9/OkpavVRBAi/ueYp812zZvVLnwX67Y=";
    };
  };
  phpmyadmin = {
    pname = "phpmyadmin";
    version = "5.2.1";
    src = fetchurl {
      url = "https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.tar.xz";
      sha256 = "sha256-Nz+Vmd+9ltb+dTFtXa0YnmjDBfKX7fQjd9ud1rQbJVc=";
    };
  };
  phppgadmin = {
    pname = "phppgadmin";
    version = "v7.14.7-mod";
    src = fetchFromGitHub {
      owner = "ReimuHakurei";
      repo = "phppgadmin";
      rev = "v7.14.7-mod";
      fetchSubmodules = false;
      sha256 = "sha256-cp3O520KFO3FEpcBqDfv4B48pz0hEGeFgVAAdyICTHg=";
    };
  };
  plangothic-fonts = {
    pname = "plangothic-fonts";
    version = "V1.8.5752";
    src = fetchFromGitHub {
      owner = "Fitzgerald-Porthmouth-Koenigsegg";
      repo = "Plangothic";
      rev = "V1.8.5752";
      fetchSubmodules = false;
      sha256 = "sha256-6Aq8q3jG9Pvn9UZnXdFheReYDtEgIRy7m62nQT2yjuM=";
    };
  };
  pterodactyl-wings = {
    pname = "pterodactyl-wings";
    version = "v1.11.8";
    src = fetchFromGitHub {
      owner = "pterodactyl";
      repo = "wings";
      rev = "v1.11.8";
      fetchSubmodules = false;
      sha256 = "sha256-JzbxROashDAL4NSeqMcWR9PgFqe9peBNpeofA347oE4=";
    };
  };
  qbittorrent-enhanced-edition = {
    pname = "qbittorrent-enhanced-edition";
    version = "release-4.6.3.10";
    src = fetchFromGitHub {
      owner = "c0re100";
      repo = "qBittorrent-Enhanced-Edition";
      rev = "release-4.6.3.10";
      fetchSubmodules = false;
      sha256 = "sha256-O25sJmpyOwhtjrCbN4srKjcNDxEPHwX08MY+AM8QaCU=";
    };
  };
  qemu-user-static-amd64 = {
    pname = "qemu-user-static-amd64";
    version = "8.2.0+ds-5";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_8.2.0+ds-5_amd64.deb";
      sha256 = "sha256-TF3GyG1N2+84l+qTfXQJiSzby+qODGhWct7VmbpjRlE=";
    };
  };
  qemu-user-static-arm64 = {
    pname = "qemu-user-static-arm64";
    version = "8.2.0+ds-5";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_8.2.0+ds-5_arm64.deb";
      sha256 = "sha256-72Zwteze2L4s/a5SQnMS4xHr46hW5eB6xPHqRv+B7HI=";
    };
  };
  qemu-user-static-armhf = {
    pname = "qemu-user-static-armhf";
    version = "8.2.0+ds-5";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_8.2.0+ds-5_armhf.deb";
      sha256 = "sha256-yKJ9YN9JbL96vYwGHd3sRJfCUP7MkfGHk0qNlbXl3Pw=";
    };
  };
  qemu-user-static-i386 = {
    pname = "qemu-user-static-i386";
    version = "8.2.0+ds-5";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_8.2.0+ds-5_i386.deb";
      sha256 = "sha256-Rt62UU9oQcAH0oCU11Z6To2uqR5CjUWIedu7qmNAEE0=";
    };
  };
  qq-amd64 = {
    pname = "qq-amd64";
    version = "feb78c41/linuxqq_3.2.5-21159";
    src = fetchurl {
      url = "https://dldir1.qq.com/qqfile/qq/QQNT/feb78c41/linuxqq_3.2.5-21159_amd64.deb";
      sha256 = "sha256-pX99V18gjlMM6+jC9U7E5YvHDODGsrj0twt9K4rJN4Y=";
    };
  };
  qq-arm64 = {
    pname = "qq-arm64";
    version = "feb78c41/linuxqq_3.2.5-21159";
    src = fetchurl {
      url = "https://dldir1.qq.com/qqfile/qq/QQNT/feb78c41/linuxqq_3.2.5-21159_arm64.deb";
      sha256 = "sha256-3zbhFKQrO1tMSnWJllLJLaVeVpLs44WBbuuyU1LTMIU=";
    };
  };
  qqmusic = {
    pname = "qqmusic";
    version = "1.1.5";
    src = fetchurl {
      url = "https://dldir1.qq.com/music/clntupate/linux/deb/qqmusic_1.1.5_amd64.deb";
      sha256 = "sha256-wTtO80S8o4/EeVCvBzaN4xtI3+mShTjNHpq41exfP+g=";
    };
  };
  qsc-key-encoder = {
    pname = "qsc-key-encoder";
    version = "1b6289dac9f7caf89d26bad2f1cf3cd628507af2";
    src = fetchFromGitHub {
      owner = "Quantum-Safe-Collaboration";
      repo = "qsc-key-encoder";
      rev = "1b6289dac9f7caf89d26bad2f1cf3cd628507af2";
      fetchSubmodules = false;
      sha256 = "sha256-fslq2BlNtnUve7enWXzWGc8xUh8clmHs+QjPozjinHM=";
    };
    date = "2023-03-30";
  };
  rime-aurora-pinyin = {
    pname = "rime-aurora-pinyin";
    version = "122b46976401995cbafcfc748806985ff3a437a4";
    src = fetchFromGitHub {
      owner = "hosxy";
      repo = "rime-aurora-pinyin";
      rev = "122b46976401995cbafcfc748806985ff3a437a4";
      fetchSubmodules = false;
      sha256 = "sha256-zLzQXSsKwgr7OsyYllyoLNSF9q4mJA5ZYD7v7oagfaE=";
    };
    date = "2022-08-28";
  };
  rime-dict = {
    pname = "rime-dict";
    version = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
    src = fetchFromGitHub {
      owner = "Iorest";
      repo = "rime-dict";
      rev = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
      fetchSubmodules = false;
      sha256 = "sha256-LmY2EQ1VjfX9UJ8ubwoHgxDdJUicSuE0uqxKRnniJ+k=";
    };
    date = "2020-12-26";
  };
  rime-ice = {
    pname = "rime-ice";
    version = "daa80b55c90303024a9adb516d56f59c3c113a4c";
    src = fetchFromGitHub {
      owner = "iDvel";
      repo = "rime-ice";
      rev = "daa80b55c90303024a9adb516d56f59c3c113a4c";
      fetchSubmodules = false;
      sha256 = "sha256-+jHxxVXmlCSD7SyUB0wc02rZshWC/HCZgY7xE3sKp8c=";
    };
    date = "2024-01-26";
  };
  rime-moegirl = {
    pname = "rime-moegirl";
    version = "20231114";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20231114/moegirl.dict.yaml";
      sha256 = "sha256-yEC1E11n9SkyPhW/JVpWuS5xpi8cLrBcQjdeBmzJXJ0=";
    };
  };
  rime-zhwiki = {
    pname = "rime-zhwiki";
    version = "20231205";
    src = fetchurl {
      url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.4/zhwiki-20231205.dict.yaml";
      sha256 = "sha256-n6fuwekBdjyRdSnlzq7vN/gpX20LAoctKsrJa+eh1u0=";
    };
  };
  route-chain = {
    pname = "route-chain";
    version = "8922b56c70f92f29a9bbd72a4e8a13fd8b8c4197";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "route-chain";
      rev = "8922b56c70f92f29a9bbd72a4e8a13fd8b8c4197";
      fetchSubmodules = false;
      sha256 = "sha256-nliVHuZ8MmirgQQAaaWl92nbx6zQhX+pXXimM+II0JY=";
    };
    date = "2023-09-09";
  };
  sam-toki-mouse-cursors = {
    pname = "sam-toki-mouse-cursors";
    version = "v6.04";
    src = fetchFromGitHub {
      owner = "SamToki";
      repo = "IconDesign---Sam-Toki-Mouse-Cursors";
      rev = "v6.04";
      fetchSubmodules = false;
      sha256 = "sha256-lzczvGekm6nprZlwSzsv15jN5weuok2s2c/G1hcCk7A=";
    };
  };
  sgx-software-enable = {
    pname = "sgx-software-enable";
    version = "7977d6dd373f3a14a615ee9be6f24ecd37c0b43d";
    src = fetchFromGitHub {
      owner = "intel";
      repo = "sgx-software-enable";
      rev = "7977d6dd373f3a14a615ee9be6f24ecd37c0b43d";
      fetchSubmodules = false;
      sha256 = "sha256-xBmFCrnNQq0xKwv7irJFN8YRfBCLmSxtak5dtHFv/xk=";
    };
    date = "2023-01-06";
  };
  smartrent_py = {
    pname = "smartrent_py";
    version = "0.4.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/s/smartrent.py/smartrent.py-0.4.0.tar.gz";
      sha256 = "sha256-02RMZhytJrRYHGv1ugRY2MMHpk10TcoDgvRkEGIuabo=";
    };
  };
  soggy = {
    pname = "soggy";
    version = "2736cb094a51d186dabf2204a7599e9b8118f8dd";
    src = fetchFromGitHub {
      owner = "LDAsuku";
      repo = "soggy";
      rev = "2736cb094a51d186dabf2204a7599e9b8118f8dd";
      fetchSubmodules = false;
      sha256 = "sha256-pv/5CxmojkfOwE/r1T2Ow96XkFw/FQvLcY49bWWiEwo=";
    };
    date = "2022-12-14";
  };
  stream-echo-nginx-module = {
    pname = "stream-echo-nginx-module";
    version = "b7b76b853131b6fa7579d20c2816b4b6abb16bea";
    src = fetchFromGitHub {
      owner = "openresty";
      repo = "stream-echo-nginx-module";
      rev = "b7b76b853131b6fa7579d20c2816b4b6abb16bea";
      fetchSubmodules = false;
      sha256 = "sha256-Q7Zv/e296zPcmB+lshBsEXEhtt7TAfRjGgy09uBGxHA=";
    };
    date = "2016-12-18";
  };
  transmission-web-control = {
    pname = "transmission-web-control";
    version = "5aeb20c141f6c1ca30c0aaae6b861471a48210d8";
    src = fetchFromGitHub {
      owner = "ronggang";
      repo = "transmission-web-control";
      rev = "5aeb20c141f6c1ca30c0aaae6b861471a48210d8";
      fetchSubmodules = false;
      sha256 = "sha256-LbhAxInDEcf5Y9KPBbBVlqNC4qbVV9/KMK1PxcdFezY=";
    };
    date = "2023-05-21";
  };
  undetected-chromedriver = {
    pname = "undetected-chromedriver";
    version = "783b8393157b578e19e85b04d300fe06efeef653";
    src = fetchFromGitHub {
      owner = "ultrafunkamsterdam";
      repo = "undetected-chromedriver";
      rev = "783b8393157b578e19e85b04d300fe06efeef653";
      fetchSubmodules = false;
      sha256 = "sha256-vQ66TAImX0GZCSIaphEfE9O/wMNflGuGB54+29FiUJE=";
    };
    date = "2023-11-15";
  };
  vs-rife = {
    pname = "vs-rife";
    version = "v4.2.0";
    src = fetchFromGitHub {
      owner = "HolyWu";
      repo = "vs-rife";
      rev = "v4.2.0";
      fetchSubmodules = false;
      sha256 = "sha256-6mmH3HK9HgnbAHUHQyIhpRzA5rrznqM0WmAovD6VrQg=";
    };
  };
  wechat-uos = {
    pname = "wechat-uos";
    version = "2.1.5";
    src = fetchurl {
      url = "https://home-store-packages.uniontech.com/appstore/pool/appstore/c/com.tencent.weixin/com.tencent.weixin_2.1.5_amd64.deb";
      sha256 = "sha256-vVN7w+oPXNTMJ/g1Rpw/AVLIytMXI+gLieNuddyyIYE=";
    };
  };
  win2xcur = {
    pname = "win2xcur";
    version = "v0.1.2";
    src = fetchFromGitHub {
      owner = "quantum5";
      repo = "win2xcur";
      rev = "v0.1.2";
      fetchSubmodules = false;
      sha256 = "sha256-OjLj+QYg8YOJzDq3Y6/uyEXlNWbPm8VA/b1yP9jT6Jo=";
    };
  };
  wine-wechat-x64 = {
    pname = "wine-wechat-x64";
    version = "3.9.9.35";
    src = fetchurl {
      url = "https://github.com/tom-snow/wechat-windows-versions/releases/download/v3.9.9.35/WeChatSetup-3.9.9.35.exe";
      sha256 = "sha256-ABrtzLWeyekGfQcDugup+OFFQVndeqT6n4LA+bmldCg=";
    };
  };
  wine-wechat-x86 = {
    pname = "wine-wechat-x86";
    version = "3.9.9.34";
    src = fetchurl {
      url = "https://github.com/tom-snow/wechat-windows-versions-x86/releases/download/v3.9.9.34/WeChatSetupX86-3.9.9.34.exe";
      sha256 = "sha256-U/SdPuuwCxd/STRngiDHmib+vjrqiN2LoCykDG/459w=";
    };
  };
  xstatic-asciinema-player = {
    pname = "xstatic-asciinema-player";
    version = "2.6.1.1";
    src = fetchurl {
      url = "https://pypi.org/packages/source/X/XStatic-asciinema-player/XStatic-asciinema-player-2.6.1.1.tar.gz";
      sha256 = "sha256-yA6WC067St82Dm6StaCKdWrRBhmNemswetIO8iodfcw=";
    };
  };
  xstatic-font-awesome = {
    pname = "xstatic-font-awesome";
    version = "4.7.0.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/X/XStatic-Font-Awesome/XStatic-Font-Awesome-4.7.0.0.tar.gz";
      sha256 = "sha256-4B+0gMqqfHlj3LMyikcA5jG+9gcNsOi2hYFtIg5oX2w=";
    };
  };
  zstd-nginx-module = {
    pname = "zstd-nginx-module";
    version = "6be764e2bed04f889af824eff2d4dd737ebdab5a";
    src = fetchFromGitHub {
      owner = "tokers";
      repo = "zstd-nginx-module";
      rev = "6be764e2bed04f889af824eff2d4dd737ebdab5a";
      fetchSubmodules = false;
      sha256 = "sha256-1gCV7uUsuYnZfb9e8VfjWkUloVINOUH5qzeJ03kIHgs=";
    };
    date = "2023-10-23";
  };
}
