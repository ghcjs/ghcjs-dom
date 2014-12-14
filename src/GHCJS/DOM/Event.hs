{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Event
       (ghcjs_dom_event_stop_propagation, eventStopPropagation,
        ghcjs_dom_event_prevent_default, eventPreventDefault,
        ghcjs_dom_event_init_event, eventInitEvent,
        ghcjs_dom_event_stop_immediate_propagation,
        eventStopImmediatePropagation, cNONE, cCAPTURING_PHASE, cAT_TARGET,
        cBUBBLING_PHASE, cMOUSEDOWN, cMOUSEUP, cMOUSEOVER, cMOUSEOUT,
        cMOUSEMOVE, cMOUSEDRAG, cCLICK, cDBLCLICK, cKEYDOWN, cKEYUP,
        cKEYPRESS, cDRAGDROP, cFOCUS, cBLUR, cSELECT, cCHANGE,
        ghcjs_dom_event_get_target, eventGetTarget,
        ghcjs_dom_event_get_current_target, eventGetCurrentTarget,
        ghcjs_dom_event_get_event_phase, eventGetEventPhase,
        ghcjs_dom_event_get_bubbles, eventGetBubbles,
        ghcjs_dom_event_get_cancelable, eventGetCancelable,
        ghcjs_dom_event_get_time_stamp, eventGetTimeStamp,
        ghcjs_dom_event_get_default_prevented, eventGetDefaultPrevented,
        ghcjs_dom_event_get_src_element, eventGetSrcElement,
        ghcjs_dom_event_set_return_value, eventSetReturnValue,
        ghcjs_dom_event_get_return_value, eventGetReturnValue,
        ghcjs_dom_event_set_cancel_bubble, eventSetCancelBubble,
        ghcjs_dom_event_get_cancel_bubble, eventGetCancelBubble, Event,
        IsEvent, castToEvent, gTypeEvent, toEvent)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))

 
foreign import javascript unsafe "$1[\"stopPropagation\"]()"
        ghcjs_dom_event_stop_propagation :: JSRef Event -> IO ()
 
eventStopPropagation :: (IsEvent self) => self -> IO ()
eventStopPropagation self
  = ghcjs_dom_event_stop_propagation (unEvent (toEvent self))
 
foreign import javascript unsafe "$1[\"preventDefault\"]()"
        ghcjs_dom_event_prevent_default :: JSRef Event -> IO ()
 
eventPreventDefault :: (IsEvent self) => self -> IO ()
eventPreventDefault self
  = ghcjs_dom_event_prevent_default (unEvent (toEvent self))
 
foreign import javascript unsafe "$1[\"initEvent\"]($2, $3, $4)"
        ghcjs_dom_event_init_event ::
        JSRef Event -> JSString -> Bool -> Bool -> IO ()
 
eventInitEvent ::
               (IsEvent self, ToJSString eventTypeArg) =>
                 self -> eventTypeArg -> Bool -> Bool -> IO ()
eventInitEvent self eventTypeArg canBubbleArg cancelableArg
  = ghcjs_dom_event_init_event (unEvent (toEvent self))
      (toJSString eventTypeArg)
      canBubbleArg
      cancelableArg
 
foreign import javascript unsafe
        "$1[\"stopImmediatePropagation\"]()"
        ghcjs_dom_event_stop_immediate_propagation :: JSRef Event -> IO ()
 
eventStopImmediatePropagation :: (IsEvent self) => self -> IO ()
eventStopImmediatePropagation self
  = ghcjs_dom_event_stop_immediate_propagation
      (unEvent (toEvent self))
cNONE = 0
cCAPTURING_PHASE = 1
cAT_TARGET = 2
cBUBBLING_PHASE = 3
cMOUSEDOWN = 1
cMOUSEUP = 2
cMOUSEOVER = 4
cMOUSEOUT = 8
cMOUSEMOVE = 16
cMOUSEDRAG = 32
cCLICK = 64
cDBLCLICK = 128
cKEYDOWN = 256
cKEYUP = 512
cKEYPRESS = 1024
cDRAGDROP = 2048
cFOCUS = 4096
cBLUR = 8192
cSELECT = 16384
cCHANGE = 32768
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_event_get_target :: JSRef Event -> IO (JSRef EventTarget)
 
eventGetTarget :: (IsEvent self) => self -> IO (Maybe EventTarget)
eventGetTarget self
  = fmap EventTarget . maybeJSNull <$>
      (ghcjs_dom_event_get_target (unEvent (toEvent self)))
 
foreign import javascript unsafe "$1[\"currentTarget\"]"
        ghcjs_dom_event_get_current_target ::
        JSRef Event -> IO (JSRef EventTarget)
 
eventGetCurrentTarget ::
                      (IsEvent self) => self -> IO (Maybe EventTarget)
eventGetCurrentTarget self
  = fmap EventTarget . maybeJSNull <$>
      (ghcjs_dom_event_get_current_target (unEvent (toEvent self)))
 
foreign import javascript unsafe "$1[\"eventPhase\"]"
        ghcjs_dom_event_get_event_phase :: JSRef Event -> IO Word
 
eventGetEventPhase :: (IsEvent self) => self -> IO Word
eventGetEventPhase self
  = ghcjs_dom_event_get_event_phase (unEvent (toEvent self))
 
foreign import javascript unsafe "($1[\"bubbles\"] ? 1 : 0)"
        ghcjs_dom_event_get_bubbles :: JSRef Event -> IO Bool
 
eventGetBubbles :: (IsEvent self) => self -> IO Bool
eventGetBubbles self
  = ghcjs_dom_event_get_bubbles (unEvent (toEvent self))
 
foreign import javascript unsafe "($1[\"cancelable\"] ? 1 : 0)"
        ghcjs_dom_event_get_cancelable :: JSRef Event -> IO Bool
 
eventGetCancelable :: (IsEvent self) => self -> IO Bool
eventGetCancelable self
  = ghcjs_dom_event_get_cancelable (unEvent (toEvent self))
 
foreign import javascript unsafe "$1[\"timeStamp\"]"
        ghcjs_dom_event_get_time_stamp :: JSRef Event -> IO Word
 
eventGetTimeStamp :: (IsEvent self) => self -> IO Word
eventGetTimeStamp self
  = fromIntegral <$>
      (ghcjs_dom_event_get_time_stamp (unEvent (toEvent self)))
 
foreign import javascript unsafe
        "($1[\"defaultPrevented\"] ? 1 : 0)"
        ghcjs_dom_event_get_default_prevented :: JSRef Event -> IO Bool
 
eventGetDefaultPrevented :: (IsEvent self) => self -> IO Bool
eventGetDefaultPrevented self
  = ghcjs_dom_event_get_default_prevented (unEvent (toEvent self))
 
foreign import javascript unsafe "$1[\"srcElement\"]"
        ghcjs_dom_event_get_src_element ::
        JSRef Event -> IO (JSRef EventTarget)
 
eventGetSrcElement ::
                   (IsEvent self) => self -> IO (Maybe EventTarget)
eventGetSrcElement self
  = fmap EventTarget . maybeJSNull <$>
      (ghcjs_dom_event_get_src_element (unEvent (toEvent self)))
 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        ghcjs_dom_event_set_return_value :: JSRef Event -> Bool -> IO ()
 
eventSetReturnValue :: (IsEvent self) => self -> Bool -> IO ()
eventSetReturnValue self val
  = ghcjs_dom_event_set_return_value (unEvent (toEvent self)) val
 
foreign import javascript unsafe "($1[\"returnValue\"] ? 1 : 0)"
        ghcjs_dom_event_get_return_value :: JSRef Event -> IO Bool
 
eventGetReturnValue :: (IsEvent self) => self -> IO Bool
eventGetReturnValue self
  = ghcjs_dom_event_get_return_value (unEvent (toEvent self))
 
foreign import javascript unsafe "$1[\"cancelBubble\"] = $2;"
        ghcjs_dom_event_set_cancel_bubble :: JSRef Event -> Bool -> IO ()
 
eventSetCancelBubble :: (IsEvent self) => self -> Bool -> IO ()
eventSetCancelBubble self val
  = ghcjs_dom_event_set_cancel_bubble (unEvent (toEvent self)) val
 
foreign import javascript unsafe "($1[\"cancelBubble\"] ? 1 : 0)"
        ghcjs_dom_event_get_cancel_bubble :: JSRef Event -> IO Bool
 
eventGetCancelBubble :: (IsEvent self) => self -> IO Bool
eventGetCancelBubble self
  = ghcjs_dom_event_get_cancel_bubble (unEvent (toEvent self))
#else
module GHCJS.DOM.Event (
  module Graphics.UI.Gtk.WebKit.DOM.Event
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Event
#endif
