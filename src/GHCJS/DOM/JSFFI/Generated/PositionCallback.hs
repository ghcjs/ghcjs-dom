{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PositionCallback
       (newPositionCallback, newPositionCallbackSync,
        newPositionCallbackAsync, PositionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallback ::
                    (MonadIO m) => (Maybe Geoposition -> IO ()) -> m PositionCallback
newPositionCallback callback
  = liftIO
      (PositionCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ position ->
              fromJSValUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallbackSync ::
                        (MonadIO m) => (Maybe Geoposition -> IO ()) -> m PositionCallback
newPositionCallbackSync callback
  = liftIO
      (PositionCallback <$>
         syncCallback1 ContinueAsync
           (\ position ->
              fromJSValUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
newPositionCallbackAsync ::
                         (MonadIO m) => (Maybe Geoposition -> IO ()) -> m PositionCallback
newPositionCallbackAsync callback
  = liftIO
      (PositionCallback <$>
         asyncCallback1
           (\ position ->
              fromJSValUnchecked position >>= \ position' -> callback position'))