{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCStatsCallback
       (newRTCStatsCallback, newRTCStatsCallbackSync,
        newRTCStatsCallbackAsync, RTCStatsCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

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