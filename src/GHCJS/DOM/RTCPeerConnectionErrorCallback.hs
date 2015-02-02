{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCPeerConnectionErrorCallback
       (rtcPeerConnectionErrorCallbackNewSync,
        rtcPeerConnectionErrorCallbackNewAsync,
        RTCPeerConnectionErrorCallback, IsRTCPeerConnectionErrorCallback,
        castToRTCPeerConnectionErrorCallback,
        gTypeRTCPeerConnectionErrorCallback,
        toRTCPeerConnectionErrorCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
rtcPeerConnectionErrorCallbackNewSync ::
                                        (Maybe DOMError -> IO Bool) ->
                                          IO RTCPeerConnectionErrorCallback
rtcPeerConnectionErrorCallbackNewSync callback
  = RTCPeerConnectionErrorCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
rtcPeerConnectionErrorCallbackNewSync' ::
                                         ForeignRetention ->
                                           Bool ->
                                             (Maybe DOMError -> IO Bool) ->
                                               IO RTCPeerConnectionErrorCallback
rtcPeerConnectionErrorCallbackNewSync' retention continueAsync
  callback
  = RTCPeerConnectionErrorCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
rtcPeerConnectionErrorCallbackNewAsync ::
                                         (Maybe DOMError -> IO Bool) ->
                                           IO RTCPeerConnectionErrorCallback
rtcPeerConnectionErrorCallbackNewAsync callback
  = RTCPeerConnectionErrorCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
rtcPeerConnectionErrorCallbackNewAsync' ::
                                          ForeignRetention ->
                                            (Maybe DOMError -> IO Bool) ->
                                              IO RTCPeerConnectionErrorCallback
rtcPeerConnectionErrorCallbackNewAsync' retention callback
  = RTCPeerConnectionErrorCallback . castRef <$>
      asyncCallback1 retention
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')
#else
module GHCJS.DOM.RTCPeerConnectionErrorCallback (
  ) where
#endif
