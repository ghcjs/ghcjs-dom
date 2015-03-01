{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCSessionDescription
       (js_newRTCSessionDescription, newRTCSessionDescription, js_setSdp,
        setSdp, js_getSdp, getSdp, RTCSessionDescription,
        castToRTCSessionDescription, gTypeRTCSessionDescription)
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
        "new window[\"RTCSessionDescription\"]($1)"
        js_newRTCSessionDescription ::
        JSRef Dictionary -> IO (JSRef RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation> 
newRTCSessionDescription ::
                         (MonadIO m, IsDictionary dictionary) =>
                           Maybe dictionary -> m RTCSessionDescription
newRTCSessionDescription dictionary
  = liftIO
      (js_newRTCSessionDescription
         (maybe jsNull (unDictionary . toDictionary) dictionary)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"sdp\"] = $2;" js_setSdp ::
        JSRef RTCSessionDescription -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
setSdp ::
       (MonadIO m, ToJSString val) => RTCSessionDescription -> val -> m ()
setSdp self val
  = liftIO
      (js_setSdp (unRTCSessionDescription self) (toJSString val))
 
foreign import javascript unsafe "$1[\"sdp\"]" js_getSdp ::
        JSRef RTCSessionDescription -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
getSdp ::
       (MonadIO m, FromJSString result) =>
         RTCSessionDescription -> m result
getSdp self
  = liftIO
      (fromJSString <$> (js_getSdp (unRTCSessionDescription self)))
#else
module GHCJS.DOM.RTCSessionDescription (
  ) where
#endif
