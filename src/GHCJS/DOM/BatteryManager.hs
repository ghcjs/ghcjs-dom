{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BatteryManager
       (ghcjs_dom_battery_manager_get_charging, batteryManagerGetCharging,
        ghcjs_dom_battery_manager_get_charging_time,
        batteryManagerGetChargingTime,
        ghcjs_dom_battery_manager_get_discharging_time,
        batteryManagerGetDischargingTime,
        ghcjs_dom_battery_manager_get_level, batteryManagerGetLevel,
        batteryManagerChargingChange, batteryManagerChargingTimeChange,
        batteryManagerDischargingTimeChange, batteryManagerLevelChange,
        BatteryManager, IsBatteryManager, castToBatteryManager,
        gTypeBatteryManager, toBatteryManager)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "($1[\"charging\"] ? 1 : 0)"
        ghcjs_dom_battery_manager_get_charging ::
        JSRef BatteryManager -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.charging Mozilla BatteryManager.charging documentation> 
batteryManagerGetCharging ::
                          (MonadIO m, IsBatteryManager self) => self -> m Bool
batteryManagerGetCharging self
  = liftIO
      (ghcjs_dom_battery_manager_get_charging
         (unBatteryManager (toBatteryManager self)))
 
foreign import javascript unsafe "$1[\"chargingTime\"]"
        ghcjs_dom_battery_manager_get_charging_time ::
        JSRef BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.chargingTime Mozilla BatteryManager.chargingTime documentation> 
batteryManagerGetChargingTime ::
                              (MonadIO m, IsBatteryManager self) => self -> m Double
batteryManagerGetChargingTime self
  = liftIO
      (ghcjs_dom_battery_manager_get_charging_time
         (unBatteryManager (toBatteryManager self)))
 
foreign import javascript unsafe "$1[\"dischargingTime\"]"
        ghcjs_dom_battery_manager_get_discharging_time ::
        JSRef BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.dischargingTime Mozilla BatteryManager.dischargingTime documentation> 
batteryManagerGetDischargingTime ::
                                 (MonadIO m, IsBatteryManager self) => self -> m Double
batteryManagerGetDischargingTime self
  = liftIO
      (ghcjs_dom_battery_manager_get_discharging_time
         (unBatteryManager (toBatteryManager self)))
 
foreign import javascript unsafe "$1[\"level\"]"
        ghcjs_dom_battery_manager_get_level ::
        JSRef BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.level Mozilla BatteryManager.level documentation> 
batteryManagerGetLevel ::
                       (MonadIO m, IsBatteryManager self) => self -> m Double
batteryManagerGetLevel self
  = liftIO
      (ghcjs_dom_battery_manager_get_level
         (unBatteryManager (toBatteryManager self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.chargingChange Mozilla BatteryManager.chargingChange documentation> 
batteryManagerChargingChange ::
                             (IsBatteryManager self, IsEventTarget self) => EventName self Event
batteryManagerChargingChange
  = unsafeEventName (toJSString "chargingchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.chargingTimeChange Mozilla BatteryManager.chargingTimeChange documentation> 
batteryManagerChargingTimeChange ::
                                 (IsBatteryManager self, IsEventTarget self) => EventName self Event
batteryManagerChargingTimeChange
  = unsafeEventName (toJSString "chargingtimechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.dischargingTimeChange Mozilla BatteryManager.dischargingTimeChange documentation> 
batteryManagerDischargingTimeChange ::
                                    (IsBatteryManager self, IsEventTarget self) =>
                                      EventName self Event
batteryManagerDischargingTimeChange
  = unsafeEventName (toJSString "dischargingtimechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.levelChange Mozilla BatteryManager.levelChange documentation> 
batteryManagerLevelChange ::
                          (IsBatteryManager self, IsEventTarget self) => EventName self Event
batteryManagerLevelChange
  = unsafeEventName (toJSString "levelchange")
#else
module GHCJS.DOM.BatteryManager (
  ) where
#endif
