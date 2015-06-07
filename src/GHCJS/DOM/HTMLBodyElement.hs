{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLBodyElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLBodyElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLBodyElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
#endif
