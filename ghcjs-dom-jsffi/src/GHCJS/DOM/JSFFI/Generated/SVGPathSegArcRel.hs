{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegArcRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setR1, setR1, js_getR1, getR1, js_setR2, setR2, js_getR2, getR2,
        js_setAngle, setAngle, js_getAngle, getAngle, js_setLargeArcFlag,
        setLargeArcFlag, js_getLargeArcFlag, getLargeArcFlag,
        js_setSweepFlag, setSweepFlag, js_getSweepFlag, getSweepFlag,
        SVGPathSegArcRel, castToSVGPathSegArcRel, gTypeSVGPathSegArcRel)
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
        SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.x Mozilla SVGPathSegArcRel.x documentation> 
setX :: (MonadIO m) => SVGPathSegArcRel -> Float -> m ()
setX self val = liftIO (js_setX (self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.x Mozilla SVGPathSegArcRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegArcRel -> m Float
getX self = liftIO (js_getX (self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.y Mozilla SVGPathSegArcRel.y documentation> 
setY :: (MonadIO m) => SVGPathSegArcRel -> Float -> m ()
setY self val = liftIO (js_setY (self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.y Mozilla SVGPathSegArcRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegArcRel -> m Float
getY self = liftIO (js_getY (self))
 
foreign import javascript unsafe "$1[\"r1\"] = $2;" js_setR1 ::
        SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r1 Mozilla SVGPathSegArcRel.r1 documentation> 
setR1 :: (MonadIO m) => SVGPathSegArcRel -> Float -> m ()
setR1 self val = liftIO (js_setR1 (self) val)
 
foreign import javascript unsafe "$1[\"r1\"]" js_getR1 ::
        SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r1 Mozilla SVGPathSegArcRel.r1 documentation> 
getR1 :: (MonadIO m) => SVGPathSegArcRel -> m Float
getR1 self = liftIO (js_getR1 (self))
 
foreign import javascript unsafe "$1[\"r2\"] = $2;" js_setR2 ::
        SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r2 Mozilla SVGPathSegArcRel.r2 documentation> 
setR2 :: (MonadIO m) => SVGPathSegArcRel -> Float -> m ()
setR2 self val = liftIO (js_setR2 (self) val)
 
foreign import javascript unsafe "$1[\"r2\"]" js_getR2 ::
        SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r2 Mozilla SVGPathSegArcRel.r2 documentation> 
getR2 :: (MonadIO m) => SVGPathSegArcRel -> m Float
getR2 self = liftIO (js_getR2 (self))
 
foreign import javascript unsafe "$1[\"angle\"] = $2;" js_setAngle
        :: SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.angle Mozilla SVGPathSegArcRel.angle documentation> 
setAngle :: (MonadIO m) => SVGPathSegArcRel -> Float -> m ()
setAngle self val = liftIO (js_setAngle (self) val)
 
foreign import javascript unsafe "$1[\"angle\"]" js_getAngle ::
        SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.angle Mozilla SVGPathSegArcRel.angle documentation> 
getAngle :: (MonadIO m) => SVGPathSegArcRel -> m Float
getAngle self = liftIO (js_getAngle (self))
 
foreign import javascript unsafe "$1[\"largeArcFlag\"] = $2;"
        js_setLargeArcFlag :: SVGPathSegArcRel -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.largeArcFlag Mozilla SVGPathSegArcRel.largeArcFlag documentation> 
setLargeArcFlag :: (MonadIO m) => SVGPathSegArcRel -> Bool -> m ()
setLargeArcFlag self val = liftIO (js_setLargeArcFlag (self) val)
 
foreign import javascript unsafe "($1[\"largeArcFlag\"] ? 1 : 0)"
        js_getLargeArcFlag :: SVGPathSegArcRel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.largeArcFlag Mozilla SVGPathSegArcRel.largeArcFlag documentation> 
getLargeArcFlag :: (MonadIO m) => SVGPathSegArcRel -> m Bool
getLargeArcFlag self = liftIO (js_getLargeArcFlag (self))
 
foreign import javascript unsafe "$1[\"sweepFlag\"] = $2;"
        js_setSweepFlag :: SVGPathSegArcRel -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.sweepFlag Mozilla SVGPathSegArcRel.sweepFlag documentation> 
setSweepFlag :: (MonadIO m) => SVGPathSegArcRel -> Bool -> m ()
setSweepFlag self val = liftIO (js_setSweepFlag (self) val)
 
foreign import javascript unsafe "($1[\"sweepFlag\"] ? 1 : 0)"
        js_getSweepFlag :: SVGPathSegArcRel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.sweepFlag Mozilla SVGPathSegArcRel.sweepFlag documentation> 
getSweepFlag :: (MonadIO m) => SVGPathSegArcRel -> m Bool
getSweepFlag self = liftIO (js_getSweepFlag (self))