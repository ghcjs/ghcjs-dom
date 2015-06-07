{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLCollection (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLCollection
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLCollection
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLCollection
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLCollection
#endif
