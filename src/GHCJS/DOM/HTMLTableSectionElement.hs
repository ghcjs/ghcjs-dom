{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLTableSectionElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLTableSectionElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableSectionElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLTableSectionElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableSectionElement
#endif
