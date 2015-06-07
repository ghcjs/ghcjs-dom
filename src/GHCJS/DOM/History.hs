{-# LANGUAGE CPP #-}
module GHCJS.DOM.History (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.History
#else
  module Graphics.UI.Gtk.WebKit.DOM.History
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.History
#else
import Graphics.UI.Gtk.WebKit.DOM.History
#endif
