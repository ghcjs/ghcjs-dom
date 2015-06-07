{-# LANGUAGE CPP #-}
module GHCJS.DOM.Event (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Event
#else
  module Graphics.UI.Gtk.WebKit.DOM.Event
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Event
#else
import Graphics.UI.Gtk.WebKit.DOM.Event
#endif
