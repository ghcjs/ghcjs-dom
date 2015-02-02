{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSStyleRule
       (ghcjs_dom_css_style_rule_set_selector_text,
        cssStyleRuleSetSelectorText,
        ghcjs_dom_css_style_rule_get_selector_text,
        cssStyleRuleGetSelectorText, ghcjs_dom_css_style_rule_get_style,
        cssStyleRuleGetStyle, CSSStyleRule, IsCSSStyleRule,
        castToCSSStyleRule, gTypeCSSStyleRule, toCSSStyleRule)
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

 
foreign import javascript unsafe "$1[\"selectorText\"] = $2;"
        ghcjs_dom_css_style_rule_set_selector_text ::
        JSRef CSSStyleRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
cssStyleRuleSetSelectorText ::
                            (IsCSSStyleRule self, ToJSString val) => self -> val -> IO ()
cssStyleRuleSetSelectorText self val
  = ghcjs_dom_css_style_rule_set_selector_text
      (unCSSStyleRule (toCSSStyleRule self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"selectorText\"]"
        ghcjs_dom_css_style_rule_get_selector_text ::
        JSRef CSSStyleRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
cssStyleRuleGetSelectorText ::
                            (IsCSSStyleRule self, FromJSString result) => self -> IO result
cssStyleRuleGetSelectorText self
  = fromJSString <$>
      (ghcjs_dom_css_style_rule_get_selector_text
         (unCSSStyleRule (toCSSStyleRule self)))
 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_css_style_rule_get_style ::
        JSRef CSSStyleRule -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.style Mozilla CSSStyleRule.style documentation> 
cssStyleRuleGetStyle ::
                     (IsCSSStyleRule self) => self -> IO (Maybe CSSStyleDeclaration)
cssStyleRuleGetStyle self
  = (ghcjs_dom_css_style_rule_get_style
       (unCSSStyleRule (toCSSStyleRule self)))
      >>= fromJSRef
#else
module GHCJS.DOM.CSSStyleRule (
  ) where
#endif
