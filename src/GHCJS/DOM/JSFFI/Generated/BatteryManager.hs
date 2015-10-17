{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.BatteryManager
       (js_getCharging, getCharging, js_getChargingTime, getChargingTime,
        js_getDischargingTime, getDischargingTime, js_getLevel, getLevel,
        chargingChange, chargingTimeChange, dischargingTimeChange,
        levelChange, BatteryManager, castToBatteryManager,
        gTypeBatteryManager)
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
 
foreign import javascript unsafe "($1[\"charging\"] ? 1 : 0)"
        js_getCharging :: BatteryManager -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.charging Mozilla BatteryManager.charging documentation> 
getCharging :: (MonadIO m) => BatteryManager -> m Bool
getCharging self = liftIO (js_getCharging (self))
 
foreign import javascript unsafe "$1[\"chargingTime\"]"
        js_getChargingTime :: BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.chargingTime Mozilla BatteryManager.chargingTime documentation> 
getChargingTime :: (MonadIO m) => BatteryManager -> m Double
getChargingTime self = liftIO (js_getChargingTime (self))
 
foreign import javascript unsafe "$1[\"dischargingTime\"]"
        js_getDischargingTime :: BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.dischargingTime Mozilla BatteryManager.dischargingTime documentation> 
getDischargingTime :: (MonadIO m) => BatteryManager -> m Double
getDischargingTime self = liftIO (js_getDischargingTime (self))
 
foreign import javascript unsafe "$1[\"level\"]" js_getLevel ::
        BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.level Mozilla BatteryManager.level documentation> 
getLevel :: (MonadIO m) => BatteryManager -> m Double
getLevel self = liftIO (js_getLevel (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onchargingchange Mozilla BatteryManager.onchargingchange documentation> 
chargingChange :: EventName BatteryManager Event
chargingChange = unsafeEventName (toJSString "chargingchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onchargingtimechange Mozilla BatteryManager.onchargingtimechange documentation> 
chargingTimeChange :: EventName BatteryManager Event
chargingTimeChange
  = unsafeEventName (toJSString "chargingtimechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.ondischargingtimechange Mozilla BatteryManager.ondischargingtimechange documentation> 
dischargingTimeChange :: EventName BatteryManager Event
dischargingTimeChange
  = unsafeEventName (toJSString "dischargingtimechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onlevelchange Mozilla BatteryManager.onlevelchange documentation> 
levelChange :: EventName BatteryManager Event
levelChange = unsafeEventName (toJSString "levelchange")