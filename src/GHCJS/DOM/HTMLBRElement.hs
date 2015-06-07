{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLBRElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLBRElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBRElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLBRElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLBRElement
#endif
