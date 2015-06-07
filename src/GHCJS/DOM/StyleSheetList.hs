{-# LANGUAGE CPP #-}
module GHCJS.DOM.StyleSheetList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.StyleSheetList
#else
  module Graphics.UI.Gtk.WebKit.DOM.StyleSheetList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.StyleSheetList
#else
import Graphics.UI.Gtk.WebKit.DOM.StyleSheetList
#endif
