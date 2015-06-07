{-# LANGUAGE CPP #-}
module GHCJS.DOM.Attr (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Attr
#else
  module Graphics.UI.Gtk.WebKit.DOM.Attr
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Attr
#else
import Graphics.UI.Gtk.WebKit.DOM.Attr
#endif
