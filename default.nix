haskellPackages: {
  ghcjs-dom = haskellPackages.callPackage ./ghcjs-dom {};
  ghcjs-dom-jsffi = haskellPackages.callPackage ./ghcjs-dom-jsffi {};
  ghcjs-dom-jsaddle = haskellPackages.callPackage ./ghcjs-dom-jsaddle {};
}