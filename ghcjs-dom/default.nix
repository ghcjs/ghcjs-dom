{ mkDerivation, base, ghcjs-dom-jsaddle, ghcjs-dom-jsffi, stdenv, text, transformers, ghc
}:
mkDerivation {
  pname = "ghcjs-dom";
  version = "0.7.0.4";
  src = ./.;
  libraryHaskellDepends = [
    base text transformers
  ] ++ (if ghc.isGhcjs or false then [
    ghcjs-dom-jsffi
  ] else [
    ghcjs-dom-jsaddle
  ]);
  description = "DOM library that supports both GHCJS and GHC";
  license = stdenv.lib.licenses.mit;
}
