{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCStatsCallback
       (newRTCStatsCallback, newRTCStatsCallbackSync,
        newRTCStatsCallbackAsync, RTCStatsCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallback ::
                    (MonadIO m) =>
                      (Maybe RTCStatsResponse -> IO ()) -> m RTCStatsCallback
newRTCStatsCallback callback
  = liftIO
      (RTCStatsCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ response ->
              fromJSValUnchecked response >>= \ response' -> callback response'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallbackSync ::
                        (MonadIO m) =>
                          (Maybe RTCStatsResponse -> IO ()) -> m RTCStatsCallback
newRTCStatsCallbackSync callback
  = liftIO
      (RTCStatsCallback <$>
         syncCallback1 ContinueAsync
           (\ response ->
              fromJSValUnchecked response >>= \ response' -> callback response'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation> 
newRTCStatsCallbackAsync ::
                         (MonadIO m) =>
                           (Maybe RTCStatsResponse -> IO ()) -> m RTCStatsCallback
newRTCStatsCallbackAsync callback
  = liftIO
      (RTCStatsCallback <$>
         asyncCallback1
           (\ response ->
              fromJSValUnchecked response >>= \ response' -> callback response'))