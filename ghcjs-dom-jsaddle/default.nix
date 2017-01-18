{ mkDerivation, jsaddle-dom, stdenv }:
mkDerivation {
  pname = "ghcjs-dom-jsaddle";
  version = "0.7.0.3";
  src = ./.;
  libraryHaskellDepends = [ jsaddle-dom ];
  description = "DOM library that supports both GHCJS and GHC using jsaddle";
  license = stdenv.lib.licenses.mit;
}
