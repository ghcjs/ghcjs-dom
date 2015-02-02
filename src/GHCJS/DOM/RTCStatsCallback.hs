{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCStatsCallback
       (rtcStatsCallbackNewSync, rtcStatsCallbackNewAsync,
        RTCStatsCallback, IsRTCStatsCallback, castToRTCStatsCallback,
        gTypeRTCStatsCallback, toRTCStatsCallback)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
rtcStatsCallbackNewSync ::
                          (Maybe RTCStatsResponse -> IO Bool) -> IO RTCStatsCallback
rtcStatsCallbackNewSync callback
  = RTCStatsCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ response ->
           fromJSRefUnchecked response >>= \ response' -> callback response')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
rtcStatsCallbackNewSync' ::
                           ForeignRetention ->
                             Bool -> (Maybe RTCStatsResponse -> IO Bool) -> IO RTCStatsCallback
rtcStatsCallbackNewSync' retention continueAsync callback
  = RTCStatsCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ response ->
           fromJSRefUnchecked response >>= \ response' -> callback response')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
rtcStatsCallbackNewAsync ::
                           (Maybe RTCStatsResponse -> IO Bool) -> IO RTCStatsCallback
rtcStatsCallbackNewAsync callback
  = RTCStatsCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ response ->
           fromJSRefUnchecked response >>= \ response' -> callback response')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
rtcStatsCallbackNewAsync' ::
                            ForeignRetention ->
                              (Maybe RTCStatsResponse -> IO Bool) -> IO RTCStatsCallback
rtcStatsCallbackNewAsync' retention callback
  = RTCStatsCallback . castRef <$>
      asyncCallback1 retention
        (\ response ->
           fromJSRefUnchecked response >>= \ response' -> callback response')
#else
module GHCJS.DOM.RTCStatsCallback (
  ) where
#endif
