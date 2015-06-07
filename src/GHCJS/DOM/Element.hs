{-# LANGUAGE CPP #-}
module GHCJS.DOM.Element (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Element
#else
  module Graphics.UI.Gtk.WebKit.DOM.Element
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Element
#else
import Graphics.UI.Gtk.WebKit.DOM.Element
#endif
