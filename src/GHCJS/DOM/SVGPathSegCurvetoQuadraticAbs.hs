{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoQuadraticAbs
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX1, setX1, js_getX1, getX1, js_setY1, setY1, js_getY1, getY1,
        SVGPathSegCurvetoQuadraticAbs, castToSVGPathSegCurvetoQuadraticAbs,
        gTypeSVGPathSegCurvetoQuadraticAbs)
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

 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x Mozilla SVGPathSegCurvetoQuadraticAbs.x documentation> 
setX ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setX self val
  = liftIO (js_setX (unSVGPathSegCurvetoQuadraticAbs self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x Mozilla SVGPathSegCurvetoQuadraticAbs.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getX self = liftIO (js_getX (unSVGPathSegCurvetoQuadraticAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y Mozilla SVGPathSegCurvetoQuadraticAbs.y documentation> 
setY ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setY self val
  = liftIO (js_setY (unSVGPathSegCurvetoQuadraticAbs self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y Mozilla SVGPathSegCurvetoQuadraticAbs.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getY self = liftIO (js_getY (unSVGPathSegCurvetoQuadraticAbs self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;" js_setX1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x1 Mozilla SVGPathSegCurvetoQuadraticAbs.x1 documentation> 
setX1 ::
      (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setX1 self val
  = liftIO (js_setX1 (unSVGPathSegCurvetoQuadraticAbs self) val)
 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x1 Mozilla SVGPathSegCurvetoQuadraticAbs.x1 documentation> 
getX1 :: (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getX1 self
  = liftIO (js_getX1 (unSVGPathSegCurvetoQuadraticAbs self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;" js_setY1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y1 Mozilla SVGPathSegCurvetoQuadraticAbs.y1 documentation> 
setY1 ::
      (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setY1 self val
  = liftIO (js_setY1 (unSVGPathSegCurvetoQuadraticAbs self) val)
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y1 Mozilla SVGPathSegCurvetoQuadraticAbs.y1 documentation> 
getY1 :: (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getY1 self
  = liftIO (js_getY1 (unSVGPathSegCurvetoQuadraticAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticAbs (
  ) where
#endif
