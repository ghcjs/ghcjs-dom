{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLMarqueeElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLMarqueeElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMarqueeElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLMarqueeElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLMarqueeElement
#endif
