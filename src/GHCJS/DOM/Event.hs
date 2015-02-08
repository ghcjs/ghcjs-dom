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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"stopPropagation\"]()"
        ghcjs_dom_event_stop_propagation :: JSRef Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.stopPropagation Mozilla Event.stopPropagation documentation> 
eventStopPropagation :: (MonadIO m, IsEvent self) => self -> m ()
eventStopPropagation self
  = liftIO
      (ghcjs_dom_event_stop_propagation (unEvent (toEvent self)))
 
foreign import javascript unsafe "$1[\"preventDefault\"]()"
        ghcjs_dom_event_prevent_default :: JSRef Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.preventDefault Mozilla Event.preventDefault documentation> 
eventPreventDefault :: (MonadIO m, IsEvent self) => self -> m ()
eventPreventDefault self
  = liftIO (ghcjs_dom_event_prevent_default (unEvent (toEvent self)))
 
foreign import javascript unsafe "$1[\"initEvent\"]($2, $3, $4)"
        ghcjs_dom_event_init_event ::
        JSRef Event -> JSString -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.initEvent Mozilla Event.initEvent documentation> 
eventInitEvent ::
               (MonadIO m, IsEvent self, ToJSString eventTypeArg) =>
                 self -> eventTypeArg -> Bool -> Bool -> m ()
eventInitEvent self eventTypeArg canBubbleArg cancelableArg
  = liftIO
      (ghcjs_dom_event_init_event (unEvent (toEvent self))
         (toJSString eventTypeArg)
         canBubbleArg
         cancelableArg)
 
foreign import javascript unsafe
        "$1[\"stopImmediatePropagation\"]()"
        ghcjs_dom_event_stop_immediate_propagation :: JSRef Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.stopImmediatePropagation Mozilla Event.stopImmediatePropagation documentation> 
eventStopImmediatePropagation ::
                              (MonadIO m, IsEvent self) => self -> m ()
eventStopImmediatePropagation self
  = liftIO
      (ghcjs_dom_event_stop_immediate_propagation
         (unEvent (toEvent self)))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.target Mozilla Event.target documentation> 
eventGetTarget ::
               (MonadIO m, IsEvent self) => self -> m (Maybe EventTarget)
eventGetTarget self
  = liftIO
      ((ghcjs_dom_event_get_target (unEvent (toEvent self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"currentTarget\"]"
        ghcjs_dom_event_get_current_target ::
        JSRef Event -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.currentTarget Mozilla Event.currentTarget documentation> 
eventGetCurrentTarget ::
                      (MonadIO m, IsEvent self) => self -> m (Maybe EventTarget)
eventGetCurrentTarget self
  = liftIO
      ((ghcjs_dom_event_get_current_target (unEvent (toEvent self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"eventPhase\"]"
        ghcjs_dom_event_get_event_phase :: JSRef Event -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.eventPhase Mozilla Event.eventPhase documentation> 
eventGetEventPhase :: (MonadIO m, IsEvent self) => self -> m Word
eventGetEventPhase self
  = liftIO (ghcjs_dom_event_get_event_phase (unEvent (toEvent self)))
 
foreign import javascript unsafe "($1[\"bubbles\"] ? 1 : 0)"
        ghcjs_dom_event_get_bubbles :: JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.bubbles Mozilla Event.bubbles documentation> 
eventGetBubbles :: (MonadIO m, IsEvent self) => self -> m Bool
eventGetBubbles self
  = liftIO (ghcjs_dom_event_get_bubbles (unEvent (toEvent self)))
 
foreign import javascript unsafe "($1[\"cancelable\"] ? 1 : 0)"
        ghcjs_dom_event_get_cancelable :: JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelable Mozilla Event.cancelable documentation> 
eventGetCancelable :: (MonadIO m, IsEvent self) => self -> m Bool
eventGetCancelable self
  = liftIO (ghcjs_dom_event_get_cancelable (unEvent (toEvent self)))
 
foreign import javascript unsafe "$1[\"timeStamp\"]"
        ghcjs_dom_event_get_time_stamp :: JSRef Event -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.timeStamp Mozilla Event.timeStamp documentation> 
eventGetTimeStamp :: (MonadIO m, IsEvent self) => self -> m Word
eventGetTimeStamp self
  = liftIO (ghcjs_dom_event_get_time_stamp (unEvent (toEvent self)))
 
foreign import javascript unsafe
        "($1[\"defaultPrevented\"] ? 1 : 0)"
        ghcjs_dom_event_get_default_prevented :: JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.defaultPrevented Mozilla Event.defaultPrevented documentation> 
eventGetDefaultPrevented ::
                         (MonadIO m, IsEvent self) => self -> m Bool
eventGetDefaultPrevented self
  = liftIO
      (ghcjs_dom_event_get_default_prevented (unEvent (toEvent self)))
 
foreign import javascript unsafe "$1[\"srcElement\"]"
        ghcjs_dom_event_get_src_element ::
        JSRef Event -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.srcElement Mozilla Event.srcElement documentation> 
eventGetSrcElement ::
                   (MonadIO m, IsEvent self) => self -> m (Maybe EventTarget)
eventGetSrcElement self
  = liftIO
      ((ghcjs_dom_event_get_src_element (unEvent (toEvent self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        ghcjs_dom_event_set_return_value :: JSRef Event -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.returnValue Mozilla Event.returnValue documentation> 
eventSetReturnValue ::
                    (MonadIO m, IsEvent self) => self -> Bool -> m ()
eventSetReturnValue self val
  = liftIO
      (ghcjs_dom_event_set_return_value (unEvent (toEvent self)) val)
 
foreign import javascript unsafe "($1[\"returnValue\"] ? 1 : 0)"
        ghcjs_dom_event_get_return_value :: JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.returnValue Mozilla Event.returnValue documentation> 
eventGetReturnValue :: (MonadIO m, IsEvent self) => self -> m Bool
eventGetReturnValue self
  = liftIO
      (ghcjs_dom_event_get_return_value (unEvent (toEvent self)))
 
foreign import javascript unsafe "$1[\"cancelBubble\"] = $2;"
        ghcjs_dom_event_set_cancel_bubble :: JSRef Event -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelBubble Mozilla Event.cancelBubble documentation> 
eventSetCancelBubble ::
                     (MonadIO m, IsEvent self) => self -> Bool -> m ()
eventSetCancelBubble self val
  = liftIO
      (ghcjs_dom_event_set_cancel_bubble (unEvent (toEvent self)) val)
 
foreign import javascript unsafe "($1[\"cancelBubble\"] ? 1 : 0)"
        ghcjs_dom_event_get_cancel_bubble :: JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelBubble Mozilla Event.cancelBubble documentation> 
eventGetCancelBubble :: (MonadIO m, IsEvent self) => self -> m Bool
eventGetCancelBubble self
  = liftIO
      (ghcjs_dom_event_get_cancel_bubble (unEvent (toEvent self)))
#else
module GHCJS.DOM.Event (
  module Graphics.UI.Gtk.WebKit.DOM.Event
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Event
#endif
