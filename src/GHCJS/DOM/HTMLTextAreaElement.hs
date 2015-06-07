{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLTextAreaElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLTextAreaElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTextAreaElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLTextAreaElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLTextAreaElement
#endif
