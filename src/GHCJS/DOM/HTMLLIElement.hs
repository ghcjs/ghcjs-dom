{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLLIElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLLIElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLIElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLLIElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLLIElement
#endif
