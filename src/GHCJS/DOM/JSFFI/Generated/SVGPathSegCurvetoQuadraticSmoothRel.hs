{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegCurvetoQuadraticSmoothRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        SVGPathSegCurvetoQuadraticSmoothRel,
        castToSVGPathSegCurvetoQuadraticSmoothRel,
        gTypeSVGPathSegCurvetoQuadraticSmoothRel)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel.x Mozilla SVGPathSegCurvetoQuadraticSmoothRel.x documentation> 
setX ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticSmoothRel -> Float -> m ()
setX self val
  = liftIO (js_setX (unSVGPathSegCurvetoQuadraticSmoothRel self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel.x Mozilla SVGPathSegCurvetoQuadraticSmoothRel.x documentation> 
getX ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticSmoothRel -> m Float
getX self
  = liftIO (js_getX (unSVGPathSegCurvetoQuadraticSmoothRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel.y Mozilla SVGPathSegCurvetoQuadraticSmoothRel.y documentation> 
setY ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticSmoothRel -> Float -> m ()
setY self val
  = liftIO (js_setY (unSVGPathSegCurvetoQuadraticSmoothRel self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel.y Mozilla SVGPathSegCurvetoQuadraticSmoothRel.y documentation> 
getY ::
     (MonadIO m) => SVGPathSegCurvetoQuadraticSmoothRel -> m Float
getY self
  = liftIO (js_getY (unSVGPathSegCurvetoQuadraticSmoothRel self))