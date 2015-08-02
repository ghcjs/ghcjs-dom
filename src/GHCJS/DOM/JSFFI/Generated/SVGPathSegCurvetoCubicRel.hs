{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegCurvetoCubicRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX1, setX1, js_getX1, getX1, js_setY1, setY1, js_getY1, getY1,
        js_setX2, setX2, js_getX2, getX2, js_setY2, setY2, js_getY2, getY2,
        SVGPathSegCurvetoCubicRel, castToSVGPathSegCurvetoCubicRel,
        gTypeSVGPathSegCurvetoCubicRel)
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
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x Mozilla SVGPathSegCurvetoCubicRel.x documentation> 
setX :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setX self val
  = liftIO (js_setX (unSVGPathSegCurvetoCubicRel self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x Mozilla SVGPathSegCurvetoCubicRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> m Float
getX self = liftIO (js_getX (unSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y Mozilla SVGPathSegCurvetoCubicRel.y documentation> 
setY :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setY self val
  = liftIO (js_setY (unSVGPathSegCurvetoCubicRel self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y Mozilla SVGPathSegCurvetoCubicRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> m Float
getY self = liftIO (js_getY (unSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;" js_setX1 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x1 Mozilla SVGPathSegCurvetoCubicRel.x1 documentation> 
setX1 :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setX1 self val
  = liftIO (js_setX1 (unSVGPathSegCurvetoCubicRel self) val)
 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x1 Mozilla SVGPathSegCurvetoCubicRel.x1 documentation> 
getX1 :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> m Float
getX1 self = liftIO (js_getX1 (unSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;" js_setY1 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y1 Mozilla SVGPathSegCurvetoCubicRel.y1 documentation> 
setY1 :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setY1 self val
  = liftIO (js_setY1 (unSVGPathSegCurvetoCubicRel self) val)
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y1 Mozilla SVGPathSegCurvetoCubicRel.y1 documentation> 
getY1 :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> m Float
getY1 self = liftIO (js_getY1 (unSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;" js_setX2 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x2 Mozilla SVGPathSegCurvetoCubicRel.x2 documentation> 
setX2 :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setX2 self val
  = liftIO (js_setX2 (unSVGPathSegCurvetoCubicRel self) val)
 
foreign import javascript unsafe "$1[\"x2\"]" js_getX2 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x2 Mozilla SVGPathSegCurvetoCubicRel.x2 documentation> 
getX2 :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> m Float
getX2 self = liftIO (js_getX2 (unSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;" js_setY2 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y2 Mozilla SVGPathSegCurvetoCubicRel.y2 documentation> 
setY2 :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> Float -> m ()
setY2 self val
  = liftIO (js_setY2 (unSVGPathSegCurvetoCubicRel self) val)
 
foreign import javascript unsafe "$1[\"y2\"]" js_getY2 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y2 Mozilla SVGPathSegCurvetoCubicRel.y2 documentation> 
getY2 :: (MonadIO m) => SVGPathSegCurvetoCubicRel -> m Float
getY2 self = liftIO (js_getY2 (unSVGPathSegCurvetoCubicRel self))