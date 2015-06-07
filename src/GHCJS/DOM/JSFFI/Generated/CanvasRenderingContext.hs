{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CanvasRenderingContext
       (js_getCanvas, getCanvas, CanvasRenderingContext,
        castToCanvasRenderingContext, gTypeCanvasRenderingContext,
        IsCanvasRenderingContext, toCanvasRenderingContext)
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
 
foreign import javascript unsafe "$1[\"canvas\"]" js_getCanvas ::
        JSRef CanvasRenderingContext -> IO (JSRef HTMLCanvasElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext.canvas Mozilla CanvasRenderingContext.canvas documentation> 
getCanvas ::
          (MonadIO m, IsCanvasRenderingContext self) =>
            self -> m (Maybe HTMLCanvasElement)
getCanvas self
  = liftIO
      ((js_getCanvas
          (unCanvasRenderingContext (toCanvasRenderingContext self)))
         >>= fromJSRef)