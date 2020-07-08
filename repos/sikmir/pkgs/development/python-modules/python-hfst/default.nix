{ lib, buildPythonPackage, hfst, swig }:

buildPythonPackage {
  pname = "python-hfst";
  inherit (hfst) src version;

  sourceRoot = "source/python";

  buildInputs = [ hfst ];

  nativeBuildInputs = [ swig ];

  meta = with lib; {
    description = "Python bindings for HFST";
    homepage = "https://github.com/hfst/python/wiki";
    license = hfst.meta.license;
    maintainers = with maintainers; [ sikmir ];
    platforms = platforms.unix;
  };
}
