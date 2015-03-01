{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoCubicAbs
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX1, setX1, js_getX1, getX1, js_setY1, setY1, js_getY1, getY1,
        js_setX2, setX2, js_getX2, getX2, js_setY2, setY2, js_getY2, getY2,
        SVGPathSegCurvetoCubicAbs, castToSVGPathSegCurvetoCubicAbs,
        gTypeSVGPathSegCurvetoCubicAbs)
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
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x Mozilla SVGPathSegCurvetoCubicAbs.x documentation> 
setX :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX self val
  = liftIO (js_setX (unSVGPathSegCurvetoCubicAbs self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x Mozilla SVGPathSegCurvetoCubicAbs.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getX self = liftIO (js_getX (unSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y Mozilla SVGPathSegCurvetoCubicAbs.y documentation> 
setY :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY self val
  = liftIO (js_setY (unSVGPathSegCurvetoCubicAbs self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y Mozilla SVGPathSegCurvetoCubicAbs.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getY self = liftIO (js_getY (unSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;" js_setX1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x1 Mozilla SVGPathSegCurvetoCubicAbs.x1 documentation> 
setX1 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX1 self val
  = liftIO (js_setX1 (unSVGPathSegCurvetoCubicAbs self) val)
 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x1 Mozilla SVGPathSegCurvetoCubicAbs.x1 documentation> 
getX1 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getX1 self = liftIO (js_getX1 (unSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;" js_setY1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y1 Mozilla SVGPathSegCurvetoCubicAbs.y1 documentation> 
setY1 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY1 self val
  = liftIO (js_setY1 (unSVGPathSegCurvetoCubicAbs self) val)
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y1 Mozilla SVGPathSegCurvetoCubicAbs.y1 documentation> 
getY1 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getY1 self = liftIO (js_getY1 (unSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;" js_setX2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x2 Mozilla SVGPathSegCurvetoCubicAbs.x2 documentation> 
setX2 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setX2 self val
  = liftIO (js_setX2 (unSVGPathSegCurvetoCubicAbs self) val)
 
foreign import javascript unsafe "$1[\"x2\"]" js_getX2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.x2 Mozilla SVGPathSegCurvetoCubicAbs.x2 documentation> 
getX2 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getX2 self = liftIO (js_getX2 (unSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;" js_setY2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y2 Mozilla SVGPathSegCurvetoCubicAbs.y2 documentation> 
setY2 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> Float -> m ()
setY2 self val
  = liftIO (js_setY2 (unSVGPathSegCurvetoCubicAbs self) val)
 
foreign import javascript unsafe "$1[\"y2\"]" js_getY2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs.y2 Mozilla SVGPathSegCurvetoCubicAbs.y2 documentation> 
getY2 :: (MonadIO m) => SVGPathSegCurvetoCubicAbs -> m Float
getY2 self = liftIO (js_getY2 (unSVGPathSegCurvetoCubicAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicAbs (
  ) where
#endif
