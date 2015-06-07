{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PositionCallback
       (newPositionCallback, newPositionCallbackSync,
        newPositionCallbackAsync, PositionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallback ::
                    (MonadIO m) => (Maybe Geoposition -> IO ()) -> m PositionCallback
newPositionCallback callback
  = liftIO
      (syncCallback1 ThrowWouldBlock
         (\ position ->
            fromJSRefUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallbackSync ::
                        (MonadIO m) => (Maybe Geoposition -> IO ()) -> m PositionCallback
newPositionCallbackSync callback
  = liftIO
      (syncCallback1 ContinueAsync
         (\ position ->
            fromJSRefUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallbackAsync ::
                         (MonadIO m) => (Maybe Geoposition -> IO ()) -> m PositionCallback
newPositionCallbackAsync callback
  = liftIO
      (asyncCallback1
         (\ position ->
            fromJSRefUnchecked position >>= \ position' -> callback position'))