{-# LANGUAGE ConstraintKinds #-}
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

type Signal target callback = target -> callback -> IO (IO ())

type EventM e t a = ReaderT (t, e) IO a

target :: EventM e t t
target = fst <$> ask

event :: EventM e t e
event = snd <$> ask

eventTarget :: IsEvent e => EventM e t (Maybe EventTarget)
eventTarget = event >>= (liftIO . eventGetTarget)

eventCurrentTarget :: IsEvent e => EventM e t (Maybe EventTarget)
eventCurrentTarget = event >>= (liftIO . eventGetCurrentTarget)

eventPhase :: IsEvent e => EventM e t Word
eventPhase = event >>= (liftIO . eventGetEventPhase)

bubbles :: IsEvent e => EventM e t Bool
bubbles = event >>= (liftIO . eventGetBubbles)

cancelable :: IsEvent e => EventM e t Bool
cancelable = event >>= (liftIO . eventGetCancelable)

timeStamp :: IsEvent e => EventM e t Word
timeStamp = event >>= (liftIO . eventGetTimeStamp)

stopPropagation :: IsEvent e => EventM e t ()
stopPropagation = event >>= (liftIO . eventStopPropagation)

preventDefault :: IsEvent e => EventM e t ()
preventDefault = event >>= (liftIO . eventPreventDefault)

defaultPrevented :: IsEvent e => EventM e t Bool
defaultPrevented = event >>= (liftIO . eventGetDefaultPrevented)

stopImmediatePropagation :: IsEvent e => EventM e t ()
stopImmediatePropagation = event >>= (liftIO . eventStopImmediatePropagation)

srcElement :: IsEvent e => EventM e t (Maybe EventTarget)
srcElement = event >>= (liftIO . eventGetSrcElement)

getCancelBubble :: IsEvent e => EventM e t Bool
getCancelBubble = event >>= (liftIO . eventGetCancelBubble)

cancelBubble :: IsEvent e => Bool -> EventM e t ()
cancelBubble f = event >>= (liftIO . flip eventSetCancelBubble f)

getReturnValue :: IsEvent e => EventM e t Bool
getReturnValue = event >>= (liftIO . eventGetReturnValue)

returnValue :: IsEvent e => Bool -> EventM e t ()
returnValue f = event >>= (liftIO . flip eventSetReturnValue f)

uiView :: IsUIEvent e => EventM e t (Maybe DOMWindow)
uiView = event >>= (liftIO . uiEventGetView)

uiDetail :: IsUIEvent e => EventM e t Int
uiDetail = event >>= (liftIO . uiEventGetDetail)

uiKeyCode :: IsUIEvent e => EventM e t Int
uiKeyCode = event >>= (liftIO . uiEventGetKeyCode)

uiCharCode :: IsUIEvent e => EventM e t Int
uiCharCode = event >>= (liftIO . uiEventGetCharCode)

uiLayerX :: IsUIEvent e => EventM e t Int
uiLayerX = event >>= (liftIO . uiEventGetLayerX)

uiLayerY :: IsUIEvent e => EventM e t Int
uiLayerY = event >>= (liftIO . uiEventGetLayerY)

uiLayerXY :: IsUIEvent e => EventM e t (Int, Int)
uiLayerXY = do
  e <- event
  liftIO $ do
    x <- uiEventGetLayerX e
    y <- uiEventGetLayerY e
    return (x, y)

uiPageX :: IsUIEvent e => EventM e t Int
uiPageX = event >>= (liftIO . uiEventGetPageX)

uiPageY :: IsUIEvent e => EventM e t Int
uiPageY = event >>= (liftIO . uiEventGetPageY)

uiPageXY :: IsUIEvent e => EventM e t (Int, Int)
uiPageXY = do
  e <- event
  liftIO $ do
    x <- uiEventGetPageX e
    y <- uiEventGetPageY e
    return (x, y)

uiWhich :: IsUIEvent e => EventM e t Int
uiWhich = event >>= (liftIO . uiEventGetWhich)

mouseScreenX :: IsMouseEvent e => EventM e t Int
mouseScreenX = event >>= (liftIO . mouseEventGetScreenX)

mouseScreenY :: IsMouseEvent e => EventM e t Int
mouseScreenY = event >>= (liftIO . mouseEventGetScreenY)

mouseScreenXY :: IsMouseEvent e => EventM e t (Int, Int)
mouseScreenXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetScreenX e
    y <- mouseEventGetScreenY e
    return (x, y)

mouseClientX :: IsMouseEvent e => EventM e t Int
mouseClientX = event >>= (liftIO . mouseEventGetClientX)

mouseClientY :: IsMouseEvent e => EventM e t Int
mouseClientY = event >>= (liftIO . mouseEventGetClientY)

mouseClientXY :: IsMouseEvent e => EventM e t (Int, Int)
mouseClientXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetClientX e
    y <- mouseEventGetClientY e
    return (x, y)

mouseWebkitMovementX :: IsMouseEvent e => EventM e t Int
mouseWebkitMovementX = event >>= (liftIO . mouseEventGetWebkitMovementX)

mouseWebkitMovementY :: IsMouseEvent e => EventM e t Int
mouseWebkitMovementY = event >>= (liftIO . mouseEventGetWebkitMovementY)

mouseWebkitMovementXY :: IsMouseEvent e => EventM e t (Int, Int)
mouseWebkitMovementXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetWebkitMovementX e
    y <- mouseEventGetWebkitMovementY e
    return (x, y)

mouseCtrlKey :: IsMouseEvent e => EventM e t Bool
mouseCtrlKey = event >>= (liftIO . mouseEventGetCtrlKey)

mouseShiftKey :: IsMouseEvent e => EventM e t Bool
mouseShiftKey = event >>= (liftIO . mouseEventGetShiftKey)

mouseAltKey :: IsMouseEvent e => EventM e t Bool
mouseAltKey = event >>= (liftIO . mouseEventGetAltKey)

mouseMetaKey :: IsMouseEvent e => EventM e t Bool
mouseMetaKey = event >>= (liftIO . mouseEventGetMetaKey)

mouseButton :: IsMouseEvent e => EventM e t Word
mouseButton = event >>= (liftIO . mouseEventGetButton)

mouseRelatedTarget :: IsMouseEvent e => EventM e t (Maybe EventTarget)
mouseRelatedTarget = event >>= (liftIO . mouseEventGetRelatedTarget)

mouseOffsetX :: IsMouseEvent e => EventM e t Int
mouseOffsetX = event >>= (liftIO . mouseEventGetOffsetX)

mouseOffsetY :: IsMouseEvent e => EventM e t Int
mouseOffsetY = event >>= (liftIO . mouseEventGetOffsetY)

mouseOffsetXY :: IsMouseEvent e => EventM e t (Int, Int)
mouseOffsetXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetOffsetX e
    y <- mouseEventGetOffsetY e
    return (x, y)

mouseX :: IsMouseEvent e => EventM e t Int
mouseX = event >>= (liftIO . mouseEventGetX)

mouseY :: IsMouseEvent e => EventM e t Int
mouseY = event >>= (liftIO . mouseEventGetY)

mouseXY :: IsMouseEvent e => EventM e t (Int, Int)
mouseXY = do
  e <- event
  liftIO $ do
    x <- mouseEventGetX e
    y <- mouseEventGetY e
    return (x, y)

mouseFromElement :: IsMouseEvent e => EventM e t (Maybe Node)
mouseFromElement = event >>= (liftIO . mouseEventGetFromElement)

mouseToElement :: IsMouseEvent e => EventM e t (Maybe Node)
mouseToElement = event >>= (liftIO . mouseEventGetToElement)

connect :: (GObjectClass t, IsEvent e) => String -> t -> EventM e t () -> IO (IO ())
connect eventName target callback =
  eventTargetAddEventListener target eventName False $ curry (runReaderT callback)
