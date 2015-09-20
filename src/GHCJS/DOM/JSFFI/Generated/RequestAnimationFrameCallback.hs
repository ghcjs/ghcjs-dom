{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RequestAnimationFrameCallback
       (newRequestAnimationFrameCallback,
        newRequestAnimationFrameCallbackSync,
        newRequestAnimationFrameCallbackAsync,
        RequestAnimationFrameCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallback ::
                                 (MonadIO m) => (Double -> IO ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallback callback
  = liftIO
      (RequestAnimationFrameCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ highResTime ->
              fromJSRefUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackSync ::
                                     (MonadIO m) =>
                                       (Double -> IO ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackSync callback
  = liftIO
      (RequestAnimationFrameCallback <$>
         syncCallback1 ContinueAsync
           (\ highResTime ->
              fromJSRefUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackAsync ::
                                      (MonadIO m) =>
                                        (Double -> IO ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackAsync callback
  = liftIO
      (RequestAnimationFrameCallback <$>
         asyncCallback1
           (\ highResTime ->
              fromJSRefUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))