{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLFrameSetElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLFrameSetElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFrameSetElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLFrameSetElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLFrameSetElement
#endif
