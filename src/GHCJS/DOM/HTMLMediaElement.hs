{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLMediaElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLMediaElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMediaElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLMediaElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLMediaElement
#endif
