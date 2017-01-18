{ mkDerivation, stdenv }:
mkDerivation {
  pname = "ghcjs-dom-jsffi";
  version = "0.7.0.4";
  src = ./.;
  isLibrary = false;
  isExecutable = false;
  description = "DOM library using JSFFI and GHCJS";
  license = stdenv.lib.licenses.mit;
}
