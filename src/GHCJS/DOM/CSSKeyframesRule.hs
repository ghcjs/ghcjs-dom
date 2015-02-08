{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSKeyframesRule
       (ghcjs_dom_css_keyframes_rule_insert_rule,
        cssKeyframesRuleInsertRule,
        ghcjs_dom_css_keyframes_rule_append_rule,
        cssKeyframesRuleAppendRule,
        ghcjs_dom_css_keyframes_rule_delete_rule,
        cssKeyframesRuleDeleteRule, ghcjs_dom_css_keyframes_rule_find_rule,
        cssKeyframesRuleFindRule, ghcjs_dom_css_keyframes_rule_get,
        cssKeyframesRule_get, ghcjs_dom_css_keyframes_rule_set_name,
        cssKeyframesRuleSetName, ghcjs_dom_css_keyframes_rule_get_name,
        cssKeyframesRuleGetName,
        ghcjs_dom_css_keyframes_rule_get_css_rules,
        cssKeyframesRuleGetCssRules, CSSKeyframesRule, IsCSSKeyframesRule,
        castToCSSKeyframesRule, gTypeCSSKeyframesRule, toCSSKeyframesRule)
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

 
foreign import javascript unsafe "$1[\"insertRule\"]($2)"
        ghcjs_dom_css_keyframes_rule_insert_rule ::
        JSRef CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.insertRule Mozilla CSSKeyframesRule.insertRule documentation> 
cssKeyframesRuleInsertRule ::
                           (MonadIO m, IsCSSKeyframesRule self, ToJSString rule) =>
                             self -> rule -> m ()
cssKeyframesRuleInsertRule self rule
  = liftIO
      (ghcjs_dom_css_keyframes_rule_insert_rule
         (unCSSKeyframesRule (toCSSKeyframesRule self))
         (toJSString rule))
 
foreign import javascript unsafe "$1[\"appendRule\"]($2)"
        ghcjs_dom_css_keyframes_rule_append_rule ::
        JSRef CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.appendRule Mozilla CSSKeyframesRule.appendRule documentation> 
cssKeyframesRuleAppendRule ::
                           (MonadIO m, IsCSSKeyframesRule self, ToJSString rule) =>
                             self -> rule -> m ()
cssKeyframesRuleAppendRule self rule
  = liftIO
      (ghcjs_dom_css_keyframes_rule_append_rule
         (unCSSKeyframesRule (toCSSKeyframesRule self))
         (toJSString rule))
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        ghcjs_dom_css_keyframes_rule_delete_rule ::
        JSRef CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.deleteRule Mozilla CSSKeyframesRule.deleteRule documentation> 
cssKeyframesRuleDeleteRule ::
                           (MonadIO m, IsCSSKeyframesRule self, ToJSString key) =>
                             self -> key -> m ()
cssKeyframesRuleDeleteRule self key
  = liftIO
      (ghcjs_dom_css_keyframes_rule_delete_rule
         (unCSSKeyframesRule (toCSSKeyframesRule self))
         (toJSString key))
 
foreign import javascript unsafe "$1[\"findRule\"]($2)"
        ghcjs_dom_css_keyframes_rule_find_rule ::
        JSRef CSSKeyframesRule -> JSString -> IO (JSRef CSSKeyframeRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.findRule Mozilla CSSKeyframesRule.findRule documentation> 
cssKeyframesRuleFindRule ::
                         (MonadIO m, IsCSSKeyframesRule self, ToJSString key) =>
                           self -> key -> m (Maybe CSSKeyframeRule)
cssKeyframesRuleFindRule self key
  = liftIO
      ((ghcjs_dom_css_keyframes_rule_find_rule
          (unCSSKeyframesRule (toCSSKeyframesRule self))
          (toJSString key))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_css_keyframes_rule_get ::
        JSRef CSSKeyframesRule -> Word -> IO (JSRef CSSKeyframeRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule._get Mozilla CSSKeyframesRule._get documentation> 
cssKeyframesRule_get ::
                     (MonadIO m, IsCSSKeyframesRule self) =>
                       self -> Word -> m (Maybe CSSKeyframeRule)
cssKeyframesRule_get self index
  = liftIO
      ((ghcjs_dom_css_keyframes_rule_get
          (unCSSKeyframesRule (toCSSKeyframesRule self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_css_keyframes_rule_set_name ::
        JSRef CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
cssKeyframesRuleSetName ::
                        (MonadIO m, IsCSSKeyframesRule self, ToJSString val) =>
                          self -> val -> m ()
cssKeyframesRuleSetName self val
  = liftIO
      (ghcjs_dom_css_keyframes_rule_set_name
         (unCSSKeyframesRule (toCSSKeyframesRule self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_css_keyframes_rule_get_name ::
        JSRef CSSKeyframesRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
cssKeyframesRuleGetName ::
                        (MonadIO m, IsCSSKeyframesRule self, FromJSString result) =>
                          self -> m result
cssKeyframesRuleGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_css_keyframes_rule_get_name
            (unCSSKeyframesRule (toCSSKeyframesRule self))))
 
foreign import javascript unsafe "$1[\"cssRules\"]"
        ghcjs_dom_css_keyframes_rule_get_css_rules ::
        JSRef CSSKeyframesRule -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.cssRules Mozilla CSSKeyframesRule.cssRules documentation> 
cssKeyframesRuleGetCssRules ::
                            (MonadIO m, IsCSSKeyframesRule self) =>
                              self -> m (Maybe CSSRuleList)
cssKeyframesRuleGetCssRules self
  = liftIO
      ((ghcjs_dom_css_keyframes_rule_get_css_rules
          (unCSSKeyframesRule (toCSSKeyframesRule self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.CSSKeyframesRule (
  ) where
#endif
