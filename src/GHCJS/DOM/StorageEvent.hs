{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageEvent
       (js_initStorageEvent, initStorageEvent, js_getKey, getKey,
        js_getOldValue, getOldValue, js_getNewValue, getNewValue,
        js_getUrl, getUrl, js_getStorageArea, getStorageArea, StorageEvent,
        castToStorageEvent, gTypeStorageEvent)
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

 
foreign import javascript unsafe
        "$1[\"initStorageEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initStorageEvent ::
        JSRef StorageEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSString ->
                  JSString -> JSString -> JSString -> JSRef Storage -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.initStorageEvent Mozilla StorageEvent.initStorageEvent documentation> 
initStorageEvent ::
                 (MonadIO m, ToJSString typeArg, ToJSString keyArg,
                  ToJSString oldValueArg, ToJSString newValueArg,
                  ToJSString urlArg) =>
                   StorageEvent ->
                     typeArg ->
                       Bool ->
                         Bool ->
                           keyArg ->
                             oldValueArg -> newValueArg -> urlArg -> Maybe Storage -> m ()
initStorageEvent self typeArg canBubbleArg cancelableArg keyArg
  oldValueArg newValueArg urlArg storageAreaArg
  = liftIO
      (js_initStorageEvent (unStorageEvent self) (toJSString typeArg)
         canBubbleArg
         cancelableArg
         (toJSString keyArg)
         (toJSString oldValueArg)
         (toJSString newValueArg)
         (toJSString urlArg)
         (maybe jsNull unStorage storageAreaArg))
 
foreign import javascript unsafe "$1[\"key\"]" js_getKey ::
        JSRef StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.key Mozilla StorageEvent.key documentation> 
getKey ::
       (MonadIO m, FromJSString result) => StorageEvent -> m result
getKey self
  = liftIO (fromJSString <$> (js_getKey (unStorageEvent self)))
 
foreign import javascript unsafe "$1[\"oldValue\"]" js_getOldValue
        :: JSRef StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.oldValue Mozilla StorageEvent.oldValue documentation> 
getOldValue ::
            (MonadIO m, FromJSString result) => StorageEvent -> m result
getOldValue self
  = liftIO (fromJSString <$> (js_getOldValue (unStorageEvent self)))
 
foreign import javascript unsafe "$1[\"newValue\"]" js_getNewValue
        :: JSRef StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.newValue Mozilla StorageEvent.newValue documentation> 
getNewValue ::
            (MonadIO m, FromJSString result) => StorageEvent -> m result
getNewValue self
  = liftIO (fromJSString <$> (js_getNewValue (unStorageEvent self)))
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        JSRef StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.url Mozilla StorageEvent.url documentation> 
getUrl ::
       (MonadIO m, FromJSString result) => StorageEvent -> m result
getUrl self
  = liftIO (fromJSString <$> (js_getUrl (unStorageEvent self)))
 
foreign import javascript unsafe "$1[\"storageArea\"]"
        js_getStorageArea :: JSRef StorageEvent -> IO (JSRef Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.storageArea Mozilla StorageEvent.storageArea documentation> 
getStorageArea :: (MonadIO m) => StorageEvent -> m (Maybe Storage)
getStorageArea self
  = liftIO ((js_getStorageArea (unStorageEvent self)) >>= fromJSRef)
#else
module GHCJS.DOM.StorageEvent (
  ) where
#endif
