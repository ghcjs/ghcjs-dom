{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLAppletElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLAppletElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAppletElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLAppletElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLAppletElement
#endif
