{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLDirectoryElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLDirectoryElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDirectoryElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLDirectoryElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLDirectoryElement
#endif
