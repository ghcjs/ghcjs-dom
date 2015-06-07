{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLOptionElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLOptionElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptionElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLOptionElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptionElement
#endif
