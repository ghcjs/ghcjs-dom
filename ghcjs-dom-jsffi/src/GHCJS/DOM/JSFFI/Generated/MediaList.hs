{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaList
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_deleteMedium,
        deleteMedium, js_appendMedium, appendMedium, js_setMediaText,
        setMediaText, js_getMediaText, getMediaText, js_getLength,
        getLength, MediaList(..), gTypeMediaList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[$2]" js_item ::
        MediaList -> Word -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       MediaList -> Word -> m (Maybe result)
item self index
  = liftIO (fromMaybeJSString <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
item_ :: (MonadIO m) => MediaList -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack, FromJSString result) =>
             MediaList -> Word -> m result
itemUnsafe self index
  = liftIO
      ((fromMaybeJSString <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
itemUnchecked ::
              (MonadIO m, FromJSString result) => MediaList -> Word -> m result
itemUnchecked self index
  = liftIO (fromJust . fromMaybeJSString <$> (js_item self index))
 
foreign import javascript safe "$1[\"deleteMedium\"]($2)"
        js_deleteMedium :: MediaList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.deleteMedium Mozilla MediaList.deleteMedium documentation> 
deleteMedium ::
             (MonadIO m, ToJSString oldMedium) => MediaList -> oldMedium -> m ()
deleteMedium self oldMedium
  = liftIO (js_deleteMedium self (toJSString oldMedium))
 
foreign import javascript safe "$1[\"appendMedium\"]($2)"
        js_appendMedium :: MediaList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.appendMedium Mozilla MediaList.appendMedium documentation> 
appendMedium ::
             (MonadIO m, ToJSString newMedium) => MediaList -> newMedium -> m ()
appendMedium self newMedium
  = liftIO (js_appendMedium self (toJSString newMedium))
 
foreign import javascript safe "$1[\"mediaText\"] = $2;"
        js_setMediaText :: MediaList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
setMediaText ::
             (MonadIO m, ToJSString val) => MediaList -> val -> m ()
setMediaText self val
  = liftIO (js_setMediaText self (toJSString val))
 
foreign import javascript unsafe "$1[\"mediaText\"]"
        js_getMediaText :: MediaList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
getMediaText ::
             (MonadIO m, FromJSString result) => MediaList -> m result
getMediaText self
  = liftIO (fromJSString <$> (js_getMediaText self))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        MediaList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.length Mozilla MediaList.length documentation> 
getLength :: (MonadIO m) => MediaList -> m Word
getLength self = liftIO (js_getLength self)