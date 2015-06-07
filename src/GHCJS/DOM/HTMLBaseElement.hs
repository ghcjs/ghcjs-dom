{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLBaseElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLBaseElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBaseElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLBaseElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLBaseElement
#endif
