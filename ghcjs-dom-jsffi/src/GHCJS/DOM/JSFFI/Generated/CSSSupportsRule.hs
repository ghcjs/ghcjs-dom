{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSSupportsRule
       (js_insertRule, insertRule, js_deleteRule, deleteRule,
        js_getCssRules, getCssRules, js_getConditionText, getConditionText,
        CSSSupportsRule, castToCSSSupportsRule, gTypeCSSSupportsRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        js_insertRule :: CSSSupportsRule -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.insertRule Mozilla CSSSupportsRule.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) =>
             CSSSupportsRule -> rule -> Word -> m Word
insertRule self rule index
  = liftIO (js_insertRule (self) (toJSString rule) index)
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: CSSSupportsRule -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.deleteRule Mozilla CSSSupportsRule.deleteRule documentation> 
deleteRule :: (MonadIO m) => CSSSupportsRule -> Word -> m ()
deleteRule self index = liftIO (js_deleteRule (self) index)
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: CSSSupportsRule -> IO (Nullable CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.cssRules Mozilla CSSSupportsRule.cssRules documentation> 
getCssRules ::
            (MonadIO m) => CSSSupportsRule -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO (nullableToMaybe <$> (js_getCssRules (self)))
 
foreign import javascript unsafe "$1[\"conditionText\"]"
        js_getConditionText :: CSSSupportsRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule.conditionText Mozilla CSSSupportsRule.conditionText documentation> 
getConditionText ::
                 (MonadIO m, FromJSString result) => CSSSupportsRule -> m result
getConditionText self
  = liftIO (fromJSString <$> (js_getConditionText (self)))