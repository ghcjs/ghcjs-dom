{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLTableCellElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLTableCellElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableCellElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLTableCellElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableCellElement
#endif
