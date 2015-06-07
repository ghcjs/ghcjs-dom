{-# LANGUAGE CPP #-}
module GHCJS.DOM.BarProp (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.BarProp
#else
  module Graphics.UI.Gtk.WebKit.DOM.BarProp
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.BarProp
#else
import Graphics.UI.Gtk.WebKit.DOM.BarProp
#endif
