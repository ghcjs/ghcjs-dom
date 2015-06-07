{-# LANGUAGE CPP #-}
module GHCJS.DOM.ValidityState (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.ValidityState
#else
  module Graphics.UI.Gtk.WebKit.DOM.ValidityState
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.ValidityState
#else
import Graphics.UI.Gtk.WebKit.DOM.ValidityState
#endif
