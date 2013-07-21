{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Css (CSSRule, IsCSSRule) where
 
data CSSRule = CSSRule
 
class IsCSSRule a
 
instance IsCSSRule CSSRule
#else
module GHCJS.DOM.Css (
  module Graphics.UI.Gtk.WebKit.DOM.Css
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Css
#endif
