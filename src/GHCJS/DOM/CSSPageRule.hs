{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSPageRule
       (ghcjs_dom_css_page_rule_set_selector_text,
        cssPageRuleSetSelectorText,
        ghcjs_dom_css_page_rule_get_selector_text,
        cssPageRuleGetSelectorText, ghcjs_dom_css_page_rule_get_style,
        cssPageRuleGetStyle, CSSPageRule, IsCSSPageRule, castToCSSPageRule,
        gTypeCSSPageRule, toCSSPageRule)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"selectorText\"] = $2;"
        ghcjs_dom_css_page_rule_set_selector_text ::
        JSRef CSSPageRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
cssPageRuleSetSelectorText ::
                           (MonadIO m, IsCSSPageRule self, ToJSString val) =>
                             self -> val -> m ()
cssPageRuleSetSelectorText self val
  = liftIO
      (ghcjs_dom_css_page_rule_set_selector_text
         (unCSSPageRule (toCSSPageRule self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"selectorText\"]"
        ghcjs_dom_css_page_rule_get_selector_text ::
        JSRef CSSPageRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
cssPageRuleGetSelectorText ::
                           (MonadIO m, IsCSSPageRule self, FromJSString result) =>
                             self -> m result
cssPageRuleGetSelectorText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_css_page_rule_get_selector_text
            (unCSSPageRule (toCSSPageRule self))))
 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_css_page_rule_get_style ::
        JSRef CSSPageRule -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.style Mozilla CSSPageRule.style documentation> 
cssPageRuleGetStyle ::
                    (MonadIO m, IsCSSPageRule self) =>
                      self -> m (Maybe CSSStyleDeclaration)
cssPageRuleGetStyle self
  = liftIO
      ((ghcjs_dom_css_page_rule_get_style
          (unCSSPageRule (toCSSPageRule self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.CSSPageRule (
  ) where
#endif
