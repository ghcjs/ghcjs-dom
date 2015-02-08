{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSMediaRule
       (ghcjs_dom_css_media_rule_insert_rule, cssMediaRuleInsertRule,
        ghcjs_dom_css_media_rule_delete_rule, cssMediaRuleDeleteRule,
        ghcjs_dom_css_media_rule_get_media, cssMediaRuleGetMedia,
        ghcjs_dom_css_media_rule_get_css_rules, cssMediaRuleGetCssRules,
        CSSMediaRule, IsCSSMediaRule, castToCSSMediaRule,
        gTypeCSSMediaRule, toCSSMediaRule)
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
        ghcjs_dom_css_media_rule_insert_rule ::
        JSRef CSSMediaRule -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
cssMediaRuleInsertRule ::
                       (MonadIO m, IsCSSMediaRule self, ToJSString rule) =>
                         self -> rule -> Word -> m Word
cssMediaRuleInsertRule self rule index
  = liftIO
      (ghcjs_dom_css_media_rule_insert_rule
         (unCSSMediaRule (toCSSMediaRule self))
         (toJSString rule)
         index)
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        ghcjs_dom_css_media_rule_delete_rule ::
        JSRef CSSMediaRule -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.deleteRule Mozilla CSSMediaRule.deleteRule documentation> 
cssMediaRuleDeleteRule ::
                       (MonadIO m, IsCSSMediaRule self) => self -> Word -> m ()
cssMediaRuleDeleteRule self index
  = liftIO
      (ghcjs_dom_css_media_rule_delete_rule
         (unCSSMediaRule (toCSSMediaRule self))
         index)
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_css_media_rule_get_media ::
        JSRef CSSMediaRule -> IO (JSRef MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
cssMediaRuleGetMedia ::
                     (MonadIO m, IsCSSMediaRule self) => self -> m (Maybe MediaList)
cssMediaRuleGetMedia self
  = liftIO
      ((ghcjs_dom_css_media_rule_get_media
          (unCSSMediaRule (toCSSMediaRule self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"cssRules\"]"
        ghcjs_dom_css_media_rule_get_css_rules ::
        JSRef CSSMediaRule -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
cssMediaRuleGetCssRules ::
                        (MonadIO m, IsCSSMediaRule self) => self -> m (Maybe CSSRuleList)
cssMediaRuleGetCssRules self
  = liftIO
      ((ghcjs_dom_css_media_rule_get_css_rules
          (unCSSMediaRule (toCSSMediaRule self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.CSSMediaRule (
  ) where
#endif
