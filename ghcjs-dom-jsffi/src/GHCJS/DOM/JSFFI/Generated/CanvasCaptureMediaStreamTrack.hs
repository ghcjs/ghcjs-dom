{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CanvasCaptureMediaStreamTrack
       (js_requestFrame, requestFrame, js_getCanvas, getCanvas,
        CanvasCaptureMediaStreamTrack(..),
        gTypeCanvasCaptureMediaStreamTrack)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"requestFrame\"]()"
        js_requestFrame :: CanvasCaptureMediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasCaptureMediaStreamTrack.requestFrame Mozilla CanvasCaptureMediaStreamTrack.requestFrame documentation> 
requestFrame ::
             (MonadIO m) => CanvasCaptureMediaStreamTrack -> m ()
requestFrame self = liftIO (js_requestFrame self)
 
foreign import javascript unsafe "$1[\"canvas\"]" js_getCanvas ::
        CanvasCaptureMediaStreamTrack -> IO HTMLCanvasElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasCaptureMediaStreamTrack.canvas Mozilla CanvasCaptureMediaStreamTrack.canvas documentation> 
getCanvas ::
          (MonadIO m) => CanvasCaptureMediaStreamTrack -> m HTMLCanvasElement
getCanvas self = liftIO (js_getCanvas self)