{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCStatsResponse
       (js_result, result, js_namedItem, namedItem, RTCStatsResponse,
        castToRTCStatsResponse, gTypeRTCStatsResponse)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"result\"]()" js_result ::
        JSRef RTCStatsResponse -> IO (JSRef [Maybe RTCStatsReport])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.result Mozilla RTCStatsResponse.result documentation> 
result ::
       (MonadIO m) => RTCStatsResponse -> m [Maybe RTCStatsReport]
result self
  = liftIO
      ((js_result (unRTCStatsResponse self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef RTCStatsResponse -> JSString -> IO (JSRef RTCStatsReport)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.namedItem Mozilla RTCStatsResponse.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            RTCStatsResponse -> name -> m (Maybe RTCStatsReport)
namedItem self name
  = liftIO
      ((js_namedItem (unRTCStatsResponse self) (toJSString name)) >>=
         fromJSRef)