{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCStatsCallback
       (newRTCStatsCallbackSync, newRTCStatsCallbackSync',
        newRTCStatsCallbackAsync, newRTCStatsCallbackAsync',
        RTCStatsCallback, castToRTCStatsCallback, gTypeRTCStatsCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallbackSync ::
                        (MonadIO m) =>
                          (Maybe RTCStatsResponse -> IO Bool) -> m RTCStatsCallback
newRTCStatsCallbackSync callback
  = liftIO
      (RTCStatsCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ response ->
              fromJSRefUnchecked response >>= \ response' -> callback response'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallbackSync' ::
                         (MonadIO m) =>
                           ForeignRetention ->
                             Bool -> (Maybe RTCStatsResponse -> IO Bool) -> m RTCStatsCallback
newRTCStatsCallbackSync' retention continueAsync callback
  = liftIO
      (RTCStatsCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ response ->
              fromJSRefUnchecked response >>= \ response' -> callback response'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallbackAsync ::
                         (MonadIO m) =>
                           (Maybe RTCStatsResponse -> IO Bool) -> m RTCStatsCallback
newRTCStatsCallbackAsync callback
  = liftIO
      (RTCStatsCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ response ->
              fromJSRefUnchecked response >>= \ response' -> callback response'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallbackAsync' ::
                          (MonadIO m) =>
                            ForeignRetention ->
                              (Maybe RTCStatsResponse -> IO Bool) -> m RTCStatsCallback
newRTCStatsCallbackAsync' retention callback
  = liftIO
      (RTCStatsCallback . castRef <$>
         asyncCallback1 retention
           (\ response ->
              fromJSRefUnchecked response >>= \ response' -> callback response'))
#else
module GHCJS.DOM.RTCStatsCallback (
  ) where
#endif
