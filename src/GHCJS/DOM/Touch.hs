{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Touch
       (js_getClientX, getClientX, js_getClientY, getClientY,
        js_getScreenX, getScreenX, js_getScreenY, getScreenY, js_getPageX,
        getPageX, js_getPageY, getPageY, js_getTarget, getTarget,
        js_getIdentifier, getIdentifier, js_getWebkitRadiusX,
        getWebkitRadiusX, js_getWebkitRadiusY, getWebkitRadiusY,
        js_getWebkitRotationAngle, getWebkitRotationAngle,
        js_getWebkitForce, getWebkitForce, Touch, castToTouch, gTypeTouch)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"clientX\"]" js_getClientX ::
        JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.clientX Mozilla Touch.clientX documentation> 
getClientX :: (MonadIO m) => Touch -> m Int
getClientX self = liftIO (js_getClientX (unTouch self))
 
foreign import javascript unsafe "$1[\"clientY\"]" js_getClientY ::
        JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.clientY Mozilla Touch.clientY documentation> 
getClientY :: (MonadIO m) => Touch -> m Int
getClientY self = liftIO (js_getClientY (unTouch self))
 
foreign import javascript unsafe "$1[\"screenX\"]" js_getScreenX ::
        JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.screenX Mozilla Touch.screenX documentation> 
getScreenX :: (MonadIO m) => Touch -> m Int
getScreenX self = liftIO (js_getScreenX (unTouch self))
 
foreign import javascript unsafe "$1[\"screenY\"]" js_getScreenY ::
        JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.screenY Mozilla Touch.screenY documentation> 
getScreenY :: (MonadIO m) => Touch -> m Int
getScreenY self = liftIO (js_getScreenY (unTouch self))
 
foreign import javascript unsafe "$1[\"pageX\"]" js_getPageX ::
        JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.pageX Mozilla Touch.pageX documentation> 
getPageX :: (MonadIO m) => Touch -> m Int
getPageX self = liftIO (js_getPageX (unTouch self))
 
foreign import javascript unsafe "$1[\"pageY\"]" js_getPageY ::
        JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.pageY Mozilla Touch.pageY documentation> 
getPageY :: (MonadIO m) => Touch -> m Int
getPageY self = liftIO (js_getPageY (unTouch self))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        JSRef Touch -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.target Mozilla Touch.target documentation> 
getTarget :: (MonadIO m) => Touch -> m (Maybe EventTarget)
getTarget self
  = liftIO ((js_getTarget (unTouch self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"identifier\"]"
        js_getIdentifier :: JSRef Touch -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.identifier Mozilla Touch.identifier documentation> 
getIdentifier :: (MonadIO m) => Touch -> m Word
getIdentifier self = liftIO (js_getIdentifier (unTouch self))
 
foreign import javascript unsafe "$1[\"webkitRadiusX\"]"
        js_getWebkitRadiusX :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRadiusX Mozilla Touch.webkitRadiusX documentation> 
getWebkitRadiusX :: (MonadIO m) => Touch -> m Int
getWebkitRadiusX self = liftIO (js_getWebkitRadiusX (unTouch self))
 
foreign import javascript unsafe "$1[\"webkitRadiusY\"]"
        js_getWebkitRadiusY :: JSRef Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRadiusY Mozilla Touch.webkitRadiusY documentation> 
getWebkitRadiusY :: (MonadIO m) => Touch -> m Int
getWebkitRadiusY self = liftIO (js_getWebkitRadiusY (unTouch self))
 
foreign import javascript unsafe "$1[\"webkitRotationAngle\"]"
        js_getWebkitRotationAngle :: JSRef Touch -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRotationAngle Mozilla Touch.webkitRotationAngle documentation> 
getWebkitRotationAngle :: (MonadIO m) => Touch -> m Float
getWebkitRotationAngle self
  = liftIO (js_getWebkitRotationAngle (unTouch self))
 
foreign import javascript unsafe "$1[\"webkitForce\"]"
        js_getWebkitForce :: JSRef Touch -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitForce Mozilla Touch.webkitForce documentation> 
getWebkitForce :: (MonadIO m) => Touch -> m Float
getWebkitForce self = liftIO (js_getWebkitForce (unTouch self))
#else
module GHCJS.DOM.Touch (
  module Graphics.UI.Gtk.WebKit.DOM.Touch
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Touch
#endif
