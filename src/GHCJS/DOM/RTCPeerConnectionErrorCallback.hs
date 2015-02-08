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
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
rtcPeerConnectionErrorCallbackNewSync ::
                                      (MonadIO m) =>
                                        (Maybe DOMError -> IO Bool) ->
                                          m RTCPeerConnectionErrorCallback
rtcPeerConnectionErrorCallbackNewSync callback
  = liftIO
      (RTCPeerConnectionErrorCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
rtcPeerConnectionErrorCallbackNewSync' ::
                                       (MonadIO m) =>
                                         ForeignRetention ->
                                           Bool ->
                                             (Maybe DOMError -> IO Bool) ->
                                               m RTCPeerConnectionErrorCallback
rtcPeerConnectionErrorCallbackNewSync' retention continueAsync
  callback
  = liftIO
      (RTCPeerConnectionErrorCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
rtcPeerConnectionErrorCallbackNewAsync ::
                                       (MonadIO m) =>
                                         (Maybe DOMError -> IO Bool) ->
                                           m RTCPeerConnectionErrorCallback
rtcPeerConnectionErrorCallbackNewAsync callback
  = liftIO
      (RTCPeerConnectionErrorCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
rtcPeerConnectionErrorCallbackNewAsync' ::
                                        (MonadIO m) =>
                                          ForeignRetention ->
                                            (Maybe DOMError -> IO Bool) ->
                                              m RTCPeerConnectionErrorCallback
rtcPeerConnectionErrorCallbackNewAsync' retention callback
  = liftIO
      (RTCPeerConnectionErrorCallback . castRef <$>
         asyncCallback1 retention
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))
#else
module GHCJS.DOM.RTCPeerConnectionErrorCallback (
  ) where
#endif
