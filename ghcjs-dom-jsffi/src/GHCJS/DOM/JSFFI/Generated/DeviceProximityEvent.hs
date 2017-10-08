{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DeviceProximityEvent
       (js_newDeviceProximityEvent, newDeviceProximityEvent, js_getValue,
        getValue, js_getMin, getMin, js_getMax, getMax,
        DeviceProximityEvent(..), gTypeDeviceProximityEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new window[\"DeviceProximityEvent\"]($1,\n$2)"
        js_newDeviceProximityEvent ::
        JSString ->
          Optional DeviceProximityEventInit -> IO DeviceProximityEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent Mozilla DeviceProximityEvent documentation> 
newDeviceProximityEvent ::
                        (MonadIO m, ToJSString type') =>
                          type' -> Maybe DeviceProximityEventInit -> m DeviceProximityEvent
newDeviceProximityEvent type' eventInitDict
  = liftIO
      (js_newDeviceProximityEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.value Mozilla DeviceProximityEvent.value documentation> 
getValue :: (MonadIO m) => DeviceProximityEvent -> m Double
getValue self = liftIO (js_getValue self)
 
foreign import javascript unsafe "$1[\"min\"]" js_getMin ::
        DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.min Mozilla DeviceProximityEvent.min documentation> 
getMin :: (MonadIO m) => DeviceProximityEvent -> m Double
getMin self = liftIO (js_getMin self)
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.max Mozilla DeviceProximityEvent.max documentation> 
getMax :: (MonadIO m) => DeviceProximityEvent -> m Double
getMax self = liftIO (js_getMax self)