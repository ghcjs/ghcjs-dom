{-# LANGUAGE CPP #-}
module GHCJS.DOM.FileList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.FileList
#else
  module Graphics.UI.Gtk.WebKit.DOM.FileList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.FileList
#else
import Graphics.UI.Gtk.WebKit.DOM.FileList
#endif
