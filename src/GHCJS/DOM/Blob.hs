{-# LANGUAGE CPP #-}
module GHCJS.DOM.Blob (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Blob
#else
  module Graphics.UI.Gtk.WebKit.DOM.Blob
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Blob
#else
import Graphics.UI.Gtk.WebKit.DOM.Blob
#endif
