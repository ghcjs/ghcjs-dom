{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Touch
       (js_getClientX, getClientX, js_getClientY, getClientY,
        js_getScreenX, getScreenX, js_getScreenY, getScreenY, js_getPageX,
        getPageX, js_getPageY, getPageY, js_getTarget, getTarget,
        js_getIdentifier, getIdentifier, js_getWebkitRadiusX,
        getWebkitRadiusX, js_getWebkitRadiusY, getWebkitRadiusY,
        js_getWebkitRotationAngle, getWebkitRotationAngle,
        js_getWebkitForce, getWebkitForce, Touch, castToTouch, gTypeTouch)
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
 
foreign import javascript unsafe "$1[\"clientX\"]" js_getClientX ::
        Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.clientX Mozilla Touch.clientX documentation> 
getClientX :: (MonadIO m) => Touch -> m Int
getClientX self = liftIO (js_getClientX (self))
 
foreign import javascript unsafe "$1[\"clientY\"]" js_getClientY ::
        Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.clientY Mozilla Touch.clientY documentation> 
getClientY :: (MonadIO m) => Touch -> m Int
getClientY self = liftIO (js_getClientY (self))
 
foreign import javascript unsafe "$1[\"screenX\"]" js_getScreenX ::
        Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.screenX Mozilla Touch.screenX documentation> 
getScreenX :: (MonadIO m) => Touch -> m Int
getScreenX self = liftIO (js_getScreenX (self))
 
foreign import javascript unsafe "$1[\"screenY\"]" js_getScreenY ::
        Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.screenY Mozilla Touch.screenY documentation> 
getScreenY :: (MonadIO m) => Touch -> m Int
getScreenY self = liftIO (js_getScreenY (self))
 
foreign import javascript unsafe "$1[\"pageX\"]" js_getPageX ::
        Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.pageX Mozilla Touch.pageX documentation> 
getPageX :: (MonadIO m) => Touch -> m Int
getPageX self = liftIO (js_getPageX (self))
 
foreign import javascript unsafe "$1[\"pageY\"]" js_getPageY ::
        Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.pageY Mozilla Touch.pageY documentation> 
getPageY :: (MonadIO m) => Touch -> m Int
getPageY self = liftIO (js_getPageY (self))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        Touch -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.target Mozilla Touch.target documentation> 
getTarget :: (MonadIO m) => Touch -> m (Maybe EventTarget)
getTarget self = liftIO (nullableToMaybe <$> (js_getTarget (self)))
 
foreign import javascript unsafe "$1[\"identifier\"]"
        js_getIdentifier :: Touch -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.identifier Mozilla Touch.identifier documentation> 
getIdentifier :: (MonadIO m) => Touch -> m Word
getIdentifier self = liftIO (js_getIdentifier (self))
 
foreign import javascript unsafe "$1[\"webkitRadiusX\"]"
        js_getWebkitRadiusX :: Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRadiusX Mozilla Touch.webkitRadiusX documentation> 
getWebkitRadiusX :: (MonadIO m) => Touch -> m Int
getWebkitRadiusX self = liftIO (js_getWebkitRadiusX (self))
 
foreign import javascript unsafe "$1[\"webkitRadiusY\"]"
        js_getWebkitRadiusY :: Touch -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRadiusY Mozilla Touch.webkitRadiusY documentation> 
getWebkitRadiusY :: (MonadIO m) => Touch -> m Int
getWebkitRadiusY self = liftIO (js_getWebkitRadiusY (self))
 
foreign import javascript unsafe "$1[\"webkitRotationAngle\"]"
        js_getWebkitRotationAngle :: Touch -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRotationAngle Mozilla Touch.webkitRotationAngle documentation> 
getWebkitRotationAngle :: (MonadIO m) => Touch -> m Float
getWebkitRotationAngle self
  = liftIO (js_getWebkitRotationAngle (self))
 
foreign import javascript unsafe "$1[\"webkitForce\"]"
        js_getWebkitForce :: Touch -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitForce Mozilla Touch.webkitForce documentation> 
getWebkitForce :: (MonadIO m) => Touch -> m Float
getWebkitForce self = liftIO (js_getWebkitForce (self))