{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CSSRule
       (cUNKNOWN_RULE, cSTYLE_RULE, cCHARSET_RULE, cIMPORT_RULE,
        cMEDIA_RULE, cFONT_FACE_RULE, cPAGE_RULE, cWEBKIT_KEYFRAMES_RULE,
        cWEBKIT_KEYFRAME_RULE, ghcjs_dom_css_rule_set_css_text,
        cssRuleSetCssText, ghcjs_dom_css_rule_get_css_text,
        cssRuleGetCssText, ghcjs_dom_css_rule_get_parent_style_sheet,
        cssRuleGetParentStyleSheet, ghcjs_dom_css_rule_get_parent_rule,
        cssRuleGetParentRule)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
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
cWEBKIT_KEYFRAMES_RULE = 7
cWEBKIT_KEYFRAME_RULE = 8


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        ghcjs_dom_css_rule_set_css_text ::
        JSRef CSSRule -> JSString -> IO ()
#else 
ghcjs_dom_css_rule_set_css_text ::
                                  JSRef CSSRule -> JSString -> IO ()
ghcjs_dom_css_rule_set_css_text = undefined
#endif
 
cssRuleSetCssText ::
                  (IsCSSRule self, ToJSString val) => self -> val -> IO ()
cssRuleSetCssText self val
  = ghcjs_dom_css_rule_set_css_text (unCSSRule (toCSSRule self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"]"
        ghcjs_dom_css_rule_get_css_text :: JSRef CSSRule -> IO JSString
#else 
ghcjs_dom_css_rule_get_css_text :: JSRef CSSRule -> IO JSString
ghcjs_dom_css_rule_get_css_text = undefined
#endif
 
cssRuleGetCssText ::
                  (IsCSSRule self, FromJSString result) => self -> IO result
cssRuleGetCssText self
  = fromJSString <$>
      (ghcjs_dom_css_rule_get_css_text (unCSSRule (toCSSRule self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        ghcjs_dom_css_rule_get_parent_style_sheet ::
        JSRef CSSRule -> IO (JSRef CSSStyleSheet)
#else 
ghcjs_dom_css_rule_get_parent_style_sheet ::
                                            JSRef CSSRule -> IO (JSRef CSSStyleSheet)
ghcjs_dom_css_rule_get_parent_style_sheet = undefined
#endif
 
cssRuleGetParentStyleSheet ::
                           (IsCSSRule self) => self -> IO (Maybe CSSStyleSheet)
cssRuleGetParentStyleSheet self
  = fmap CSSStyleSheet . maybeJSNull <$>
      (ghcjs_dom_css_rule_get_parent_style_sheet
         (unCSSRule (toCSSRule self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentRule\"]"
        ghcjs_dom_css_rule_get_parent_rule ::
        JSRef CSSRule -> IO (JSRef CSSRule)
#else 
ghcjs_dom_css_rule_get_parent_rule ::
                                     JSRef CSSRule -> IO (JSRef CSSRule)
ghcjs_dom_css_rule_get_parent_rule = undefined
#endif
 
cssRuleGetParentRule ::
                     (IsCSSRule self) => self -> IO (Maybe CSSRule)
cssRuleGetParentRule self
  = fmap CSSRule . maybeJSNull <$>
      (ghcjs_dom_css_rule_get_parent_rule (unCSSRule (toCSSRule self)))