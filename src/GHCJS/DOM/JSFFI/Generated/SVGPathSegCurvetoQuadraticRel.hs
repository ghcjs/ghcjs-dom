{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegCurvetoQuadraticRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX1, setX1, js_getX1, getX1, js_setY1, setY1, js_getY1, getY1,
        SVGPathSegCurvetoQuadraticRel, castToSVGPathSegCurvetoQuadraticRel,
        gTypeSVGPathSegCurvetoQuadraticRel)
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
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x Mozilla SVGPathSegCurvetoQuadraticRel.x documentation> 
setX ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setX self val = liftIO (js_setX (self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x Mozilla SVGPathSegCurvetoQuadraticRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> m Float
getX self = liftIO (js_getX (self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y Mozilla SVGPathSegCurvetoQuadraticRel.y documentation> 
setY ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setY self val = liftIO (js_setY (self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y Mozilla SVGPathSegCurvetoQuadraticRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> m Float
getY self = liftIO (js_getY (self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;" js_setX1 ::
        SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x1 Mozilla SVGPathSegCurvetoQuadraticRel.x1 documentation> 
setX1 ::
      (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setX1 self val = liftIO (js_setX1 (self) val)
 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x1 Mozilla SVGPathSegCurvetoQuadraticRel.x1 documentation> 
getX1 :: (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> m Float
getX1 self = liftIO (js_getX1 (self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;" js_setY1 ::
        SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y1 Mozilla SVGPathSegCurvetoQuadraticRel.y1 documentation> 
setY1 ::
      (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> Float -> m ()
setY1 self val = liftIO (js_setY1 (self) val)
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y1 Mozilla SVGPathSegCurvetoQuadraticRel.y1 documentation> 
getY1 :: (MonadIO m) => SVGPathSegCurvetoQuadraticRel -> m Float
getY1 self = liftIO (js_getY1 (self))