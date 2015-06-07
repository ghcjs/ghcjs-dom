{-# LANGUAGE CPP #-}
module GHCJS.DOM.CSSStyleDeclaration (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.CSSStyleDeclaration
#else
  module Graphics.UI.Gtk.WebKit.DOM.CSSStyleDeclaration
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.CSSStyleDeclaration
#else
import Graphics.UI.Gtk.WebKit.DOM.CSSStyleDeclaration
#endif
