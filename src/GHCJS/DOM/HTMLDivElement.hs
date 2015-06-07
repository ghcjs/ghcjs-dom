{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLDivElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLDivElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDivElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLDivElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLDivElement
#endif
