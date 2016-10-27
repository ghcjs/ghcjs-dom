{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSMediaRule
       (js_insertRule, insertRule, insertRule_, js_deleteRule, deleteRule,
        js_getMedia, getMedia, getMediaUnsafe, getMediaUnchecked,
        js_getCssRules, getCssRules, getCssRulesUnsafe,
        getCssRulesUnchecked, CSSMediaRule(..), gTypeCSSMediaRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        js_insertRule :: CSSMediaRule -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) =>
             CSSMediaRule -> rule -> Word -> m Word
insertRule self rule index
  = liftIO (js_insertRule (self) (toJSString rule) index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule_ ::
            (MonadIO m, ToJSString rule) =>
              CSSMediaRule -> rule -> Word -> m ()
insertRule_ self rule index
  = liftIO (void (js_insertRule (self) (toJSString rule) index))
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: CSSMediaRule -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.deleteRule Mozilla CSSMediaRule.deleteRule documentation> 
deleteRule :: (MonadIO m) => CSSMediaRule -> Word -> m ()
deleteRule self index = liftIO (js_deleteRule (self) index)
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        CSSMediaRule -> IO (Nullable MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
getMedia :: (MonadIO m) => CSSMediaRule -> m (Maybe MediaList)
getMedia self = liftIO (nullableToMaybe <$> (js_getMedia (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
getMediaUnsafe ::
               (MonadIO m, HasCallStack) => CSSMediaRule -> m MediaList
getMediaUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMedia (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
getMediaUnchecked :: (MonadIO m) => CSSMediaRule -> m MediaList
getMediaUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getMedia (self)))
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: CSSMediaRule -> IO (Nullable CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
getCssRules :: (MonadIO m) => CSSMediaRule -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO (nullableToMaybe <$> (js_getCssRules (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
getCssRulesUnsafe ::
                  (MonadIO m, HasCallStack) => CSSMediaRule -> m CSSRuleList
getCssRulesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCssRules (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
getCssRulesUnchecked ::
                     (MonadIO m) => CSSMediaRule -> m CSSRuleList
getCssRulesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCssRules (self)))