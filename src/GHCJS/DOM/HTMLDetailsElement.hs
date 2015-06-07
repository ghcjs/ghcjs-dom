{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLDetailsElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLDetailsElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDetailsElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLDetailsElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLDetailsElement
#endif
