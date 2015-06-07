{-# LANGUAGE CPP #-}
module GHCJS.DOM.StorageInfo (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.StorageInfo
#else
  module Graphics.UI.Gtk.WebKit.DOM.StorageInfo
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.StorageInfo
#else
import Graphics.UI.Gtk.WebKit.DOM.StorageInfo
#endif
