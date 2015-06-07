{-# LANGUAGE CPP #-}
module GHCJS.DOM.WheelEvent (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.WheelEvent
#else
  module Graphics.UI.Gtk.WebKit.DOM.WheelEvent
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.WheelEvent
#else
import Graphics.UI.Gtk.WebKit.DOM.WheelEvent
#endif
