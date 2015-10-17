{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Event
       (js_stopPropagation, stopPropagation, js_preventDefault,
        preventDefault, js_initEvent, initEvent,
        js_stopImmediatePropagation, stopImmediatePropagation,
        pattern NONE, pattern CAPTURING_PHASE, pattern AT_TARGET,
        pattern BUBBLING_PHASE, pattern MOUSEDOWN, pattern MOUSEUP,
        pattern MOUSEOVER, pattern MOUSEOUT, pattern MOUSEMOVE,
        pattern MOUSEDRAG, pattern CLICK, pattern DBLCLICK,
        pattern KEYDOWN, pattern KEYUP, pattern KEYPRESS, pattern DRAGDROP,
        pattern FOCUS, pattern BLUR, pattern SELECT, pattern CHANGE,
        js_getType, getType, js_getTarget, getTarget, js_getCurrentTarget,
        getCurrentTarget, js_getEventPhase, getEventPhase, js_getBubbles,
        getBubbles, js_getCancelable, getCancelable, js_getTimeStamp,
        getTimeStamp, js_getDefaultPrevented, getDefaultPrevented,
        js_getSrcElement, getSrcElement, js_setReturnValue, setReturnValue,
        js_getReturnValue, getReturnValue, js_setCancelBubble,
        setCancelBubble, js_getCancelBubble, getCancelBubble,
        js_getClipboardData, getClipboardData, Event, castToEvent,
        gTypeEvent, IsEvent, toEvent)
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
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"stopPropagation\"]()"
        js_stopPropagation :: Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.stopPropagation Mozilla Event.stopPropagation documentation> 
stopPropagation :: (MonadIO m, IsEvent self) => self -> m ()
stopPropagation self = liftIO (js_stopPropagation (toEvent self))
 
foreign import javascript unsafe "$1[\"preventDefault\"]()"
        js_preventDefault :: Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.preventDefault Mozilla Event.preventDefault documentation> 
preventDefault :: (MonadIO m, IsEvent self) => self -> m ()
preventDefault self = liftIO (js_preventDefault (toEvent self))
 
foreign import javascript unsafe "$1[\"initEvent\"]($2, $3, $4)"
        js_initEvent :: Event -> JSString -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.initEvent Mozilla Event.initEvent documentation> 
initEvent ::
          (MonadIO m, IsEvent self, ToJSString eventTypeArg) =>
            self -> eventTypeArg -> Bool -> Bool -> m ()
initEvent self eventTypeArg canBubbleArg cancelableArg
  = liftIO
      (js_initEvent (toEvent self) (toJSString eventTypeArg) canBubbleArg
         cancelableArg)
 
foreign import javascript unsafe
        "$1[\"stopImmediatePropagation\"]()" js_stopImmediatePropagation ::
        Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.stopImmediatePropagation Mozilla Event.stopImmediatePropagation documentation> 
stopImmediatePropagation ::
                         (MonadIO m, IsEvent self) => self -> m ()
stopImmediatePropagation self
  = liftIO (js_stopImmediatePropagation (toEvent self))
pattern NONE = 0
pattern CAPTURING_PHASE = 1
pattern AT_TARGET = 2
pattern BUBBLING_PHASE = 3
pattern MOUSEDOWN = 1
pattern MOUSEUP = 2
pattern MOUSEOVER = 4
pattern MOUSEOUT = 8
pattern MOUSEMOVE = 16
pattern MOUSEDRAG = 32
pattern CLICK = 64
pattern DBLCLICK = 128
pattern KEYDOWN = 256
pattern KEYUP = 512
pattern KEYPRESS = 1024
pattern DRAGDROP = 2048
pattern FOCUS = 4096
pattern BLUR = 8192
pattern SELECT = 16384
pattern CHANGE = 32768
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        Event -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.type Mozilla Event.type documentation> 
getType ::
        (MonadIO m, IsEvent self, FromJSString result) => self -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (toEvent self)))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        Event -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.target Mozilla Event.target documentation> 
getTarget ::
          (MonadIO m, IsEvent self) => self -> m (Maybe EventTarget)
getTarget self
  = liftIO (nullableToMaybe <$> (js_getTarget (toEvent self)))
 
foreign import javascript unsafe "$1[\"currentTarget\"]"
        js_getCurrentTarget :: Event -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.currentTarget Mozilla Event.currentTarget documentation> 
getCurrentTarget ::
                 (MonadIO m, IsEvent self) => self -> m (Maybe EventTarget)
getCurrentTarget self
  = liftIO (nullableToMaybe <$> (js_getCurrentTarget (toEvent self)))
 
foreign import javascript unsafe "$1[\"eventPhase\"]"
        js_getEventPhase :: Event -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.eventPhase Mozilla Event.eventPhase documentation> 
getEventPhase :: (MonadIO m, IsEvent self) => self -> m Word
getEventPhase self = liftIO (js_getEventPhase (toEvent self))
 
foreign import javascript unsafe "($1[\"bubbles\"] ? 1 : 0)"
        js_getBubbles :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.bubbles Mozilla Event.bubbles documentation> 
getBubbles :: (MonadIO m, IsEvent self) => self -> m Bool
getBubbles self = liftIO (js_getBubbles (toEvent self))
 
foreign import javascript unsafe "($1[\"cancelable\"] ? 1 : 0)"
        js_getCancelable :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelable Mozilla Event.cancelable documentation> 
getCancelable :: (MonadIO m, IsEvent self) => self -> m Bool
getCancelable self = liftIO (js_getCancelable (toEvent self))
 
foreign import javascript unsafe "$1[\"timeStamp\"]"
        js_getTimeStamp :: Event -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.timeStamp Mozilla Event.timeStamp documentation> 
getTimeStamp :: (MonadIO m, IsEvent self) => self -> m Word
getTimeStamp self = liftIO (js_getTimeStamp (toEvent self))
 
foreign import javascript unsafe
        "($1[\"defaultPrevented\"] ? 1 : 0)" js_getDefaultPrevented ::
        Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.defaultPrevented Mozilla Event.defaultPrevented documentation> 
getDefaultPrevented :: (MonadIO m, IsEvent self) => self -> m Bool
getDefaultPrevented self
  = liftIO (js_getDefaultPrevented (toEvent self))
 
foreign import javascript unsafe "$1[\"srcElement\"]"
        js_getSrcElement :: Event -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.srcElement Mozilla Event.srcElement documentation> 
getSrcElement ::
              (MonadIO m, IsEvent self) => self -> m (Maybe EventTarget)
getSrcElement self
  = liftIO (nullableToMaybe <$> (js_getSrcElement (toEvent self)))
 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        js_setReturnValue :: Event -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.returnValue Mozilla Event.returnValue documentation> 
setReturnValue :: (MonadIO m, IsEvent self) => self -> Bool -> m ()
setReturnValue self val
  = liftIO (js_setReturnValue (toEvent self) val)
 
foreign import javascript unsafe "($1[\"returnValue\"] ? 1 : 0)"
        js_getReturnValue :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.returnValue Mozilla Event.returnValue documentation> 
getReturnValue :: (MonadIO m, IsEvent self) => self -> m Bool
getReturnValue self = liftIO (js_getReturnValue (toEvent self))
 
foreign import javascript unsafe "$1[\"cancelBubble\"] = $2;"
        js_setCancelBubble :: Event -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelBubble Mozilla Event.cancelBubble documentation> 
setCancelBubble ::
                (MonadIO m, IsEvent self) => self -> Bool -> m ()
setCancelBubble self val
  = liftIO (js_setCancelBubble (toEvent self) val)
 
foreign import javascript unsafe "($1[\"cancelBubble\"] ? 1 : 0)"
        js_getCancelBubble :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelBubble Mozilla Event.cancelBubble documentation> 
getCancelBubble :: (MonadIO m, IsEvent self) => self -> m Bool
getCancelBubble self = liftIO (js_getCancelBubble (toEvent self))
 
foreign import javascript unsafe "$1[\"clipboardData\"]"
        js_getClipboardData :: Event -> IO (Nullable DataTransfer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.clipboardData Mozilla Event.clipboardData documentation> 
getClipboardData ::
                 (MonadIO m, IsEvent self) => self -> m (Maybe DataTransfer)
getClipboardData self
  = liftIO (nullableToMaybe <$> (js_getClipboardData (toEvent self)))