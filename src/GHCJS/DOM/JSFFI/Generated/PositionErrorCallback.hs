{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PositionErrorCallback
       (newPositionErrorCallback, newPositionErrorCallbackSync,
        newPositionErrorCallbackAsync, PositionErrorCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionErrorCallback Mozilla PositionErrorCallback documentation> 
newPositionErrorCallback ::
                         (MonadIO m) =>
                           (Maybe PositionError -> IO ()) -> m PositionErrorCallback
newPositionErrorCallback callback
  = liftIO
      (PositionErrorCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionErrorCallback Mozilla PositionErrorCallback documentation> 
newPositionErrorCallbackSync ::
                             (MonadIO m) =>
                               (Maybe PositionError -> IO ()) -> m PositionErrorCallback
newPositionErrorCallbackSync callback
  = liftIO
      (PositionErrorCallback <$>
         syncCallback1 ContinueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionErrorCallback Mozilla PositionErrorCallback documentation> 
newPositionErrorCallbackAsync ::
                              (MonadIO m) =>
                                (Maybe PositionError -> IO ()) -> m PositionErrorCallback
newPositionErrorCallbackAsync callback
  = liftIO
      (PositionErrorCallback <$>
         asyncCallback1
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))