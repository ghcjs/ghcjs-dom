{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLVideoElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLVideoElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLVideoElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLVideoElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLVideoElement
#endif
