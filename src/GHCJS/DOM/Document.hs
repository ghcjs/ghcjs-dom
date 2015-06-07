{-# LANGUAGE CPP #-}
module GHCJS.DOM.Document (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Document
#else
  module Graphics.UI.Gtk.WebKit.DOM.Document
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Document
#else
import Graphics.UI.Gtk.WebKit.DOM.Document
#endif
