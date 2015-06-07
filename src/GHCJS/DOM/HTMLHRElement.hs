{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLHRElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLHRElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHRElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLHRElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLHRElement
#endif
