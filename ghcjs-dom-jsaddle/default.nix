{ mkDerivation, jsaddle-dom, stdenv }:
mkDerivation {
  pname = "ghcjs-dom-jsaddle";
  version = "0.7.0.3";
  src = builtins.filterSource (path: type: !(builtins.elem (baseNameOf path) [ ".git" "dist" ])) ./.;
  libraryHaskellDepends = [ jsaddle-dom ];
  description = "DOM library that supports both GHCJS and GHC using jsaddle";
  license = stdenv.lib.licenses.mit;
}
