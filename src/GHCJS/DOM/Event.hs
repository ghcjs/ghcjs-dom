{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Event
       (webkit_dom_event_stop_propagation, eventStopPropagation,
        webkit_dom_event_prevent_default, eventPreventDefault,
        webkit_dom_event_init_event, eventInitEvent,
        webkit_dom_event_stop_immediate_propagation,
        eventStopImmediatePropagation, cNONE, cCAPTURING_PHASE, cAT_TARGET,
        cBUBBLING_PHASE, cMOUSEDOWN, cMOUSEUP, cMOUSEOVER, cMOUSEOUT,
        cMOUSEMOVE, cMOUSEDRAG, cCLICK, cDBLCLICK, cKEYDOWN, cKEYUP,
        cKEYPRESS, cDRAGDROP, cFOCUS, cBLUR, cSELECT, cCHANGE,
        webkit_dom_event_get_target, eventGetTarget,
        webkit_dom_event_get_current_target, eventGetCurrentTarget,
        webkit_dom_event_get_event_phase, eventGetEventPhase,
        webkit_dom_event_get_bubbles, eventGetBubbles,
        webkit_dom_event_get_cancelable, eventGetCancelable,
        webkit_dom_event_get_time_stamp, eventGetTimeStamp,
        webkit_dom_event_get_default_prevented, eventGetDefaultPrevented,
        webkit_dom_event_get_src_element, eventGetSrcElement,
        webkit_dom_event_set_return_value, eventSetReturnValue,
        webkit_dom_event_get_return_value, eventGetReturnValue,
        webkit_dom_event_set_cancel_bubble, eventSetCancelBubble,
        webkit_dom_event_get_cancel_bubble, eventGetCancelBubble)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"stopPropagation\"]()"
        webkit_dom_event_stop_propagation :: JSRef Event -> IO ()
#else 
webkit_dom_event_stop_propagation :: JSRef Event -> IO ()
webkit_dom_event_stop_propagation = undefined
#endif
 
eventStopPropagation :: (EventClass self) => self -> IO ()
eventStopPropagation self
  = webkit_dom_event_stop_propagation (unEvent (toEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"preventDefault\"]()"
        webkit_dom_event_prevent_default :: JSRef Event -> IO ()
#else 
webkit_dom_event_prevent_default :: JSRef Event -> IO ()
webkit_dom_event_prevent_default = undefined
#endif
 
eventPreventDefault :: (EventClass self) => self -> IO ()
eventPreventDefault self
  = webkit_dom_event_prevent_default (unEvent (toEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"initEvent\"]($2, $3, $4)"
        webkit_dom_event_init_event ::
        JSRef Event -> JSString -> JSBool -> JSBool -> IO ()
#else 
webkit_dom_event_init_event ::
                              JSRef Event -> JSString -> JSBool -> JSBool -> IO ()
webkit_dom_event_init_event = undefined
#endif
 
eventInitEvent ::
               (EventClass self, ToJSString eventTypeArg) =>
                 self -> eventTypeArg -> Bool -> Bool -> IO ()
eventInitEvent self eventTypeArg canBubbleArg cancelableArg
  = webkit_dom_event_init_event (unEvent (toEvent self))
      (toJSString eventTypeArg)
      (toJSBool canBubbleArg)
      (toJSBool cancelableArg)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"stopImmediatePropagation\"]()"
        webkit_dom_event_stop_immediate_propagation :: JSRef Event -> IO ()
#else 
webkit_dom_event_stop_immediate_propagation :: JSRef Event -> IO ()
webkit_dom_event_stop_immediate_propagation = undefined
#endif
 
eventStopImmediatePropagation :: (EventClass self) => self -> IO ()
eventStopImmediatePropagation self
  = webkit_dom_event_stop_immediate_propagation
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


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"]"
        webkit_dom_event_get_target ::
        JSRef Event -> IO (JSRef EventTarget)
#else 
webkit_dom_event_get_target ::
                              JSRef Event -> IO (JSRef EventTarget)
webkit_dom_event_get_target = undefined
#endif
 
eventGetTarget ::
               (EventClass self) => self -> IO (Maybe EventTarget)
eventGetTarget self
  = fmap EventTarget . maybeJSNull <$>
      (webkit_dom_event_get_target (unEvent (toEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentTarget\"]"
        webkit_dom_event_get_current_target ::
        JSRef Event -> IO (JSRef EventTarget)
#else 
webkit_dom_event_get_current_target ::
                                      JSRef Event -> IO (JSRef EventTarget)
webkit_dom_event_get_current_target = undefined
#endif
 
eventGetCurrentTarget ::
                      (EventClass self) => self -> IO (Maybe EventTarget)
eventGetCurrentTarget self
  = fmap EventTarget . maybeJSNull <$>
      (webkit_dom_event_get_current_target (unEvent (toEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"eventPhase\"]"
        webkit_dom_event_get_event_phase :: JSRef Event -> IO Word
#else 
webkit_dom_event_get_event_phase :: JSRef Event -> IO Word
webkit_dom_event_get_event_phase = undefined
#endif
 
eventGetEventPhase :: (EventClass self) => self -> IO Word
eventGetEventPhase self
  = webkit_dom_event_get_event_phase (unEvent (toEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"bubbles\"] ? 1 : 0)"
        webkit_dom_event_get_bubbles :: JSRef Event -> IO JSBool
#else 
webkit_dom_event_get_bubbles :: JSRef Event -> IO JSBool
webkit_dom_event_get_bubbles = undefined
#endif
 
eventGetBubbles :: (EventClass self) => self -> IO Bool
eventGetBubbles self
  = fromJSBool <$>
      (webkit_dom_event_get_bubbles (unEvent (toEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"cancelable\"] ? 1 : 0)"
        webkit_dom_event_get_cancelable :: JSRef Event -> IO JSBool
#else 
webkit_dom_event_get_cancelable :: JSRef Event -> IO JSBool
webkit_dom_event_get_cancelable = undefined
#endif
 
eventGetCancelable :: (EventClass self) => self -> IO Bool
eventGetCancelable self
  = fromJSBool <$>
      (webkit_dom_event_get_cancelable (unEvent (toEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"timeStamp\"]"
        webkit_dom_event_get_time_stamp :: JSRef Event -> IO Word
#else 
webkit_dom_event_get_time_stamp :: JSRef Event -> IO Word
webkit_dom_event_get_time_stamp = undefined
#endif
 
eventGetTimeStamp :: (EventClass self) => self -> IO Word
eventGetTimeStamp self
  = fromIntegral <$>
      (webkit_dom_event_get_time_stamp (unEvent (toEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"defaultPrevented\"] ? 1 : 0)"
        webkit_dom_event_get_default_prevented :: JSRef Event -> IO JSBool
#else 
webkit_dom_event_get_default_prevented :: JSRef Event -> IO JSBool
webkit_dom_event_get_default_prevented = undefined
#endif
 
eventGetDefaultPrevented :: (EventClass self) => self -> IO Bool
eventGetDefaultPrevented self
  = fromJSBool <$>
      (webkit_dom_event_get_default_prevented (unEvent (toEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"srcElement\"]"
        webkit_dom_event_get_src_element ::
        JSRef Event -> IO (JSRef EventTarget)
#else 
webkit_dom_event_get_src_element ::
                                   JSRef Event -> IO (JSRef EventTarget)
webkit_dom_event_get_src_element = undefined
#endif
 
eventGetSrcElement ::
                   (EventClass self) => self -> IO (Maybe EventTarget)
eventGetSrcElement self
  = fmap EventTarget . maybeJSNull <$>
      (webkit_dom_event_get_src_element (unEvent (toEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        webkit_dom_event_set_return_value :: JSRef Event -> JSBool -> IO ()
#else 
webkit_dom_event_set_return_value :: JSRef Event -> JSBool -> IO ()
webkit_dom_event_set_return_value = undefined
#endif
 
eventSetReturnValue :: (EventClass self) => self -> Bool -> IO ()
eventSetReturnValue self val
  = webkit_dom_event_set_return_value (unEvent (toEvent self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"returnValue\"] ? 1 : 0)"
        webkit_dom_event_get_return_value :: JSRef Event -> IO JSBool
#else 
webkit_dom_event_get_return_value :: JSRef Event -> IO JSBool
webkit_dom_event_get_return_value = undefined
#endif
 
eventGetReturnValue :: (EventClass self) => self -> IO Bool
eventGetReturnValue self
  = fromJSBool <$>
      (webkit_dom_event_get_return_value (unEvent (toEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cancelBubble\"] = $2;"
        webkit_dom_event_set_cancel_bubble ::
        JSRef Event -> JSBool -> IO ()
#else 
webkit_dom_event_set_cancel_bubble ::
                                     JSRef Event -> JSBool -> IO ()
webkit_dom_event_set_cancel_bubble = undefined
#endif
 
eventSetCancelBubble :: (EventClass self) => self -> Bool -> IO ()
eventSetCancelBubble self val
  = webkit_dom_event_set_cancel_bubble (unEvent (toEvent self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"cancelBubble\"] ? 1 : 0)"
        webkit_dom_event_get_cancel_bubble :: JSRef Event -> IO JSBool
#else 
webkit_dom_event_get_cancel_bubble :: JSRef Event -> IO JSBool
webkit_dom_event_get_cancel_bubble = undefined
#endif
 
eventGetCancelBubble :: (EventClass self) => self -> IO Bool
eventGetCancelBubble self
  = fromJSBool <$>
      (webkit_dom_event_get_cancel_bubble (unEvent (toEvent self)))