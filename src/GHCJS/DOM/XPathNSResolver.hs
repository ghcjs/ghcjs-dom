{-# LANGUAGE CPP #-}
module GHCJS.DOM.XPathNSResolver (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.XPathNSResolver
#else
  module Graphics.UI.Gtk.WebKit.DOM.XPathNSResolver
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.XPathNSResolver
#else
import Graphics.UI.Gtk.WebKit.DOM.XPathNSResolver
#endif
