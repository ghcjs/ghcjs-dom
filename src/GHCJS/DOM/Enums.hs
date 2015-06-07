{-# LANGUAGE CPP #-}
module GHCJS.DOM.Enums (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Enums
#else
  module Graphics.UI.Gtk.WebKit.DOM.Enums
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Enums
#else
import Graphics.UI.Gtk.WebKit.DOM.Enums
#endif
