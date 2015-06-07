{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLMapElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLMapElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMapElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLMapElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLMapElement
#endif
