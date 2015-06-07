{-# LANGUAGE CPP #-}
module GHCJS.DOM.File (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.File
#else
  module Graphics.UI.Gtk.WebKit.DOM.File
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.File
#else
import Graphics.UI.Gtk.WebKit.DOM.File
#endif
