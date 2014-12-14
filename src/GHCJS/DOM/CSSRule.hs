{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSRule
       (cUNKNOWN_RULE, cSTYLE_RULE, cCHARSET_RULE, cIMPORT_RULE,
        cMEDIA_RULE, cFONT_FACE_RULE, cPAGE_RULE, cKEYFRAMES_RULE,
        cKEYFRAME_RULE, cSUPPORTS_RULE, cWEBKIT_KEYFRAMES_RULE,
        cWEBKIT_KEYFRAME_RULE, ghcjs_dom_css_rule_set_css_text,
        cssRuleSetCssText, ghcjs_dom_css_rule_get_css_text,
        cssRuleGetCssText, ghcjs_dom_css_rule_get_parent_style_sheet,
        cssRuleGetParentStyleSheet, ghcjs_dom_css_rule_get_parent_rule,
        cssRuleGetParentRule, CSSRule, IsCSSRule, castToCSSRule,
        gTypeCSSRule, toCSSRule)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cUNKNOWN_RULE = 0
cSTYLE_RULE = 1
cCHARSET_RULE = 2
cIMPORT_RULE = 3
cMEDIA_RULE = 4
cFONT_FACE_RULE = 5
cPAGE_RULE = 6
cKEYFRAMES_RULE = 7
cKEYFRAME_RULE = 8
cSUPPORTS_RULE = 12
cWEBKIT_KEYFRAMES_RULE = 7
cWEBKIT_KEYFRAME_RULE = 8
 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        ghcjs_dom_css_rule_set_css_text ::
        JSRef CSSRule -> JSString -> IO ()
 
cssRuleSetCssText ::
                  (IsCSSRule self, ToJSString val) => self -> val -> IO ()
cssRuleSetCssText self val
  = ghcjs_dom_css_rule_set_css_text (unCSSRule (toCSSRule self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cssText\"]"
        ghcjs_dom_css_rule_get_css_text :: JSRef CSSRule -> IO JSString
 
cssRuleGetCssText ::
                  (IsCSSRule self, FromJSString result) => self -> IO result
cssRuleGetCssText self
  = fromJSString <$>
      (ghcjs_dom_css_rule_get_css_text (unCSSRule (toCSSRule self)))
 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        ghcjs_dom_css_rule_get_parent_style_sheet ::
        JSRef CSSRule -> IO (JSRef CSSStyleSheet)
 
cssRuleGetParentStyleSheet ::
                           (IsCSSRule self) => self -> IO (Maybe CSSStyleSheet)
cssRuleGetParentStyleSheet self
  = fmap CSSStyleSheet . maybeJSNull <$>
      (ghcjs_dom_css_rule_get_parent_style_sheet
         (unCSSRule (toCSSRule self)))
 
foreign import javascript unsafe "$1[\"parentRule\"]"
        ghcjs_dom_css_rule_get_parent_rule ::
        JSRef CSSRule -> IO (JSRef CSSRule)
 
cssRuleGetParentRule ::
                     (IsCSSRule self) => self -> IO (Maybe CSSRule)
cssRuleGetParentRule self
  = fmap CSSRule . maybeJSNull <$>
      (ghcjs_dom_css_rule_get_parent_rule (unCSSRule (toCSSRule self)))
#else
module GHCJS.DOM.CSSRule (
  module Graphics.UI.Gtk.WebKit.DOM.CSSRule
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSRule
#endif
