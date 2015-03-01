{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSSupportsRule
       (js_insertRule, insertRule, js_deleteRule, deleteRule,
        js_getCssRules, getCssRules, js_getConditionText, getConditionText,
        CSSSupportsRule, castToCSSSupportsRule, gTypeCSSSupportsRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        js_insertRule ::
        JSRef CSSSupportsRule -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.insertRule Mozilla CSSSupportsRule.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) =>
             CSSSupportsRule -> rule -> Word -> m Word
insertRule self rule index
  = liftIO
      (js_insertRule (unCSSSupportsRule self) (toJSString rule) index)
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: JSRef CSSSupportsRule -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.deleteRule Mozilla CSSSupportsRule.deleteRule documentation> 
deleteRule :: (MonadIO m) => CSSSupportsRule -> Word -> m ()
deleteRule self index
  = liftIO (js_deleteRule (unCSSSupportsRule self) index)
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: JSRef CSSSupportsRule -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.cssRules Mozilla CSSSupportsRule.cssRules documentation> 
getCssRules ::
            (MonadIO m) => CSSSupportsRule -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO ((js_getCssRules (unCSSSupportsRule self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"conditionText\"]"
        js_getConditionText :: JSRef CSSSupportsRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.conditionText Mozilla CSSSupportsRule.conditionText documentation> 
getConditionText ::
                 (MonadIO m, FromJSString result) => CSSSupportsRule -> m result
getConditionText self
  = liftIO
      (fromJSString <$> (js_getConditionText (unCSSSupportsRule self)))
#else
module GHCJS.DOM.CSSSupportsRule (
  ) where
#endif
