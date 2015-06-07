{-# LANGUAGE CPP #-}
module GHCJS.DOM.DOMNamedFlowCollection (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.DOMNamedFlowCollection
#else
  module Graphics.UI.Gtk.WebKit.DOM.DOMNamedFlowCollection
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.DOMNamedFlowCollection
#else
import Graphics.UI.Gtk.WebKit.DOM.DOMNamedFlowCollection
#endif
