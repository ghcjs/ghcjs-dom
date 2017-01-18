{ mkDerivation, base, ghcjs-dom-jsaddle, stdenv, text, transformers
}:
mkDerivation {
  pname = "ghcjs-dom";
  version = "0.7.0.4";
  src = ./.;
  libraryHaskellDepends = [
    base ghcjs-dom-jsaddle text transformers
  ];
  description = "DOM library that supports both GHCJS and GHC";
  license = stdenv.lib.licenses.mit;
}
