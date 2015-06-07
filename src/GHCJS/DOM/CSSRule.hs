{-# LANGUAGE CPP #-}
module GHCJS.DOM.CSSRule (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.CSSRule
#else
  module Graphics.UI.Gtk.WebKit.DOM.CSSRule
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.CSSRule
#else
import Graphics.UI.Gtk.WebKit.DOM.CSSRule
#endif
