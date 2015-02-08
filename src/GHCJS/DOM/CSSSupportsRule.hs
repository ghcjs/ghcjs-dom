{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSSupportsRule
       (ghcjs_dom_css_supports_rule_insert_rule,
        cssSupportsRuleInsertRule, ghcjs_dom_css_supports_rule_delete_rule,
        cssSupportsRuleDeleteRule,
        ghcjs_dom_css_supports_rule_get_css_rules,
        cssSupportsRuleGetCssRules,
        ghcjs_dom_css_supports_rule_get_condition_text,
        cssSupportsRuleGetConditionText, CSSSupportsRule,
        IsCSSSupportsRule, castToCSSSupportsRule, gTypeCSSSupportsRule,
        toCSSSupportsRule)
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

 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        ghcjs_dom_css_supports_rule_insert_rule ::
        JSRef CSSSupportsRule -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.insertRule Mozilla CSSSupportsRule.insertRule documentation> 
cssSupportsRuleInsertRule ::
                          (MonadIO m, IsCSSSupportsRule self, ToJSString rule) =>
                            self -> rule -> Word -> m Word
cssSupportsRuleInsertRule self rule index
  = liftIO
      (ghcjs_dom_css_supports_rule_insert_rule
         (unCSSSupportsRule (toCSSSupportsRule self))
         (toJSString rule)
         index)
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        ghcjs_dom_css_supports_rule_delete_rule ::
        JSRef CSSSupportsRule -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.deleteRule Mozilla CSSSupportsRule.deleteRule documentation> 
cssSupportsRuleDeleteRule ::
                          (MonadIO m, IsCSSSupportsRule self) => self -> Word -> m ()
cssSupportsRuleDeleteRule self index
  = liftIO
      (ghcjs_dom_css_supports_rule_delete_rule
         (unCSSSupportsRule (toCSSSupportsRule self))
         index)
 
foreign import javascript unsafe "$1[\"cssRules\"]"
        ghcjs_dom_css_supports_rule_get_css_rules ::
        JSRef CSSSupportsRule -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.cssRules Mozilla CSSSupportsRule.cssRules documentation> 
cssSupportsRuleGetCssRules ::
                           (MonadIO m, IsCSSSupportsRule self) =>
                             self -> m (Maybe CSSRuleList)
cssSupportsRuleGetCssRules self
  = liftIO
      ((ghcjs_dom_css_supports_rule_get_css_rules
          (unCSSSupportsRule (toCSSSupportsRule self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"conditionText\"]"
        ghcjs_dom_css_supports_rule_get_condition_text ::
        JSRef CSSSupportsRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.conditionText Mozilla CSSSupportsRule.conditionText documentation> 
cssSupportsRuleGetConditionText ::
                                (MonadIO m, IsCSSSupportsRule self, FromJSString result) =>
                                  self -> m result
cssSupportsRuleGetConditionText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_css_supports_rule_get_condition_text
            (unCSSSupportsRule (toCSSSupportsRule self))))
#else
module GHCJS.DOM.CSSSupportsRule (
  ) where
#endif
