{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaDeviceInfo
       (js_newMediaDeviceInfo, newMediaDeviceInfo, js_getDeviceId,
        getDeviceId, js_getKind, getKind, js_getLabel, getLabel,
        js_getGroupId, getGroupId, MediaDeviceInfo(..),
        gTypeMediaDeviceInfo)
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
 
foreign import javascript unsafe
        "new window[\"MediaDeviceInfo\"]($1,\n$2, $3, $4)"
        js_newMediaDeviceInfo ::
        JSString -> JSString -> JSString -> JSVal -> IO MediaDeviceInfo

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo Mozilla MediaDeviceInfo documentation> 
newMediaDeviceInfo ::
                   (MonadIO m, ToJSString deviceId, ToJSString label,
                    ToJSString groupId) =>
                     deviceId ->
                       label -> groupId -> MediaDeviceKind -> m MediaDeviceInfo
newMediaDeviceInfo deviceId label groupId kind
  = liftIO
      (js_newMediaDeviceInfo (toJSString deviceId) (toJSString label)
         (toJSString groupId)
         (pToJSVal kind))
 
foreign import javascript unsafe "$1[\"deviceId\"]" js_getDeviceId
        :: MediaDeviceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo.deviceId Mozilla MediaDeviceInfo.deviceId documentation> 
getDeviceId ::
            (MonadIO m, FromJSString result) => MediaDeviceInfo -> m result
getDeviceId self = liftIO (fromJSString <$> (js_getDeviceId self))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        MediaDeviceInfo -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo.kind Mozilla MediaDeviceInfo.kind documentation> 
getKind :: (MonadIO m) => MediaDeviceInfo -> m MediaDeviceKind
getKind self = liftIO ((js_getKind self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        MediaDeviceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo.label Mozilla MediaDeviceInfo.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => MediaDeviceInfo -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel self))
 
foreign import javascript unsafe "$1[\"groupId\"]" js_getGroupId ::
        MediaDeviceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo.groupId Mozilla MediaDeviceInfo.groupId documentation> 
getGroupId ::
           (MonadIO m, FromJSString result) => MediaDeviceInfo -> m result
getGroupId self = liftIO (fromJSString <$> (js_getGroupId self))