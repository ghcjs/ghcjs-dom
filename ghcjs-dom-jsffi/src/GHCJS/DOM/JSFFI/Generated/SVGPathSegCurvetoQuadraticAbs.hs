{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegCurvetoQuadraticAbs
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX1, setX1, js_getX1, getX1, js_setY1, setY1, js_getY1, getY1,
        SVGPathSegCurvetoQuadraticAbs, castToSVGPathSegCurvetoQuadraticAbs,
        gTypeSVGPathSegCurvetoQuadraticAbs)
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
        SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x Mozilla SVGPathSegCurvetoQuadraticAbs.x documentation> 
setX ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setX self val = liftIO (js_setX (self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x Mozilla SVGPathSegCurvetoQuadraticAbs.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getX self = liftIO (js_getX (self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y Mozilla SVGPathSegCurvetoQuadraticAbs.y documentation> 
setY ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setY self val = liftIO (js_setY (self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y Mozilla SVGPathSegCurvetoQuadraticAbs.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getY self = liftIO (js_getY (self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;" js_setX1 ::
        SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x1 Mozilla SVGPathSegCurvetoQuadraticAbs.x1 documentation> 
setX1 ::
      (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setX1 self val = liftIO (js_setX1 (self) val)
 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x1 Mozilla SVGPathSegCurvetoQuadraticAbs.x1 documentation> 
getX1 :: (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getX1 self = liftIO (js_getX1 (self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;" js_setY1 ::
        SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y1 Mozilla SVGPathSegCurvetoQuadraticAbs.y1 documentation> 
setY1 ::
      (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> Float -> m ()
setY1 self val = liftIO (js_setY1 (self) val)
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y1 Mozilla SVGPathSegCurvetoQuadraticAbs.y1 documentation> 
getY1 :: (MonadIO m) => SVGPathSegCurvetoQuadraticAbs -> m Float
getY1 self = liftIO (js_getY1 (self))