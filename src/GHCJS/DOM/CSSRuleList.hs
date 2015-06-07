{-# LANGUAGE CPP #-}
module GHCJS.DOM.CSSRuleList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.CSSRuleList
#else
  module Graphics.UI.Gtk.WebKit.DOM.CSSRuleList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.CSSRuleList
#else
import Graphics.UI.Gtk.WebKit.DOM.CSSRuleList
#endif
