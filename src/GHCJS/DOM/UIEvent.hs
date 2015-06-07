{-# LANGUAGE CPP #-}
module GHCJS.DOM.UIEvent (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.UIEvent
#else
  module Graphics.UI.Gtk.WebKit.DOM.UIEvent
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.UIEvent
#else
import Graphics.UI.Gtk.WebKit.DOM.UIEvent
#endif
