{-# LANGUAGE ConstraintKinds #-}
module GHCJS.DOM.EventM
(
  Signal (..)
, EventM (..)
, EventName
, unsafeEventName
, newListener
, addListener
, removeListener
, on
, event
, eventTarget
, eventCurrentTarget
, eventPhase
, bubbles
, cancelable
, timeStamp
, stopPropagation
, preventDefault
, defaultPrevented
, stopImmediatePropagation
, srcElement
, getCancelBubble
, cancelBubble
, getReturnValue
, returnValue
, uiView
, uiDetail
, uiKeyCode
, uiCharCode
, uiLayerX
, uiLayerY
, uiLayerXY
, uiPageX
, uiPageY
, uiPageXY
, uiWhich
, mouseScreenX
, mouseScreenY
, mouseScreenXY
, mouseClientX
, mouseClientY
, mouseClientXY
, mouseMovementX
, mouseMovementY
, mouseMovementXY
, mouseCtrlKey
, mouseShiftKey
, mouseAltKey
, mouseMetaKey
, mouseButton
, mouseRelatedTarget
, mouseOffsetX
, mouseOffsetY
, mouseOffsetXY
, mouseX
, mouseY
, mouseXY
, mouseFromElement
, mouseToElement
)
where
import Control.Applicative ((<$>))
import Control.Monad.Trans.Reader (ReaderT, ask, runReaderT)
import Control.Monad.IO.Class (MonadIO(..))
import GHCJS.DOM.Types
import GHCJS.DOM.Event
import GHCJS.DOM.UIEvent
import GHCJS.DOM.MouseEvent
import GHCJS.DOM.EventTarget
import GHCJS.DOM.EventTargetClosures
import Data.Word (Word)
import Data.String (IsString(..))

type Signal target callback = target -> callback -> IO (IO ())

type EventM t e = ReaderT e IO

newtype EventName t e = EventName DOMString
newtype SaferEventListener t e = SaferEventListener EventListener

unsafeEventName :: DOMString -> EventName t e
unsafeEventName = EventName

newListener :: (IsEvent e) => EventM t e () -> IO (SaferEventListener t e)
newListener f = SaferEventListener <$> eventListenerNew (runReaderT f)

addListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> IO ()
addListener target (EventName eventName) (SaferEventListener l) useCapture =
    eventTargetAddEventListener target eventName (Just l) useCapture

removeListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> IO ()
removeListener target (EventName eventName) (SaferEventListener l) useCapture =
    eventTargetRemoveEventListener target eventName (Just l) useCapture

on :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> EventM t e () -> IO (IO ())
on target eventName callback = do
    l <- newListener callback
    addListener target eventName l False
    return (removeListener target eventName l False)

target :: (IsEvent e, IsGObject t) => EventM t e (Maybe t)
target = (fmap (unsafeCastGObject . toGObject)) <$> (ask >>= eventGetTarget)

event :: EventM t e e
event = ask

eventTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventTarget = event >>= eventGetTarget

eventCurrentTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventCurrentTarget = event >>= eventGetCurrentTarget

eventPhase :: IsEvent e => EventM t e Word
eventPhase = event >>= eventGetEventPhase

bubbles :: IsEvent e => EventM t e Bool
bubbles = event >>= eventGetBubbles

cancelable :: IsEvent e => EventM t e Bool
cancelable = event >>= eventGetCancelable

timeStamp :: IsEvent e => EventM t e Word
timeStamp = event >>= eventGetTimeStamp

stopPropagation :: IsEvent e => EventM t e ()
stopPropagation = event >>= eventStopPropagation

preventDefault :: IsEvent e => EventM t e ()
preventDefault = event >>= eventPreventDefault

defaultPrevented :: IsEvent e => EventM t e Bool
defaultPrevented = event >>= eventGetDefaultPrevented

stopImmediatePropagation :: IsEvent e => EventM t e ()
stopImmediatePropagation = event >>= eventStopImmediatePropagation

srcElement :: IsEvent e => EventM t e (Maybe EventTarget)
srcElement = event >>= eventGetSrcElement

getCancelBubble :: IsEvent e => EventM t e Bool
getCancelBubble = event >>= eventGetCancelBubble

cancelBubble :: IsEvent e => Bool -> EventM t e ()
cancelBubble f = event >>= flip eventSetCancelBubble f

getReturnValue :: IsEvent e => EventM t e Bool
getReturnValue = event >>= eventGetReturnValue

returnValue :: IsEvent e => Bool -> EventM t e ()
returnValue f = event >>= flip eventSetReturnValue f

uiView :: IsUIEvent e => EventM t e (Maybe DOMWindow)
uiView = event >>= uiEventGetView

uiDetail :: IsUIEvent e => EventM t e Int
uiDetail = event >>= uiEventGetDetail

uiKeyCode :: IsUIEvent e => EventM t e Int
uiKeyCode = event >>= uiEventGetKeyCode

uiCharCode :: IsUIEvent e => EventM t e Int
uiCharCode = event >>= uiEventGetCharCode

uiLayerX :: IsUIEvent e => EventM t e Int
uiLayerX = event >>= uiEventGetLayerX

uiLayerY :: IsUIEvent e => EventM t e Int
uiLayerY = event >>= uiEventGetLayerY

uiLayerXY :: IsUIEvent e => EventM t e (Int, Int)
uiLayerXY = do
    e <- event
    x <- uiEventGetLayerX e
    y <- uiEventGetLayerY e
    return (x, y)

uiPageX :: IsUIEvent e => EventM t e Int
uiPageX = event >>= uiEventGetPageX

uiPageY :: IsUIEvent e => EventM t e Int
uiPageY = event >>= uiEventGetPageY

uiPageXY :: IsUIEvent e => EventM t e (Int, Int)
uiPageXY = do
    e <- event
    x <- uiEventGetPageX e
    y <- uiEventGetPageY e
    return (x, y)

uiWhich :: IsUIEvent e => EventM t e Int
uiWhich = event >>= uiEventGetWhich

mouseScreenX :: IsMouseEvent e => EventM t e Int
mouseScreenX = event >>= mouseEventGetScreenX

mouseScreenY :: IsMouseEvent e => EventM t e Int
mouseScreenY = event >>= mouseEventGetScreenY

mouseScreenXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseScreenXY = do
    e <- event
    x <- mouseEventGetScreenX e
    y <- mouseEventGetScreenY e
    return (x, y)

mouseClientX :: IsMouseEvent e => EventM t e Int
mouseClientX = event >>= mouseEventGetClientX

mouseClientY :: IsMouseEvent e => EventM t e Int
mouseClientY = event >>= mouseEventGetClientY

mouseClientXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseClientXY = do
    e <- event
    x <- mouseEventGetClientX e
    y <- mouseEventGetClientY e
    return (x, y)

mouseMovementX :: IsMouseEvent e => EventM t e Int
mouseMovementX = event >>= mouseEventGetMovementX

mouseMovementY :: IsMouseEvent e => EventM t e Int
mouseMovementY = event >>= mouseEventGetMovementY

mouseMovementXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseMovementXY = do
    e <- event
    x <- mouseEventGetMovementX e
    y <- mouseEventGetMovementY e
    return (x, y)

mouseCtrlKey :: IsMouseEvent e => EventM t e Bool
mouseCtrlKey = event >>= mouseEventGetCtrlKey

mouseShiftKey :: IsMouseEvent e => EventM t e Bool
mouseShiftKey = event >>= mouseEventGetShiftKey

mouseAltKey :: IsMouseEvent e => EventM t e Bool
mouseAltKey = event >>= mouseEventGetAltKey

mouseMetaKey :: IsMouseEvent e => EventM t e Bool
mouseMetaKey = event >>= mouseEventGetMetaKey

mouseButton :: IsMouseEvent e => EventM t e Word
mouseButton = event >>= mouseEventGetButton

mouseRelatedTarget :: IsMouseEvent e => EventM t e (Maybe EventTarget)
mouseRelatedTarget = event >>= mouseEventGetRelatedTarget

mouseOffsetX :: IsMouseEvent e => EventM t e Int
mouseOffsetX = event >>= mouseEventGetOffsetX

mouseOffsetY :: IsMouseEvent e => EventM t e Int
mouseOffsetY = event >>= mouseEventGetOffsetY

mouseOffsetXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseOffsetXY = do
    e <- event
    x <- mouseEventGetOffsetX e
    y <- mouseEventGetOffsetY e
    return (x, y)

mouseX :: IsMouseEvent e => EventM t e Int
mouseX = event >>= mouseEventGetX

mouseY :: IsMouseEvent e => EventM t e Int
mouseY = event >>= mouseEventGetY

mouseXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseXY = do
    e <- event
    x <- mouseEventGetX e
    y <- mouseEventGetY e
    return (x, y)

mouseFromElement :: IsMouseEvent e => EventM t e (Maybe Node)
mouseFromElement = event >>= mouseEventGetFromElement

mouseToElement :: IsMouseEvent e => EventM t e (Maybe Node)
mouseToElement = event >>= mouseEventGetToElement

