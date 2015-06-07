{-# LANGUAGE CPP #-}
module GHCJS.DOM.DocumentType (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.DocumentType
#else
  module Graphics.UI.Gtk.WebKit.DOM.DocumentType
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.DocumentType
#else
import Graphics.UI.Gtk.WebKit.DOM.DocumentType
#endif
