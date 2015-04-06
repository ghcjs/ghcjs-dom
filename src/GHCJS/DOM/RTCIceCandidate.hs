{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCIceCandidate
       (js_newRTCIceCandidate, newRTCIceCandidate, js_getCandidate,
        getCandidate, js_getSdpMid, getSdpMid, js_getSdpMLineIndex,
        getSdpMLineIndex, RTCIceCandidate, castToRTCIceCandidate,
        gTypeRTCIceCandidate)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"RTCIceCandidate\"]($1)" js_newRTCIceCandidate ::
        JSRef Dictionary -> IO (JSRef RTCIceCandidate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation> 
newRTCIceCandidate ::
                   (MonadIO m, IsDictionary dictionary) =>
                     Maybe dictionary -> m RTCIceCandidate
newRTCIceCandidate dictionary
  = liftIO
      (js_newRTCIceCandidate
         (maybe jsNull (unDictionary . toDictionary) dictionary)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"candidate\"]"
        js_getCandidate :: JSRef RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.candidate Mozilla RTCIceCandidate.candidate documentation> 
getCandidate ::
             (MonadIO m, FromJSString result) => RTCIceCandidate -> m result
getCandidate self
  = liftIO
      (fromJSString <$> (js_getCandidate (unRTCIceCandidate self)))
 
foreign import javascript unsafe "$1[\"sdpMid\"]" js_getSdpMid ::
        JSRef RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMid ::
          (MonadIO m, FromJSString result) => RTCIceCandidate -> m result
getSdpMid self
  = liftIO (fromJSString <$> (js_getSdpMid (unRTCIceCandidate self)))
 
foreign import javascript unsafe "$1[\"sdpMLineIndex\"]"
        js_getSdpMLineIndex :: JSRef RTCIceCandidate -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndex :: (MonadIO m) => RTCIceCandidate -> m Word
getSdpMLineIndex self
  = liftIO (js_getSdpMLineIndex (unRTCIceCandidate self))
#else
module GHCJS.DOM.RTCIceCandidate (
  ) where
#endif
