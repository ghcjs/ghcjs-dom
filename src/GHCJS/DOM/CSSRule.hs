{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CSSRule
       (cUNKNOWN_RULE, cSTYLE_RULE, cCHARSET_RULE, cIMPORT_RULE,
        cMEDIA_RULE, cFONT_FACE_RULE, cPAGE_RULE, cWEBKIT_KEYFRAMES_RULE,
        cWEBKIT_KEYFRAME_RULE, webkit_dom_css_rule_set_css_text,
        cssRuleSetCssText, webkit_dom_css_rule_get_css_text,
        cssRuleGetCssText, webkit_dom_css_rule_get_parent_style_sheet,
        cssRuleGetParentStyleSheet, webkit_dom_css_rule_get_parent_rule,
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
        webkit_dom_css_rule_set_css_text ::
        JSRef CSSRule -> JSString -> IO ()
#else 
webkit_dom_css_rule_set_css_text ::
                                   JSRef CSSRule -> JSString -> IO ()
webkit_dom_css_rule_set_css_text = undefined
#endif
 
cssRuleSetCssText ::
                  (CSSRuleClass self, ToJSString val) => self -> val -> IO ()
cssRuleSetCssText self val
  = webkit_dom_css_rule_set_css_text (unCSSRule (toCSSRule self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"]"
        webkit_dom_css_rule_get_css_text :: JSRef CSSRule -> IO JSString
#else 
webkit_dom_css_rule_get_css_text :: JSRef CSSRule -> IO JSString
webkit_dom_css_rule_get_css_text = undefined
#endif
 
cssRuleGetCssText ::
                  (CSSRuleClass self, FromJSString result) => self -> IO result
cssRuleGetCssText self
  = fromJSString <$>
      (webkit_dom_css_rule_get_css_text (unCSSRule (toCSSRule self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        webkit_dom_css_rule_get_parent_style_sheet ::
        JSRef CSSRule -> IO (JSRef CSSStyleSheet)
#else 
webkit_dom_css_rule_get_parent_style_sheet ::
                                             JSRef CSSRule -> IO (JSRef CSSStyleSheet)
webkit_dom_css_rule_get_parent_style_sheet = undefined
#endif
 
cssRuleGetParentStyleSheet ::
                           (CSSRuleClass self) => self -> IO (Maybe CSSStyleSheet)
cssRuleGetParentStyleSheet self
  = fmap CSSStyleSheet . maybeJSNull <$>
      (webkit_dom_css_rule_get_parent_style_sheet
         (unCSSRule (toCSSRule self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentRule\"]"
        webkit_dom_css_rule_get_parent_rule ::
        JSRef CSSRule -> IO (JSRef CSSRule)
#else 
webkit_dom_css_rule_get_parent_rule ::
                                      JSRef CSSRule -> IO (JSRef CSSRule)
webkit_dom_css_rule_get_parent_rule = undefined
#endif
 
cssRuleGetParentRule ::
                     (CSSRuleClass self) => self -> IO (Maybe CSSRule)
cssRuleGetParentRule self
  = fmap CSSRule . maybeJSNull <$>
      (webkit_dom_css_rule_get_parent_rule (unCSSRule (toCSSRule self)))