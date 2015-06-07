{-# LANGUAGE CPP #-}
module GHCJS.DOM.MimeType (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.MimeType
#else
  module Graphics.UI.Gtk.WebKit.DOM.MimeType
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.MimeType
#else
import Graphics.UI.Gtk.WebKit.DOM.MimeType
#endif
