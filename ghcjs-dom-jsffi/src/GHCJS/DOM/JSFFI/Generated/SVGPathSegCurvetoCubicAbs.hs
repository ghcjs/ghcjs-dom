{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegCurvetoCubicAbs
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX1, setX1, js_getX1, getX1, js_setY1, setY1, js_getY1, getY1,
        js_setX2, setX2, js_getX2, getX2, js_setY2, setY2, js_getY2, getY2,
        SVGPathSegCurvetoCubicAbs, castToSVGPathSegCurvetoCubicAbs,
        gTypeSVGPathSegCurvetoCubicAbs)
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
        SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x Mozilla SVGPathSegCurvetoCubicAbs.x documentation> 
setX :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX self val = liftIO (js_setX (self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x Mozilla SVGPathSegCurvetoCubicAbs.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getX self = liftIO (js_getX (self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y Mozilla SVGPathSegCurvetoCubicAbs.y documentation> 
setY :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY self val = liftIO (js_setY (self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y Mozilla SVGPathSegCurvetoCubicAbs.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getY self = liftIO (js_getY (self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;" js_setX1 ::
        SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x1 Mozilla SVGPathSegCurvetoCubicAbs.x1 documentation> 
setX1 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX1 self val = liftIO (js_setX1 (self) val)
 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x1 Mozilla SVGPathSegCurvetoCubicAbs.x1 documentation> 
getX1 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getX1 self = liftIO (js_getX1 (self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;" js_setY1 ::
        SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y1 Mozilla SVGPathSegCurvetoCubicAbs.y1 documentation> 
setY1 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY1 self val = liftIO (js_setY1 (self) val)
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y1 Mozilla SVGPathSegCurvetoCubicAbs.y1 documentation> 
getY1 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getY1 self = liftIO (js_getY1 (self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;" js_setX2 ::
        SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x2 Mozilla SVGPathSegCurvetoCubicAbs.x2 documentation> 
setX2 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX2 self val = liftIO (js_setX2 (self) val)
 
foreign import javascript unsafe "$1[\"x2\"]" js_getX2 ::
        SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x2 Mozilla SVGPathSegCurvetoCubicAbs.x2 documentation> 
getX2 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getX2 self = liftIO (js_getX2 (self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;" js_setY2 ::
        SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y2 Mozilla SVGPathSegCurvetoCubicAbs.y2 documentation> 
setY2 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY2 self val = liftIO (js_setY2 (self) val)
 
foreign import javascript unsafe "$1[\"y2\"]" js_getY2 ::
        SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y2 Mozilla SVGPathSegCurvetoCubicAbs.y2 documentation> 
getY2 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getY2 self = liftIO (js_getY2 (self))