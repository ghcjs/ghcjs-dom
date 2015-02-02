{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BatteryManager
       (ghcjs_dom_battery_manager_dispatch_event,
        batteryManagerDispatchEvent,
        ghcjs_dom_battery_manager_get_charging, batteryManagerGetCharging,
        ghcjs_dom_battery_manager_get_charging_time,
        batteryManagerGetChargingTime,
        ghcjs_dom_battery_manager_get_discharging_time,
        batteryManagerGetDischargingTime,
        ghcjs_dom_battery_manager_get_level, batteryManagerGetLevel,
        batteryManagerOnchargingchange, batteryManagerOnchargingtimechange,
        batteryManagerOndischargingtimechange, batteryManagerOnlevelchange,
        BatteryManager, IsBatteryManager, castToBatteryManager,
        gTypeBatteryManager, toBatteryManager)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_battery_manager_dispatch_event ::
        JSRef BatteryManager -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.dispatchEvent Mozilla BatteryManager.dispatchEvent documentation> 
batteryManagerDispatchEvent ::
                            (IsBatteryManager self, IsEvent event) =>
                              self -> Maybe event -> IO Bool
batteryManagerDispatchEvent self event
  = ghcjs_dom_battery_manager_dispatch_event
      (unBatteryManager (toBatteryManager self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "($1[\"charging\"] ? 1 : 0)"
        ghcjs_dom_battery_manager_get_charging ::
        JSRef BatteryManager -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.charging Mozilla BatteryManager.charging documentation> 
batteryManagerGetCharging ::
                          (IsBatteryManager self) => self -> IO Bool
batteryManagerGetCharging self
  = ghcjs_dom_battery_manager_get_charging
      (unBatteryManager (toBatteryManager self))
 
foreign import javascript unsafe "$1[\"chargingTime\"]"
        ghcjs_dom_battery_manager_get_charging_time ::
        JSRef BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.chargingTime Mozilla BatteryManager.chargingTime documentation> 
batteryManagerGetChargingTime ::
                              (IsBatteryManager self) => self -> IO Double
batteryManagerGetChargingTime self
  = ghcjs_dom_battery_manager_get_charging_time
      (unBatteryManager (toBatteryManager self))
 
foreign import javascript unsafe "$1[\"dischargingTime\"]"
        ghcjs_dom_battery_manager_get_discharging_time ::
        JSRef BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.dischargingTime Mozilla BatteryManager.dischargingTime documentation> 
batteryManagerGetDischargingTime ::
                                 (IsBatteryManager self) => self -> IO Double
batteryManagerGetDischargingTime self
  = ghcjs_dom_battery_manager_get_discharging_time
      (unBatteryManager (toBatteryManager self))
 
foreign import javascript unsafe "$1[\"level\"]"
        ghcjs_dom_battery_manager_get_level ::
        JSRef BatteryManager -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.level Mozilla BatteryManager.level documentation> 
batteryManagerGetLevel ::
                       (IsBatteryManager self) => self -> IO Double
batteryManagerGetLevel self
  = ghcjs_dom_battery_manager_get_level
      (unBatteryManager (toBatteryManager self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onchargingchange Mozilla BatteryManager.onchargingchange documentation> 
batteryManagerOnchargingchange ::
                               (IsBatteryManager self) => Signal self (EventM UIEvent self ())
batteryManagerOnchargingchange = (connect "chargingchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onchargingtimechange Mozilla BatteryManager.onchargingtimechange documentation> 
batteryManagerOnchargingtimechange ::
                                   (IsBatteryManager self) => Signal self (EventM UIEvent self ())
batteryManagerOnchargingtimechange = (connect "chargingtimechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.ondischargingtimechange Mozilla BatteryManager.ondischargingtimechange documentation> 
batteryManagerOndischargingtimechange ::
                                      (IsBatteryManager self) =>
                                        Signal self (EventM UIEvent self ())
batteryManagerOndischargingtimechange
  = (connect "dischargingtimechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager.onlevelchange Mozilla BatteryManager.onlevelchange documentation> 
batteryManagerOnlevelchange ::
                            (IsBatteryManager self) => Signal self (EventM UIEvent self ())
batteryManagerOnlevelchange = (connect "levelchange")
#else
module GHCJS.DOM.BatteryManager (
  ) where
#endif
