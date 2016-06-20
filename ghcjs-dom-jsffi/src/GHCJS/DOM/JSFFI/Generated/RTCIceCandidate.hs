{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCIceCandidate
       (js_newRTCIceCandidate, newRTCIceCandidate, js_getCandidate,
        getCandidate, js_getSdpMid, getSdpMid, js_getSdpMLineIndex,
        getSdpMLineIndex, RTCIceCandidate, castToRTCIceCandidate,
        gTypeRTCIceCandidate)
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
        "new window[\"RTCIceCandidate\"]($1)" js_newRTCIceCandidate ::
        Nullable Dictionary -> IO RTCIceCandidate

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation> 
newRTCIceCandidate ::
                   (MonadIO m, IsDictionary dictionary) =>
                     Maybe dictionary -> m RTCIceCandidate
newRTCIceCandidate dictionary
  = liftIO
      (js_newRTCIceCandidate
         (maybeToNullable (fmap toDictionary dictionary)))
 
foreign import javascript unsafe "$1[\"candidate\"]"
        js_getCandidate :: RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.candidate Mozilla RTCIceCandidate.candidate documentation> 
getCandidate ::
             (MonadIO m, FromJSString result) => RTCIceCandidate -> m result
getCandidate self
  = liftIO (fromJSString <$> (js_getCandidate (self)))
 
foreign import javascript unsafe "$1[\"sdpMid\"]" js_getSdpMid ::
        RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMid ::
          (MonadIO m, FromJSString result) => RTCIceCandidate -> m result
getSdpMid self = liftIO (fromJSString <$> (js_getSdpMid (self)))
 
foreign import javascript unsafe "$1[\"sdpMLineIndex\"]"
        js_getSdpMLineIndex :: RTCIceCandidate -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndex :: (MonadIO m) => RTCIceCandidate -> m Word
getSdpMLineIndex self = liftIO (js_getSdpMLineIndex (self))