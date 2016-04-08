{-# LANGUAGE ConstraintKinds #-}
module GHCJS.DOM.EventM
(
  EventM(..)
, SaferEventListener(..)
, EventName
, newListener
, newListenerSync
, newListenerAsync
, addListener
, removeListener
, releaseListener
, on
, event
, eventTarget
, target
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
import           Control.Applicative ((<$>))
import           Control.Monad.Trans.Reader (ReaderT, ask, runReaderT)
import           Control.Monad.IO.Class (MonadIO(..))
import           GHCJS.DOM.Types
import qualified GHCJS.DOM.Event as Event
import qualified GHCJS.DOM.UIEvent as UIEvent
import qualified GHCJS.DOM.MouseEvent as MouseEvent
import           GHCJS.DOM.EventTarget
import           GHCJS.DOM.EventTargetClosures
import           Data.Word (Word)
import           Data.Foldable (forM_)

type EventM t e = ReaderT e IO

newListener :: (IsEvent e) => EventM t e () -> IO (SaferEventListener t e)
newListener f = SaferEventListener <$> eventListenerNew (runReaderT f)

newListenerSync :: (IsEvent e) => EventM t e () -> IO (SaferEventListener t e)
newListenerSync f = SaferEventListener <$> eventListenerNewSync (runReaderT f)

newListenerAsync :: (IsEvent e) => EventM t e () -> IO (SaferEventListener t e)
newListenerAsync f = SaferEventListener <$> eventListenerNewAsync (runReaderT f)

addListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> IO ()
addListener target (EventName eventName) (SaferEventListener l) useCapture =
    addEventListener target eventName (Just l) useCapture

removeListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> IO ()
removeListener target (EventName eventName) (SaferEventListener l) useCapture =
    removeEventListener target eventName (Just l) useCapture

releaseListener :: (IsEventTarget t, IsEvent e) => SaferEventListener t e -> IO ()
releaseListener (SaferEventListener l) = eventListenerRelease l

on :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> EventM t e () -> IO (IO ())
on target eventName callback = do
    l <- newListener callback
    addListener target eventName l False
    return (removeListener target eventName l False >> releaseListener l)

onThese :: (IsEventTarget t, IsEvent e) => [(t, EventName t e)] -> EventM t e () -> IO (IO ())
onThese targetsAndEventNames callback = do
    l <- newListener callback
    forM_ targetsAndEventNames $ \(target, eventName) ->
        addListener target eventName l False
    return (do
        forM_ targetsAndEventNames (\(target, eventName) ->
            removeListener target eventName l False)
        releaseListener l)

event :: EventM t e e
event = ask

eventTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventTarget = event >>= Event.getTarget

target :: (IsEvent e, IsGObject t) => EventM t e (Maybe t)
target = (fmap (unsafeCastGObject . toGObject)) <$> eventTarget

eventCurrentTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventCurrentTarget = event >>= Event.getCurrentTarget

eventPhase :: IsEvent e => EventM t e Word
eventPhase = event >>= Event.getEventPhase

bubbles :: IsEvent e => EventM t e Bool
bubbles = event >>= Event.getBubbles

cancelable :: IsEvent e => EventM t e Bool
cancelable = event >>= Event.getCancelable

timeStamp :: IsEvent e => EventM t e Word
timeStamp = event >>= Event.getTimeStamp

stopPropagation :: IsEvent e => EventM t e ()
stopPropagation = event >>= Event.stopPropagation

preventDefault :: IsEvent e => EventM t e ()
preventDefault = event >>= Event.preventDefault

defaultPrevented :: IsEvent e => EventM t e Bool
defaultPrevented = event >>= Event.getDefaultPrevented

stopImmediatePropagation :: IsEvent e => EventM t e ()
stopImmediatePropagation = event >>= Event.stopImmediatePropagation

srcElement :: IsEvent e => EventM t e (Maybe EventTarget)
srcElement = event >>= Event.getSrcElement

getCancelBubble :: IsEvent e => EventM t e Bool
getCancelBubble = event >>= Event.getCancelBubble

cancelBubble :: IsEvent e => Bool -> EventM t e ()
cancelBubble f = event >>= flip Event.setCancelBubble f

getReturnValue :: IsEvent e => EventM t e Bool
getReturnValue = event >>= Event.getReturnValue

returnValue :: IsEvent e => Bool -> EventM t e ()
returnValue f = event >>= flip Event.setReturnValue f

uiView :: IsUIEvent e => EventM t e (Maybe Window)
uiView = event >>= UIEvent.getView

uiDetail :: IsUIEvent e => EventM t e Int
uiDetail = event >>= UIEvent.getDetail

uiKeyCode :: IsUIEvent e => EventM t e Int
uiKeyCode = event >>= UIEvent.getKeyCode

uiCharCode :: IsUIEvent e => EventM t e Int
uiCharCode = event >>= UIEvent.getCharCode

uiLayerX :: IsUIEvent e => EventM t e Int
uiLayerX = event >>= UIEvent.getLayerX

uiLayerY :: IsUIEvent e => EventM t e Int
uiLayerY = event >>= UIEvent.getLayerY

uiLayerXY :: IsUIEvent e => EventM t e (Int, Int)
uiLayerXY = do
    e <- event
    x <- UIEvent.getLayerX e
    y <- UIEvent.getLayerY e
    return (x, y)

uiPageX :: IsUIEvent e => EventM t e Int
uiPageX = event >>= UIEvent.getPageX

uiPageY :: IsUIEvent e => EventM t e Int
uiPageY = event >>= UIEvent.getPageY

uiPageXY :: IsUIEvent e => EventM t e (Int, Int)
uiPageXY = do
    e <- event
    x <- UIEvent.getPageX e
    y <- UIEvent.getPageY e
    return (x, y)

uiWhich :: IsUIEvent e => EventM t e Int
uiWhich = event >>= UIEvent.getWhich

mouseScreenX :: IsMouseEvent e => EventM t e Int
mouseScreenX = event >>= MouseEvent.getScreenX

mouseScreenY :: IsMouseEvent e => EventM t e Int
mouseScreenY = event >>= MouseEvent.getScreenY

mouseScreenXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseScreenXY = do
    e <- event
    x <- MouseEvent.getScreenX e
    y <- MouseEvent.getScreenY e
    return (x, y)

mouseClientX :: IsMouseEvent e => EventM t e Int
mouseClientX = event >>= MouseEvent.getClientX

mouseClientY :: IsMouseEvent e => EventM t e Int
mouseClientY = event >>= MouseEvent.getClientY

mouseClientXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseClientXY = do
    e <- event
    x <- MouseEvent.getClientX e
    y <- MouseEvent.getClientY e
    return (x, y)

mouseMovementX :: IsMouseEvent e => EventM t e Int
mouseMovementX = event >>= MouseEvent.getMovementX

mouseMovementY :: IsMouseEvent e => EventM t e Int
mouseMovementY = event >>= MouseEvent.getMovementY

mouseMovementXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseMovementXY = do
    e <- event
    x <- MouseEvent.getMovementX e
    y <- MouseEvent.getMovementY e
    return (x, y)

mouseCtrlKey :: IsMouseEvent e => EventM t e Bool
mouseCtrlKey = event >>= MouseEvent.getCtrlKey

mouseShiftKey :: IsMouseEvent e => EventM t e Bool
mouseShiftKey = event >>= MouseEvent.getShiftKey

mouseAltKey :: IsMouseEvent e => EventM t e Bool
mouseAltKey = event >>= MouseEvent.getAltKey

mouseMetaKey :: IsMouseEvent e => EventM t e Bool
mouseMetaKey = event >>= MouseEvent.getMetaKey

mouseButton :: IsMouseEvent e => EventM t e Word
mouseButton = event >>= MouseEvent.getButton

mouseRelatedTarget :: IsMouseEvent e => EventM t e (Maybe EventTarget)
mouseRelatedTarget = event >>= MouseEvent.getRelatedTarget

mouseOffsetX :: IsMouseEvent e => EventM t e Int
mouseOffsetX = event >>= MouseEvent.getOffsetX

mouseOffsetY :: IsMouseEvent e => EventM t e Int
mouseOffsetY = event >>= MouseEvent.getOffsetY

mouseOffsetXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseOffsetXY = do
    e <- event
    x <- MouseEvent.getOffsetX e
    y <- MouseEvent.getOffsetY e
    return (x, y)

mouseX :: IsMouseEvent e => EventM t e Int
mouseX = event >>= MouseEvent.getX

mouseY :: IsMouseEvent e => EventM t e Int
mouseY = event >>= MouseEvent.getY

mouseXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseXY = do
    e <- event
    x <- MouseEvent.getX e
    y <- MouseEvent.getY e
    return (x, y)

mouseFromElement :: IsMouseEvent e => EventM t e (Maybe Node)
mouseFromElement = event >>= MouseEvent.getFromElement

mouseToElement :: IsMouseEvent e => EventM t e (Maybe Node)
mouseToElement = event >>= MouseEvent.getToElement

