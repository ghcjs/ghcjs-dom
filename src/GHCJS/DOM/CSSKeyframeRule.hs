{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSKeyframeRule
       (ghcjs_dom_css_keyframe_rule_set_key_text,
        cssKeyframeRuleSetKeyText,
        ghcjs_dom_css_keyframe_rule_get_key_text,
        cssKeyframeRuleGetKeyText, ghcjs_dom_css_keyframe_rule_get_style,
        cssKeyframeRuleGetStyle, CSSKeyframeRule, IsCSSKeyframeRule,
        castToCSSKeyframeRule, gTypeCSSKeyframeRule, toCSSKeyframeRule)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"keyText\"] = $2;"
        ghcjs_dom_css_keyframe_rule_set_key_text ::
        JSRef CSSKeyframeRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.keyText Mozilla CSSKeyframeRule.keyText documentation> 
cssKeyframeRuleSetKeyText ::
                          (IsCSSKeyframeRule self, ToJSString val) => self -> val -> IO ()
cssKeyframeRuleSetKeyText self val
  = ghcjs_dom_css_keyframe_rule_set_key_text
      (unCSSKeyframeRule (toCSSKeyframeRule self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"keyText\"]"
        ghcjs_dom_css_keyframe_rule_get_key_text ::
        JSRef CSSKeyframeRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.keyText Mozilla CSSKeyframeRule.keyText documentation> 
cssKeyframeRuleGetKeyText ::
                          (IsCSSKeyframeRule self, FromJSString result) => self -> IO result
cssKeyframeRuleGetKeyText self
  = fromJSString <$>
      (ghcjs_dom_css_keyframe_rule_get_key_text
         (unCSSKeyframeRule (toCSSKeyframeRule self)))
 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_css_keyframe_rule_get_style ::
        JSRef CSSKeyframeRule -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.style Mozilla CSSKeyframeRule.style documentation> 
cssKeyframeRuleGetStyle ::
                        (IsCSSKeyframeRule self) => self -> IO (Maybe CSSStyleDeclaration)
cssKeyframeRuleGetStyle self
  = (ghcjs_dom_css_keyframe_rule_get_style
       (unCSSKeyframeRule (toCSSKeyframeRule self)))
      >>= fromJSRef
#else
module GHCJS.DOM.CSSKeyframeRule (
  ) where
#endif
