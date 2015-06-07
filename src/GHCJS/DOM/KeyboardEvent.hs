{-# LANGUAGE CPP #-}
module GHCJS.DOM.KeyboardEvent (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.KeyboardEvent
#else
  module Graphics.UI.Gtk.WebKit.DOM.KeyboardEvent
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.KeyboardEvent
#else
import Graphics.UI.Gtk.WebKit.DOM.KeyboardEvent
#endif
