{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLEmbedElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLEmbedElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLEmbedElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLEmbedElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLEmbedElement
#endif
