module GHCJS.DOM.EventM
(
  Signal (..)
, EventM (..)
, target
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
, mouseWebkitMovementX
, mouseWebkitMovementY
, mouseWebkitMovementXY
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
, connect
)
where
import Control.Applicative ((<$>))
import Control.Monad.Reader ( ReaderT, ask, runReaderT )
import Control.Monad.Trans ( liftIO )
import GHCJS.DOM.Types
import GHCJS.DOM.Event
import GHCJS.DOM.UIEvent
import GHCJS.DOM.MouseEvent
import GHCJS.DOM.EventTargetClosures
import Data.Word (Word)

type Signal target callback = target -> callback -> IO Bool

type EventM e t a = ReaderT (t, e) IO a

target :: EventM e t t
target = fst <$> ask

event :: EventM e t e
event = snd <$> ask

eventTarget :: EventClass e => EventM e t (Maybe EventTarget)
eventTarget = event >>= (liftIO . eventGetTarget)

eventCurrentTarget :: EventClass e => EventM e t (Maybe EventTarget)
eventCurrentTarget = event >>= (liftIO . eventGetCurrentTarget)

eventPhase :: EventClass e => EventM e t Word
eventPhase = event >>= (liftIO . eventGetEventPhase)

bubbles :: EventClass e => EventM e t Bool
bubbles = event >>= (liftIO . eventGetBubbles)

cancelable :: EventClass e => EventM e t Bool
cancelable = event >>= (liftIO . eventGetCancelable)

timeStamp :: EventClass e => EventM e t Word
timeStamp = event >>= (liftIO . eventGetTimeStamp)

stopPropagation :: EventClass e => EventM e t ()
stopPropagation = event >>= (liftIO . eventStopPropagation)

preventDefault :: EventClass e => EventM e t ()
preventDefault = event >>= (liftIO . eventPreventDefault)

defaultPrevented :: EventClass e => EventM e t Bool
defaultPrevented = event >>= (liftIO . eventGetDefaultPrevented)

stopImmediatePropagation :: EventClass e => EventM e t ()
stopImmediatePropagation = event >>= (liftIO . eventStopImmediatePropagation)

srcElement :: EventClass e => EventM e t (Maybe EventTarget)
srcElement = event >>= (liftIO . eventGetSrcElement)

getCancelBubble :: EventClass e => EventM e t Bool
getCancelBubble = event >>= (liftIO . eventGetCancelBubble)

cancelBubble :: EventClass e => Bool -> EventM e t ()
cancelBubble f = event >>= (liftIO . flip eventSetCancelBubble f)

getReturnValue :: EventClass e => EventM e t Bool
getReturnValue = event >>= (liftIO . eventGetReturnValue)

returnValue :: EventClass e => Bool -> EventM e t ()
returnValue f = event >>= (liftIO . flip eventSetReturnValue f)

uiView :: UIEventClass e => EventM e t (Maybe DOMWindow)
uiView = event >>= (liftIO . uiEventGetView)

uiDetail :: UIEventClass e => EventM e t Int
uiDetail = event >>= (liftIO . uiEventGetDetail)

uiKeyCode :: UIEventClass e => EventM e t Int
uiKeyCode = event >>= (liftIO . uiEventGetKeyCode)

uiCharCode :: UIEventClass e => EventM e t Int
uiCharCode = event >>= (liftIO . uiEventGetCharCode)

uiLayerX :: UIEventClass e => EventM e t Int
uiLayerX = event >>= (liftIO . uiEventGetLayerX)

uiLayerY :: UIEventClass e => EventM e t Int
uiLayerY = event >>= (liftIO . uiEventGetLayerY)

uiLayerXY :: UIEventClass e => EventM e t (Int, Int)
uiLayerXY = do
  e <- event
  liftIO $ do
    x <- uiEventGetLayerX e
    y <- uiEventGetLayerY e
    return (x, y)

uiPageX :: UIEventClass e => EventM e t Int
uiPageX = event >>= (liftIO . uiEventGetPageX)

uiPageY :: UIEventClass e => EventM e t Int
uiPageY = event >>= (liftIO . uiEventGetPageY)

uiPageXY :: UIEventClass e => EventM e t (Int, Int)
uiPageXY = do
  e <- event
  liftIO $ do
    x <- uiEventGetPageX e
    y <- uiEventGetPageY e
    return (x, y)

uiWhich :: UIEventClass e => EventM e t Int
uiWhich = event >>= (liftIO . uiEventGetWhich)

mouseScreenX :: MouseEventClass e => EventM e t Int
mouseScreenX = event >>= (liftIO . mouseEventGetScreenX)

mouseScreenY :: MouseEventClass e => EventM e t Int
mouseScreenY = event >>= (liftIO . mouseEventGetScreenY)

mouseScreenXY :: MouseEventClass e => EventM e t (Int, Int)
mouseScreenXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetScreenX e
    y <- mouseEventGetScreenY e
    return (x, y)

mouseClientX :: MouseEventClass e => EventM e t Int
mouseClientX = event >>= (liftIO . mouseEventGetClientX)

mouseClientY :: MouseEventClass e => EventM e t Int
mouseClientY = event >>= (liftIO . mouseEventGetClientY)

mouseClientXY :: MouseEventClass e => EventM e t (Int, Int)
mouseClientXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetClientX e
    y <- mouseEventGetClientY e
    return (x, y)

mouseWebkitMovementX :: MouseEventClass e => EventM e t Int
mouseWebkitMovementX = event >>= (liftIO . mouseEventGetWebkitMovementX)

mouseWebkitMovementY :: MouseEventClass e => EventM e t Int
mouseWebkitMovementY = event >>= (liftIO . mouseEventGetWebkitMovementY)

mouseWebkitMovementXY :: MouseEventClass e => EventM e t (Int, Int)
mouseWebkitMovementXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetWebkitMovementX e
    y <- mouseEventGetWebkitMovementY e
    return (x, y)

mouseCtrlKey :: MouseEventClass e => EventM e t Bool
mouseCtrlKey = event >>= (liftIO . mouseEventGetCtrlKey)

mouseShiftKey :: MouseEventClass e => EventM e t Bool
mouseShiftKey = event >>= (liftIO . mouseEventGetShiftKey)

mouseAltKey :: MouseEventClass e => EventM e t Bool
mouseAltKey = event >>= (liftIO . mouseEventGetAltKey)

mouseMetaKey :: MouseEventClass e => EventM e t Bool
mouseMetaKey = event >>= (liftIO . mouseEventGetMetaKey)

mouseButton :: MouseEventClass e => EventM e t Word
mouseButton = event >>= (liftIO . mouseEventGetButton)

mouseRelatedTarget :: MouseEventClass e => EventM e t (Maybe EventTarget)
mouseRelatedTarget = event >>= (liftIO . mouseEventGetRelatedTarget)

mouseOffsetX :: MouseEventClass e => EventM e t Int
mouseOffsetX = event >>= (liftIO . mouseEventGetOffsetX)

mouseOffsetY :: MouseEventClass e => EventM e t Int
mouseOffsetY = event >>= (liftIO . mouseEventGetOffsetY)

mouseOffsetXY :: MouseEventClass e => EventM e t (Int, Int)
mouseOffsetXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetOffsetX e
    y <- mouseEventGetOffsetY e
    return (x, y)

mouseX :: MouseEventClass e => EventM e t Int
mouseX = event >>= (liftIO . mouseEventGetX)

mouseY :: MouseEventClass e => EventM e t Int
mouseY = event >>= (liftIO . mouseEventGetY)

mouseXY :: MouseEventClass e => EventM e t (Int, Int)
mouseXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetX e
    y <- mouseEventGetY e
    return (x, y)

mouseFromElement :: MouseEventClass e => EventM e t (Maybe Node)
mouseFromElement = event >>= (liftIO . mouseEventGetFromElement)

mouseToElement :: MouseEventClass e => EventM e t (Maybe Node)
mouseToElement = event >>= (liftIO . mouseEventGetToElement)

connect :: (GObjectClass t, EventClass e) => String -> t -> EventM e t () -> IO Bool
connect eventName target callback =
  eventTargetAddEventListener target eventName False $ curry (runReaderT callback)
