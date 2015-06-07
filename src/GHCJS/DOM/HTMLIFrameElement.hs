{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLIFrameElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLIFrameElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLIFrameElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLIFrameElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLIFrameElement
#endif
