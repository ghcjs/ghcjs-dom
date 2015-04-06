{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoQuadraticRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX1, setX1, js_getX1, getX1, js_setY1, setY1, js_getY1, getY1,
        SVGPathSegCurvetoQuadraticRel, castToSVGPathSegCurvetoQuadraticRel,
        gTypeSVGPathSegCurvetoQuadraticRel)
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

 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x Mozilla SVGPathSegCurvetoQuadraticRel.x documentation> 
setX ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setX self val
  = liftIO (js_setX (unSVGPathSegCurvetoQuadraticRel self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x Mozilla SVGPathSegCurvetoQuadraticRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> m Float
getX self = liftIO (js_getX (unSVGPathSegCurvetoQuadraticRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y Mozilla SVGPathSegCurvetoQuadraticRel.y documentation> 
setY ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setY self val
  = liftIO (js_setY (unSVGPathSegCurvetoQuadraticRel self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y Mozilla SVGPathSegCurvetoQuadraticRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> m Float
getY self = liftIO (js_getY (unSVGPathSegCurvetoQuadraticRel self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;" js_setX1 ::
        JSRef SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x1 Mozilla SVGPathSegCurvetoQuadraticRel.x1 documentation> 
setX1 ::
      (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setX1 self val
  = liftIO (js_setX1 (unSVGPathSegCurvetoQuadraticRel self) val)
 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        JSRef SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x1 Mozilla SVGPathSegCurvetoQuadraticRel.x1 documentation> 
getX1 :: (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> m Float
getX1 self
  = liftIO (js_getX1 (unSVGPathSegCurvetoQuadraticRel self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;" js_setY1 ::
        JSRef SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y1 Mozilla SVGPathSegCurvetoQuadraticRel.y1 documentation> 
setY1 ::
      (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setY1 self val
  = liftIO (js_setY1 (unSVGPathSegCurvetoQuadraticRel self) val)
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        JSRef SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y1 Mozilla SVGPathSegCurvetoQuadraticRel.y1 documentation> 
getY1 :: (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> m Float
getY1 self
  = liftIO (js_getY1 (unSVGPathSegCurvetoQuadraticRel self))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticRel (
  ) where
#endif
