{-# LANGUAGE CPP #-}
module GHCJS.DOM.Storage (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Storage
#else
  module Graphics.UI.Gtk.WebKit.DOM.Storage
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Storage
#else
import Graphics.UI.Gtk.WebKit.DOM.Storage
#endif
