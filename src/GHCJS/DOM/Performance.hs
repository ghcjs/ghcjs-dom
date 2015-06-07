{-# LANGUAGE CPP #-}
module GHCJS.DOM.Performance (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Performance
#else
  module Graphics.UI.Gtk.WebKit.DOM.Performance
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Performance
#else
import Graphics.UI.Gtk.WebKit.DOM.Performance
#endif
