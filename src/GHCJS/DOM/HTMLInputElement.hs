{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLInputElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLInputElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLInputElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLInputElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLInputElement
#endif
