{-# LANGUAGE CPP #-}
module GHCJS.DOM.CSSValue (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.CSSValue
#else
  module Graphics.UI.Gtk.WebKit.DOM.CSSValue
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.CSSValue
#else
import Graphics.UI.Gtk.WebKit.DOM.CSSValue
#endif
