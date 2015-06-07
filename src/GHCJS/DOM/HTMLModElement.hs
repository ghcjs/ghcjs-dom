{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLModElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLModElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLModElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLModElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLModElement
#endif
