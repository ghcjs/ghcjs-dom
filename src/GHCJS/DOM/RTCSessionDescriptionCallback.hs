{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCSessionDescriptionCallback
       (newRTCSessionDescriptionCallbackSync,
        newRTCSessionDescriptionCallbackSync',
        newRTCSessionDescriptionCallbackAsync,
        newRTCSessionDescriptionCallbackAsync',
        RTCSessionDescriptionCallback, castToRTCSessionDescriptionCallback,
        gTypeRTCSessionDescriptionCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackSync ::
                                     (MonadIO m) =>
                                       (Maybe RTCSessionDescription -> IO Bool) ->
                                         m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackSync callback
  = liftIO
      (RTCSessionDescriptionCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackSync' ::
                                      (MonadIO m) =>
                                        ForeignRetention ->
                                          Bool ->
                                            (Maybe RTCSessionDescription -> IO Bool) ->
                                              m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackSync' retention continueAsync
  callback
  = liftIO
      (RTCSessionDescriptionCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackAsync ::
                                      (MonadIO m) =>
                                        (Maybe RTCSessionDescription -> IO Bool) ->
                                          m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackAsync callback
  = liftIO
      (RTCSessionDescriptionCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackAsync' ::
                                       (MonadIO m) =>
                                         ForeignRetention ->
                                           (Maybe RTCSessionDescription -> IO Bool) ->
                                             m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackAsync' retention callback
  = liftIO
      (RTCSessionDescriptionCallback . castRef <$>
         asyncCallback1 retention
           (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))
#else
module GHCJS.DOM.RTCSessionDescriptionCallback (
  ) where
#endif
