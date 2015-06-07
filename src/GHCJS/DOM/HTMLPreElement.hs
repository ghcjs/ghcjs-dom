{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLPreElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLPreElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLPreElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLPreElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLPreElement
#endif
