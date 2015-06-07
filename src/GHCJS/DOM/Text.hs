{-# LANGUAGE CPP #-}
module GHCJS.DOM.Text (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Text
#else
  module Graphics.UI.Gtk.WebKit.DOM.Text
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Text
#else
import Graphics.UI.Gtk.WebKit.DOM.Text
#endif
