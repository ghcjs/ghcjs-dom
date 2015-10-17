{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DeviceOrientationEvent
       (js_initDeviceOrientationEvent, initDeviceOrientationEvent,
        js_getAlpha, getAlpha, js_getBeta, getBeta, js_getGamma, getGamma,
        js_getAbsolute, getAbsolute, DeviceOrientationEvent,
        castToDeviceOrientationEvent, gTypeDeviceOrientationEvent)
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
 
foreign import javascript unsafe
        "$1[\"initDeviceOrientationEvent\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_initDeviceOrientationEvent ::
        DeviceOrientationEvent ->
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
      (js_initDeviceOrientationEvent (self) (toJSString type') bubbles
         cancelable
         alpha
         beta
         gamma
         absolute)
 
foreign import javascript unsafe "$1[\"alpha\"]" js_getAlpha ::
        DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlpha :: (MonadIO m) => DeviceOrientationEvent -> m Double
getAlpha self = liftIO (js_getAlpha (self))
 
foreign import javascript unsafe "$1[\"beta\"]" js_getBeta ::
        DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBeta :: (MonadIO m) => DeviceOrientationEvent -> m Double
getBeta self = liftIO (js_getBeta (self))
 
foreign import javascript unsafe "$1[\"gamma\"]" js_getGamma ::
        DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGamma :: (MonadIO m) => DeviceOrientationEvent -> m Double
getGamma self = liftIO (js_getGamma (self))
 
foreign import javascript unsafe "($1[\"absolute\"] ? 1 : 0)"
        js_getAbsolute :: DeviceOrientationEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsolute :: (MonadIO m) => DeviceOrientationEvent -> m Bool
getAbsolute self = liftIO (js_getAbsolute (self))