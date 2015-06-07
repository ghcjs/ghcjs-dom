{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLAreaElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLAreaElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLAreaElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
#endif
