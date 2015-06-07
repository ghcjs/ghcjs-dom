{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLFormElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLFormElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFormElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLFormElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLFormElement
#endif
