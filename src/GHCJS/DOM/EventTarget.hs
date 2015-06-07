{-# LANGUAGE CPP #-}
module GHCJS.DOM.EventTarget (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.EventTarget
#else
  module Graphics.UI.Gtk.WebKit.DOM.EventTarget
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.EventTarget
#else
import Graphics.UI.Gtk.WebKit.DOM.EventTarget
#endif
