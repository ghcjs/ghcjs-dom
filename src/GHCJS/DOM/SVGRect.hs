{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGRect
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setWidth, setWidth, js_getWidth, getWidth, js_setHeight,
        setHeight, js_getHeight, getHeight, SVGRect, castToSVGRect,
        gTypeSVGRect)
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
        JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
setX :: (MonadIO m) => SVGRect -> Float -> m ()
setX self val = liftIO (js_setX (unSVGRect self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
getX :: (MonadIO m) => SVGRect -> m Float
getX self = liftIO (js_getX (unSVGRect self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
setY :: (MonadIO m) => SVGRect -> Float -> m ()
setY self val = liftIO (js_setY (unSVGRect self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
getY :: (MonadIO m) => SVGRect -> m Float
getY self = liftIO (js_getY (unSVGRect self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
setWidth :: (MonadIO m) => SVGRect -> Float -> m ()
setWidth self val = liftIO (js_setWidth (unSVGRect self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
getWidth :: (MonadIO m) => SVGRect -> m Float
getWidth self = liftIO (js_getWidth (unSVGRect self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
setHeight :: (MonadIO m) => SVGRect -> Float -> m ()
setHeight self val = liftIO (js_setHeight (unSVGRect self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
getHeight :: (MonadIO m) => SVGRect -> m Float
getHeight self = liftIO (js_getHeight (unSVGRect self))
#else
module GHCJS.DOM.SVGRect (
  ) where
#endif
