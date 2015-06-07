{-# LANGUAGE CPP #-}
module GHCJS.DOM.SecurityPolicy (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.SecurityPolicy
#else
  module Graphics.UI.Gtk.WebKit.DOM.SecurityPolicy
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.SecurityPolicy
#else
import Graphics.UI.Gtk.WebKit.DOM.SecurityPolicy
#endif
