{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLKeygenElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLKeygenElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLKeygenElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLKeygenElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLKeygenElement
#endif
