{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DeviceOrientationEvent
       (js_initDeviceOrientationEvent, initDeviceOrientationEvent,
        js_getAlpha, getAlpha, js_getBeta, getBeta, js_getGamma, getGamma,
        js_getAbsolute, getAbsolute, DeviceOrientationEvent,
        castToDeviceOrientationEvent, gTypeDeviceOrientationEvent)
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

 
foreign import javascript unsafe
        "$1[\"initDeviceOrientationEvent\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_initDeviceOrientationEvent ::
        JSRef DeviceOrientationEvent ->
          JSString ->
            Bool -> Bool -> Double -> Double -> Double -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.initDeviceOrientationEvent Mozilla DeviceOrientationEvent.initDeviceOrientationEvent documentation> 
initDeviceOrientationEvent ::
                           (MonadIO m, ToJSString type') =>
                             DeviceOrientationEvent ->
                               type' -> Bool -> Bool -> Double -> Double -> Double -> Bool -> m ()
initDeviceOrientationEvent self type' bubbles cancelable alpha beta
  gamma absolute
  = liftIO
      (js_initDeviceOrientationEvent (unDeviceOrientationEvent self)
         (toJSString type')
         bubbles
         cancelable
         alpha
         beta
         gamma
         absolute)
 
foreign import javascript unsafe "$1[\"alpha\"]" js_getAlpha ::
        JSRef DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlpha :: (MonadIO m) => DeviceOrientationEvent -> m Double
getAlpha self
  = liftIO (js_getAlpha (unDeviceOrientationEvent self))
 
foreign import javascript unsafe "$1[\"beta\"]" js_getBeta ::
        JSRef DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBeta :: (MonadIO m) => DeviceOrientationEvent -> m Double
getBeta self = liftIO (js_getBeta (unDeviceOrientationEvent self))
 
foreign import javascript unsafe "$1[\"gamma\"]" js_getGamma ::
        JSRef DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGamma :: (MonadIO m) => DeviceOrientationEvent -> m Double
getGamma self
  = liftIO (js_getGamma (unDeviceOrientationEvent self))
 
foreign import javascript unsafe "($1[\"absolute\"] ? 1 : 0)"
        js_getAbsolute :: JSRef DeviceOrientationEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsolute :: (MonadIO m) => DeviceOrientationEvent -> m Bool
getAbsolute self
  = liftIO (js_getAbsolute (unDeviceOrientationEvent self))
#else
module GHCJS.DOM.DeviceOrientationEvent (
  ) where
#endif
