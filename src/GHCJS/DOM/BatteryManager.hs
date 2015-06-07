{-# LANGUAGE CPP #-}
module GHCJS.DOM.BatteryManager (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.BatteryManager
#else
  module Graphics.UI.Gtk.WebKit.DOM.BatteryManager
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.BatteryManager
#else
import Graphics.UI.Gtk.WebKit.DOM.BatteryManager
#endif
