{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLOptionsCollection (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLOptionsCollection
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLOptionsCollection
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
#endif
