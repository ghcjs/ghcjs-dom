{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Storage
       (js_key, key, key_, keyUnsafe, keyUnchecked, js_getItem, getItem,
        getItem_, getItemUnsafe, getItemUnchecked, js_setItem, setItem,
        js_removeItem, removeItem, js_clear, clear, js_getLength,
        getLength, Storage(..), gTypeStorage)
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
 
foreign import javascript safe "$1[\"key\"]($2)" js_key ::
        Storage -> Word -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
key ::
    (MonadIO m, FromJSString result) =>
      Storage -> Word -> m (Maybe result)
key self index = liftIO (fromMaybeJSString <$> (js_key self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
key_ :: (MonadIO m) => Storage -> Word -> m ()
key_ self index = liftIO (void (js_key self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
keyUnsafe ::
          (MonadIO m, HasCallStack, FromJSString result) =>
            Storage -> Word -> m result
keyUnsafe self index
  = liftIO
      ((fromMaybeJSString <$> (js_key self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
keyUnchecked ::
             (MonadIO m, FromJSString result) => Storage -> Word -> m result
keyUnchecked self index
  = liftIO (fromJust . fromMaybeJSString <$> (js_key self index))
 
foreign import javascript safe "$1[$2]" js_getItem ::
        Storage -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItem ::
        (MonadIO m, ToJSString key, FromJSString result) =>
          Storage -> key -> m (Maybe result)
getItem self key
  = liftIO (fromMaybeJSString <$> (js_getItem self (toJSString key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItem_ :: (MonadIO m, ToJSString key) => Storage -> key -> m ()
getItem_ self key
  = liftIO (void (js_getItem self (toJSString key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItemUnsafe ::
              (MonadIO m, ToJSString key, HasCallStack, FromJSString result) =>
                Storage -> key -> m result
getItemUnsafe self key
  = liftIO
      ((fromMaybeJSString <$> (js_getItem self (toJSString key))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItemUnchecked ::
                 (MonadIO m, ToJSString key, FromJSString result) =>
                   Storage -> key -> m result
getItemUnchecked self key
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getItem self (toJSString key)))
 
foreign import javascript safe "$1[\"setItem\"]($2, $3)" js_setItem
        :: Storage -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.setItem Mozilla Storage.setItem documentation> 
setItem ::
        (MonadIO m, ToJSString key, ToJSString data') =>
          Storage -> key -> data' -> m ()
setItem self key data'
  = liftIO (js_setItem self (toJSString key) (toJSString data'))
 
foreign import javascript safe "$1[\"removeItem\"]($2)"
        js_removeItem :: Storage -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.removeItem Mozilla Storage.removeItem documentation> 
removeItem :: (MonadIO m, ToJSString key) => Storage -> key -> m ()
removeItem self key = liftIO (js_removeItem self (toJSString key))
 
foreign import javascript safe "$1[\"clear\"]()" js_clear ::
        Storage -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.clear Mozilla Storage.clear documentation> 
clear :: (MonadIO m) => Storage -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript safe "$1[\"length\"]" js_getLength ::
        Storage -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.length Mozilla Storage.length documentation> 
getLength :: (MonadIO m) => Storage -> m Word
getLength self = liftIO (js_getLength self)