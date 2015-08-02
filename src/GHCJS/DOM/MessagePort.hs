{-# LANGUAGE CPP #-}
module GHCJS.DOM.MessagePort (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.MessagePort
#else
  module Graphics.UI.Gtk.WebKit.DOM.MessagePort
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.MessagePort
#else
import Graphics.UI.Gtk.WebKit.DOM.MessagePort
#endif
