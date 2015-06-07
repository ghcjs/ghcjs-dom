{-# LANGUAGE CPP #-}
module GHCJS.DOM.ApplicationCache (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.ApplicationCache
#else
  module Graphics.UI.Gtk.WebKit.DOM.ApplicationCache
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.ApplicationCache
#else
import Graphics.UI.Gtk.WebKit.DOM.ApplicationCache
#endif
