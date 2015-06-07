{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegArcAbs
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setR1, setR1, js_getR1, getR1, js_setR2, setR2, js_getR2, getR2,
        js_setAngle, setAngle, js_getAngle, getAngle, js_setLargeArcFlag,
        setLargeArcFlag, js_getLargeArcFlag, getLargeArcFlag,
        js_setSweepFlag, setSweepFlag, js_getSweepFlag, getSweepFlag,
        SVGPathSegArcAbs, castToSVGPathSegArcAbs, gTypeSVGPathSegArcAbs)
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
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.x Mozilla SVGPathSegArcAbs.x documentation> 
setX :: (MonadIO m) => SVGPathSegArcAbs -> Float -> m ()
setX self val = liftIO (js_setX (unSVGPathSegArcAbs self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.x Mozilla SVGPathSegArcAbs.x documentation> 
getX :: (MonadIO m) => SVGPathSegArcAbs -> m Float
getX self = liftIO (js_getX (unSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.y Mozilla SVGPathSegArcAbs.y documentation> 
setY :: (MonadIO m) => SVGPathSegArcAbs -> Float -> m ()
setY self val = liftIO (js_setY (unSVGPathSegArcAbs self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.y Mozilla SVGPathSegArcAbs.y documentation> 
getY :: (MonadIO m) => SVGPathSegArcAbs -> m Float
getY self = liftIO (js_getY (unSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"r1\"] = $2;" js_setR1 ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r1 Mozilla SVGPathSegArcAbs.r1 documentation> 
setR1 :: (MonadIO m) => SVGPathSegArcAbs -> Float -> m ()
setR1 self val = liftIO (js_setR1 (unSVGPathSegArcAbs self) val)
 
foreign import javascript unsafe "$1[\"r1\"]" js_getR1 ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r1 Mozilla SVGPathSegArcAbs.r1 documentation> 
getR1 :: (MonadIO m) => SVGPathSegArcAbs -> m Float
getR1 self = liftIO (js_getR1 (unSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"r2\"] = $2;" js_setR2 ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r2 Mozilla SVGPathSegArcAbs.r2 documentation> 
setR2 :: (MonadIO m) => SVGPathSegArcAbs -> Float -> m ()
setR2 self val = liftIO (js_setR2 (unSVGPathSegArcAbs self) val)
 
foreign import javascript unsafe "$1[\"r2\"]" js_getR2 ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r2 Mozilla SVGPathSegArcAbs.r2 documentation> 
getR2 :: (MonadIO m) => SVGPathSegArcAbs -> m Float
getR2 self = liftIO (js_getR2 (unSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"angle\"] = $2;" js_setAngle
        :: JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.angle Mozilla SVGPathSegArcAbs.angle documentation> 
setAngle :: (MonadIO m) => SVGPathSegArcAbs -> Float -> m ()
setAngle self val
  = liftIO (js_setAngle (unSVGPathSegArcAbs self) val)
 
foreign import javascript unsafe "$1[\"angle\"]" js_getAngle ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.angle Mozilla SVGPathSegArcAbs.angle documentation> 
getAngle :: (MonadIO m) => SVGPathSegArcAbs -> m Float
getAngle self = liftIO (js_getAngle (unSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"largeArcFlag\"] = $2;"
        js_setLargeArcFlag :: JSRef SVGPathSegArcAbs -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.largeArcFlag Mozilla SVGPathSegArcAbs.largeArcFlag documentation> 
setLargeArcFlag :: (MonadIO m) => SVGPathSegArcAbs -> Bool -> m ()
setLargeArcFlag self val
  = liftIO (js_setLargeArcFlag (unSVGPathSegArcAbs self) val)
 
foreign import javascript unsafe "($1[\"largeArcFlag\"] ? 1 : 0)"
        js_getLargeArcFlag :: JSRef SVGPathSegArcAbs -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.largeArcFlag Mozilla SVGPathSegArcAbs.largeArcFlag documentation> 
getLargeArcFlag :: (MonadIO m) => SVGPathSegArcAbs -> m Bool
getLargeArcFlag self
  = liftIO (js_getLargeArcFlag (unSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"sweepFlag\"] = $2;"
        js_setSweepFlag :: JSRef SVGPathSegArcAbs -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.sweepFlag Mozilla SVGPathSegArcAbs.sweepFlag documentation> 
setSweepFlag :: (MonadIO m) => SVGPathSegArcAbs -> Bool -> m ()
setSweepFlag self val
  = liftIO (js_setSweepFlag (unSVGPathSegArcAbs self) val)
 
foreign import javascript unsafe "($1[\"sweepFlag\"] ? 1 : 0)"
        js_getSweepFlag :: JSRef SVGPathSegArcAbs -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.sweepFlag Mozilla SVGPathSegArcAbs.sweepFlag documentation> 
getSweepFlag :: (MonadIO m) => SVGPathSegArcAbs -> m Bool
getSweepFlag self
  = liftIO (js_getSweepFlag (unSVGPathSegArcAbs self))