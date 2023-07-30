# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@discoveryjs/json-ext-0.5.7" = {
      name = "_at_discoveryjs_slash_json-ext";
      packageName = "@discoveryjs/json-ext";
      version = "0.5.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/@discoveryjs/json-ext/-/json-ext-0.5.7.tgz";
        sha512 = "dBVuXR082gk3jsFp7Rd/JI4kytwGHecnCoTtXFb7DB6CNHp4rg5k1bhg0nWdLGLnOV71lmDzGQaLMy8iPLY0pw==";
      };
    };
    "@webpack-cli/configtest-2.1.1" = {
      name = "_at_webpack-cli_slash_configtest";
      packageName = "@webpack-cli/configtest";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@webpack-cli/configtest/-/configtest-2.1.1.tgz";
        sha512 = "wy0mglZpDSiSS0XHrVR+BAdId2+yxPSoJW8fsna3ZpYSlufjvxnP4YbKTCBZnNIcGN4r6ZPXV55X4mYExOfLmw==";
      };
    };
    "@webpack-cli/info-2.0.2" = {
      name = "_at_webpack-cli_slash_info";
      packageName = "@webpack-cli/info";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@webpack-cli/info/-/info-2.0.2.tgz";
        sha512 = "zLHQdI/Qs1UyT5UBdWNqsARasIA+AaF8t+4u2aS2nEpBQh2mWIVb8qAklq0eUENnC5mOItrIB4LiS9xMtph18A==";
      };
    };
    "@webpack-cli/serve-2.0.5" = {
      name = "_at_webpack-cli_slash_serve";
      packageName = "@webpack-cli/serve";
      version = "2.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/@webpack-cli/serve/-/serve-2.0.5.tgz";
        sha512 = "lqaoKnRYBdo1UgDX8uF24AfGMifWK19TxPmM5FHc2vAGxrJ/qtyUyFBWoY1tISZdelsQ5fBcOusifo5o5wSJxQ==";
      };
    };
    "clone-deep-4.0.1" = {
      name = "clone-deep";
      packageName = "clone-deep";
      version = "4.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/clone-deep/-/clone-deep-4.0.1.tgz";
        sha512 = "neHB9xuzh/wk0dIHweyAXv2aPGZIVk3pLMe+/RNzINf17fe0OG96QroktYAUm7SM1PBnzTabaLboqqxDyMU+SQ==";
      };
    };
    "colorette-2.0.20" = {
      name = "colorette";
      packageName = "colorette";
      version = "2.0.20";
      src = fetchurl {
        url = "https://registry.npmjs.org/colorette/-/colorette-2.0.20.tgz";
        sha512 = "IfEDxwoWIjkeXL1eXcDiow4UbKjhLdq6/EuSVR9GMN7KVH3r9gQ83e73hsz1Nd1T3ijd5xv1wcWRYO+D6kCI2w==";
      };
    };
    "commander-10.0.1" = {
      name = "commander";
      packageName = "commander";
      version = "10.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-10.0.1.tgz";
        sha512 = "y4Mg2tXshplEbSGzx7amzPwKKOCGuoSRP/CjEdwwk0FOGlUbq6lKuoyDZTNZkmxHdJtp54hdfY/JUrdL7Xfdug==";
      };
    };
    "cross-spawn-7.0.3" = {
      name = "cross-spawn";
      packageName = "cross-spawn";
      version = "7.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-7.0.3.tgz";
        sha512 = "iRDPJKUPVEND7dHPO8rkbOnPpyDygcDFtWjpeWNCgy8WP2rXcxXL8TskReQl6OrB2G7+UJrags1q15Fudc7G6w==";
      };
    };
    "envinfo-7.10.0" = {
      name = "envinfo";
      packageName = "envinfo";
      version = "7.10.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/envinfo/-/envinfo-7.10.0.tgz";
        sha512 = "ZtUjZO6l5mwTHvc1L9+1q5p/R3wTopcfqMW8r5t8SJSKqeVI/LtajORwRFEKpEFuekjD0VBjwu1HMxL4UalIRw==";
      };
    };
    "fastest-levenshtein-1.0.16" = {
      name = "fastest-levenshtein";
      packageName = "fastest-levenshtein";
      version = "1.0.16";
      src = fetchurl {
        url = "https://registry.npmjs.org/fastest-levenshtein/-/fastest-levenshtein-1.0.16.tgz";
        sha512 = "eRnCtTTtGZFpQCwhJiUOuxPQWRXVKYDn0b2PeHfXL6/Zi53SLAzAHfVhVWK2AryC/WH05kGfxhFIPvTF0SXQzg==";
      };
    };
    "find-up-4.1.0" = {
      name = "find-up";
      packageName = "find-up";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/find-up/-/find-up-4.1.0.tgz";
        sha512 = "PpOwAdQ/YlXQ2vj8a3h8IipDuYRi3wceVQQGYWxNINccq40Anw7BlsEXCMbt1Zt+OLA6Fq9suIpIWD0OsnISlw==";
      };
    };
    "function-bind-1.1.1" = {
      name = "function-bind";
      packageName = "function-bind";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.1.tgz";
        sha512 = "yIovAzMX49sF8Yl58fSCWJ5svSLuaibPxXQJFLmBObTuCr0Mf1KiPopGM9NiFjiYBCbfaa2Fh6breQ6ANVTI0A==";
      };
    };
    "has-1.0.3" = {
      name = "has";
      packageName = "has";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/has/-/has-1.0.3.tgz";
        sha512 = "f2dvO0VU6Oej7RkWJGrehjbzMAjFp5/VKPp5tTpWIV4JHHZK1/BxbFRtf/siA2SWTe09caDmVtYYzWEIbBS4zw==";
      };
    };
    "import-local-3.1.0" = {
      name = "import-local";
      packageName = "import-local";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/import-local/-/import-local-3.1.0.tgz";
        sha512 = "ASB07uLtnDs1o6EHjKpX34BKYDSqnFerfTOJL2HvMqF70LnxpjkzDB8J44oT9pu4AMPkQwf8jl6szgvNd2tRIg==";
      };
    };
    "interpret-3.1.1" = {
      name = "interpret";
      packageName = "interpret";
      version = "3.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/interpret/-/interpret-3.1.1.tgz";
        sha512 = "6xwYfHbajpoF0xLW+iwLkhwgvLoZDfjYfoFNu8ftMoXINzwuymNLd9u/KmwtdT2GbR+/Cz66otEGEVVUHX9QLQ==";
      };
    };
    "is-core-module-2.12.1" = {
      name = "is-core-module";
      packageName = "is-core-module";
      version = "2.12.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-core-module/-/is-core-module-2.12.1.tgz";
        sha512 = "Q4ZuBAe2FUsKtyQJoQHlvP8OvBERxO3jEmy1I7hcRXcJBGGHFh/aJBswbXuS9sgrDH2QUO8ilkwNPHvHMd8clg==";
      };
    };
    "is-plain-object-2.0.4" = {
      name = "is-plain-object";
      packageName = "is-plain-object";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-plain-object/-/is-plain-object-2.0.4.tgz";
        sha512 = "h5PpgXkWitc38BBMYawTYMWJHFZJVnBquFE57xFpjB8pJFiF6gZ+bU+WyI/yqXiFR5mdLsgYNaPe8uao6Uv9Og==";
      };
    };
    "isexe-2.0.0" = {
      name = "isexe";
      packageName = "isexe";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        sha512 = "RHxMLp9lnKHGHRng9QFhRCMbYAcVpn69smSGcq3f36xjgVVWThj4qqLbTLlq7Ssj8B+fIQ1EuCEGI2lKsyQeIw==";
      };
    };
    "isobject-3.0.1" = {
      name = "isobject";
      packageName = "isobject";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/isobject/-/isobject-3.0.1.tgz";
        sha512 = "WhB9zCku7EGTj/HQQRz5aUQEUeoQZH2bWcltRErOpymJ4boYE6wL9Tbr23krRPSZ+C5zqNSrSw+Cc7sZZ4b7vg==";
      };
    };
    "kind-of-6.0.3" = {
      name = "kind-of";
      packageName = "kind-of";
      version = "6.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/kind-of/-/kind-of-6.0.3.tgz";
        sha512 = "dcS1ul+9tmeD95T+x28/ehLgd9mENa3LsvDTtzm3vyBEO7RPptvAD+t44WVXaUjTBRcrpFeFlC8WCruUR456hw==";
      };
    };
    "locate-path-5.0.0" = {
      name = "locate-path";
      packageName = "locate-path";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/locate-path/-/locate-path-5.0.0.tgz";
        sha512 = "t7hw9pI+WvuwNJXwk5zVHpyhIqzg2qTlklJOf0mVxGSbe3Fp2VieZcduNYjaLDoy6p9uGpQEGWG87WpMKlNq8g==";
      };
    };
    "p-limit-2.3.0" = {
      name = "p-limit";
      packageName = "p-limit";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/p-limit/-/p-limit-2.3.0.tgz";
        sha512 = "//88mFWSJx8lxCzwdAABTJL2MyWB12+eIY7MDL2SqLmAkeKU9qxRvWuSyTjm3FUmpBEMuFfckAIqEaVGUDxb6w==";
      };
    };
    "p-locate-4.1.0" = {
      name = "p-locate";
      packageName = "p-locate";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/p-locate/-/p-locate-4.1.0.tgz";
        sha512 = "R79ZZ/0wAxKGu3oYMlz8jy/kbhsNrS7SKZ7PxEHBgJ5+F2mtFW2fK2cOtBh1cHYkQsbzFV7I+EoRKe6Yt0oK7A==";
      };
    };
    "p-try-2.2.0" = {
      name = "p-try";
      packageName = "p-try";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/p-try/-/p-try-2.2.0.tgz";
        sha512 = "R4nPAVTAU0B9D35/Gk3uJf/7XYbQcyohSKdvAxIRSNghFl4e71hVoGnBNQz9cWaXxO2I10KTC+3jMdvvoKw6dQ==";
      };
    };
    "path-exists-4.0.0" = {
      name = "path-exists";
      packageName = "path-exists";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-exists/-/path-exists-4.0.0.tgz";
        sha512 = "ak9Qy5Q7jYb2Wwcey5Fpvg2KoAc/ZIhLSLOSBmRmygPsGwkVVt0fZa0qrtMz+m6tJTAHfZQ8FnmB4MG4LWy7/w==";
      };
    };
    "path-key-3.1.1" = {
      name = "path-key";
      packageName = "path-key";
      version = "3.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-key/-/path-key-3.1.1.tgz";
        sha512 = "ojmeN0qd+y0jszEtoY48r0Peq5dwMEkIlCOu6Q5f41lfkswXuKtYrhgoTpLnyIcHm24Uhqx+5Tqm2InSwLhE6Q==";
      };
    };
    "path-parse-1.0.7" = {
      name = "path-parse";
      packageName = "path-parse";
      version = "1.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-parse/-/path-parse-1.0.7.tgz";
        sha512 = "LDJzPVEEEPR+y48z93A0Ed0yXb8pAByGWo/k5YYdYgpY2/2EsOsksJrq7lOHxryrVOn1ejG6oAp8ahvOIQD8sw==";
      };
    };
    "pkg-dir-4.2.0" = {
      name = "pkg-dir";
      packageName = "pkg-dir";
      version = "4.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pkg-dir/-/pkg-dir-4.2.0.tgz";
        sha512 = "HRDzbaKjC+AOWVXxAU/x54COGeIv9eb+6CkDSQoNTt4XyWoIJvuPsXizxu/Fr23EiekbtZwmh1IcIG/l/a10GQ==";
      };
    };
    "rechoir-0.8.0" = {
      name = "rechoir";
      packageName = "rechoir";
      version = "0.8.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/rechoir/-/rechoir-0.8.0.tgz";
        sha512 = "/vxpCXddiX8NGfGO/mTafwjq4aFa/71pvamip0++IQk3zG8cbCj0fifNPrjjF1XMXUne91jL9OoxmdykoEtifQ==";
      };
    };
    "resolve-1.22.3" = {
      name = "resolve";
      packageName = "resolve";
      version = "1.22.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/resolve/-/resolve-1.22.3.tgz";
        sha512 = "P8ur/gp/AmbEzjr729bZnLjXK5Z+4P0zhIJgBgzqRih7hL7BOukHGtSTA3ACMY467GRFz3duQsi0bDZdR7DKdw==";
      };
    };
    "resolve-cwd-3.0.0" = {
      name = "resolve-cwd";
      packageName = "resolve-cwd";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/resolve-cwd/-/resolve-cwd-3.0.0.tgz";
        sha512 = "OrZaX2Mb+rJCpH/6CpSqt9xFVpN++x01XnN2ie9g6P5/3xelLAkXWVADpdz1IHD/KFfEXyE6V0U01OQ3UO2rEg==";
      };
    };
    "resolve-from-5.0.0" = {
      name = "resolve-from";
      packageName = "resolve-from";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/resolve-from/-/resolve-from-5.0.0.tgz";
        sha512 = "qYg9KP24dD5qka9J47d0aVky0N+b4fTU89LN9iDnjB5waksiC49rvMB0PrUJQGoTmH50XPiqOvAjDfaijGxYZw==";
      };
    };
    "shallow-clone-3.0.1" = {
      name = "shallow-clone";
      packageName = "shallow-clone";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/shallow-clone/-/shallow-clone-3.0.1.tgz";
        sha512 = "/6KqX+GVUdqPuPPd2LxDDxzX6CAbjJehAAOKlNpqqUpAqPM6HeL8f+o3a+JsyGjn2lv0WY8UsTgUJjU9Ok55NA==";
      };
    };
    "shebang-command-2.0.0" = {
      name = "shebang-command";
      packageName = "shebang-command";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shebang-command/-/shebang-command-2.0.0.tgz";
        sha512 = "kHxr2zZpYtdmrN1qDjrrX/Z1rR1kG8Dx+gkpK1G4eXmvXswmcE1hTWBWYUzlraYw1/yZp6YuDY77YtvbN0dmDA==";
      };
    };
    "shebang-regex-3.0.0" = {
      name = "shebang-regex";
      packageName = "shebang-regex";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shebang-regex/-/shebang-regex-3.0.0.tgz";
        sha512 = "7++dFhtcx3353uBaq8DDR4NuxBetBzC7ZQOhmTQInHEd6bSrXdiEyzCvG07Z44UYdLShWUyXt5M/yhz8ekcb1A==";
      };
    };
    "supports-preserve-symlinks-flag-1.0.0" = {
      name = "supports-preserve-symlinks-flag";
      packageName = "supports-preserve-symlinks-flag";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz";
        sha512 = "ot0WnXS9fgdkgIcePe6RHNk1WA8+muPa6cSjeR3V8K27q9BB1rTE3R1p7Hv0z1ZyAc8s6Vvv8DIyWf681MAt0w==";
      };
    };
    "webpack-merge-5.9.0" = {
      name = "webpack-merge";
      packageName = "webpack-merge";
      version = "5.9.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/webpack-merge/-/webpack-merge-5.9.0.tgz";
        sha512 = "6NbRQw4+Sy50vYNTw7EyOn41OZItPiXB8GNv3INSoe3PSFaHJEz3SHTrYVaRm2LilNGnFUzh0FAwqPEmU/CwDg==";
      };
    };
    "which-2.0.2" = {
      name = "which";
      packageName = "which";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
        sha512 = "BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
      };
    };
    "wildcard-2.0.1" = {
      name = "wildcard";
      packageName = "wildcard";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/wildcard/-/wildcard-2.0.1.tgz";
        sha512 = "CC1bOL87PIWSBhDcTrdeLo6eGT7mCFtrg0uIJtqJUFyK+eJnzl8A1niH56uu7KMa5XFrtiV+AQuHO3n7DsHnLQ==";
      };
    };
  };
  args = {
    name = "webpack-cli";
    packageName = "webpack-cli";
    version = "5.1.4";
    src = fetchurl { url = "https://registry.npmjs.org/webpack-cli/-/webpack-cli-5.1.4.tgz"; sha1 = "c8e046ba7eaae4911d7e71e2b25b776fcc35759b"; };
    dependencies = [
      sources."@discoveryjs/json-ext-0.5.7"
      sources."@webpack-cli/configtest-2.1.1"
      sources."@webpack-cli/info-2.0.2"
      sources."@webpack-cli/serve-2.0.5"
      sources."clone-deep-4.0.1"
      sources."colorette-2.0.20"
      sources."commander-10.0.1"
      sources."cross-spawn-7.0.3"
      sources."envinfo-7.10.0"
      sources."fastest-levenshtein-1.0.16"
      sources."find-up-4.1.0"
      sources."function-bind-1.1.1"
      sources."has-1.0.3"
      sources."import-local-3.1.0"
      sources."interpret-3.1.1"
      sources."is-core-module-2.12.1"
      sources."is-plain-object-2.0.4"
      sources."isexe-2.0.0"
      sources."isobject-3.0.1"
      sources."kind-of-6.0.3"
      sources."locate-path-5.0.0"
      sources."p-limit-2.3.0"
      sources."p-locate-4.1.0"
      sources."p-try-2.2.0"
      sources."path-exists-4.0.0"
      sources."path-key-3.1.1"
      sources."path-parse-1.0.7"
      sources."pkg-dir-4.2.0"
      sources."rechoir-0.8.0"
      sources."resolve-1.22.3"
      sources."resolve-cwd-3.0.0"
      sources."resolve-from-5.0.0"
      sources."shallow-clone-3.0.1"
      sources."shebang-command-2.0.0"
      sources."shebang-regex-3.0.0"
      sources."supports-preserve-symlinks-flag-1.0.0"
      sources."webpack-merge-5.9.0"
      sources."which-2.0.2"
      sources."wildcard-2.0.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "CLI for webpack & friends";
      homepage = "https://github.com/webpack/webpack-cli/tree/master/packages/webpack-cli";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
