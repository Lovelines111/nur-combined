{ lib
, python3Packages
, fetchFromGitHub
, blueprint-compiler
, desktop-file-utils
, gobject-introspection
, meson
, ninja
, pkg-config
, wrapGAppsHook4
, gtk4
, gtksourceview5
, libadwaita
, webkitgtk_6_0
}:

python3Packages.buildPythonApplication rec {
  pname = "devtoolbox";
  version = "1.1.1";

  format = "other";

  src = fetchFromGitHub {
    owner = "aleiepure";
    repo = "devtoolbox";
    rev = "v${version}";
    hash = "sha256-QFGEA+VhhRlvcch2AJrEzvRJGCSqtvZdMXWUvdAGkoU=";
  };

  nativeBuildInputs = [
    blueprint-compiler
    desktop-file-utils
    gobject-introspection
    meson
    ninja
    pkg-config
    wrapGAppsHook4
  ];

  buildInputs = [
    gtk4
    gtksourceview5
    libadwaita
    webkitgtk_6_0
  ];

  propagatedBuildInputs = with python3Packages; [
    croniter
    humanize
    lxml
    markdown2
    pygobject3
    python-crontab
    python-jwt
    ruamel-yaml
    sqlparse
  ] ++ [
    (buildPythonPackage rec {
      pname = "daltonlens";
      version = "0.1.5";

      format = "pyproject";

      src = fetchPypi {
        inherit pname version;
        hash = "sha256-T7fXlRdFtcVw5WURPqZhCmulUi1ZnCfCXgcLtTHeNas=";
      };

      nativeBuildInputs = [
        setuptools
        setuptools-git
        wheel
      ];

      propagatedBuildInputs = [
        numpy
        pillow
      ];

      pythonImportsCheck = [ "daltonlens" ];
    })

    (buildPythonPackage rec {
      pname = "python-lorem";
      version = "1.3.0";

      format = "setuptools";

      src = fetchPypi {
        inherit pname version;
        hash = "sha256-ghzvDJRV+XSoTqu88/B3TXGITUM1K9PP5d9EYHoQrNI=";
      };

      pythonImportsCheck = [ "lorem" ];
    })

    (buildPythonPackage rec {
      pname = "textstat";
      version = "0.7.3";

      format = "setuptools";

      src = fetchPypi {
        inherit pname version;
        hash = "sha256-YLY8+JSfRbuztCBeRBG7wc1m30wIrvElRYEcfm4k8BE=";
      };

      propagatedBuildInputs = [
        pyphen
        setuptools
      ];

      pythonImportsCheck = [ "textstat" ];

      doCheck = false;
    })

    (buildPythonPackage rec {
      pname = "uuid6";
      version = "2022.10.25";

      format = "setuptools";

      src = fetchPypi {
        inherit pname version;
        hash = "sha256-ClaTXenBzo3YVZIluEVUnZSRfZ4krUscwjKO6lvgAQw=";
      };

      pythonImportsCheck = [ "uuid6" ];
    })
  ];

  dontWrapGApps = true;

  preFixup = ''
    makeWrapperArgs+=("''${gappsWrapperArgs[@]}")
  '';

  meta = with lib; {
    description = "Development tools at your fingertips";
    homepage = "https://github.com/aleiepure/devtoolbox";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
    maintainers = with maintainers; [ federicoschonborn ];
    broken = versionOlder blueprint-compiler.version "0.8";
  };
}
