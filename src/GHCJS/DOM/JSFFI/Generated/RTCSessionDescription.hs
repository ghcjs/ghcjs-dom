{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCSessionDescription
       (js_newRTCSessionDescription, newRTCSessionDescription, js_setType,
        setType, js_getType, getType, js_setSdp, setSdp, js_getSdp, getSdp,
        RTCSessionDescription, castToRTCSessionDescription,
        gTypeRTCSessionDescription)
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
 
foreign import javascript unsafe
        "new window[\"RTCSessionDescription\"]($1)"
        js_newRTCSessionDescription ::
        Nullable Dictionary -> IO RTCSessionDescription

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation> 
newRTCSessionDescription ::
                         (MonadIO m, IsDictionary dictionary) =>
                           Maybe dictionary -> m RTCSessionDescription
newRTCSessionDescription dictionary
  = liftIO
      (js_newRTCSessionDescription
         (maybeToNullable (fmap toDictionary dictionary)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        RTCSessionDescription -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.type Mozilla RTCSessionDescription.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => RTCSessionDescription -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        RTCSessionDescription -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.type Mozilla RTCSessionDescription.type documentation> 
getType ::
        (MonadIO m, FromJSString result) =>
          RTCSessionDescription -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"sdp\"] = $2;" js_setSdp ::
        RTCSessionDescription -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
setSdp ::
       (MonadIO m, ToJSString val) => RTCSessionDescription -> val -> m ()
setSdp self val = liftIO (js_setSdp (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"sdp\"]" js_getSdp ::
        RTCSessionDescription -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
getSdp ::
       (MonadIO m, FromJSString result) =>
         RTCSessionDescription -> m result
getSdp self = liftIO (fromJSString <$> (js_getSdp (self)))