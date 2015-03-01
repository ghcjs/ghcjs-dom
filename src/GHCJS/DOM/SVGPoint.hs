{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPoint
       (js_matrixTransform, matrixTransform, js_setX, setX, js_getX, getX,
        js_setY, setY, js_getY, getY, SVGPoint, castToSVGPoint,
        gTypeSVGPoint)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"matrixTransform\"]($2)"
        js_matrixTransform ::
        JSRef SVGPoint -> JSRef SVGMatrix -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
matrixTransform ::
                (MonadIO m) => SVGPoint -> Maybe SVGMatrix -> m (Maybe SVGPoint)
matrixTransform self matrix
  = liftIO
      ((js_matrixTransform (unSVGPoint self)
          (maybe jsNull unSVGMatrix matrix))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
setX :: (MonadIO m) => SVGPoint -> Float -> m ()
setX self val = liftIO (js_setX (unSVGPoint self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
getX :: (MonadIO m) => SVGPoint -> m Float
getX self = liftIO (js_getX (unSVGPoint self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
setY :: (MonadIO m) => SVGPoint -> Float -> m ()
setY self val = liftIO (js_setY (unSVGPoint self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
getY :: (MonadIO m) => SVGPoint -> m Float
getY self = liftIO (js_getY (unSVGPoint self))
#else
module GHCJS.DOM.SVGPoint (
  ) where
#endif
