{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLDocument (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLDocument
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDocument
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLDocument
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLDocument
#endif
