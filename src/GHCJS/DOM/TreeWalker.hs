{-# LANGUAGE CPP #-}
module GHCJS.DOM.TreeWalker (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.TreeWalker
#else
  module Graphics.UI.Gtk.WebKit.DOM.TreeWalker
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.TreeWalker
#else
import Graphics.UI.Gtk.WebKit.DOM.TreeWalker
#endif
