{-# LANGUAGE ConstraintKinds #-}
{- | 'EventM' provides a convenient monadic interface for handling DOM events.

The <https://developer.mozilla.org/en-US/docs/Web/API/Event DOM Event interface>
is exposed, as well as functions for accessing UIEvents and MouseEvents.
-}
module GHCJS.DOM.EventM
(
-- $doc
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
, onSync
, onAsync
, onTheseSync
, onTheseAsync
-- * Event interface
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
-- * UIEvent helpers
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
-- * MouseEvent helpers
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
)
where
import           Control.Applicative ((<$>))
import           Control.Monad.Trans.Reader (ReaderT, ask, runReaderT)
import           Control.Monad.IO.Class (MonadIO(..))
import           GHCJS.DOM.Types
import qualified GHCJS.DOM.JSFFI.Generated.Event as Event
import qualified GHCJS.DOM.JSFFI.Generated.UIEvent as UIEvent
import qualified GHCJS.DOM.JSFFI.Generated.KeyboardEvent as KeyboardEvent
import qualified GHCJS.DOM.JSFFI.Generated.MouseEvent as MouseEvent
import           GHCJS.DOM.JSFFI.Generated.EventTarget
import           GHCJS.DOM.EventTargetClosures
import           Data.Word (Word)
import           Data.Foldable (forM_)
import           Data.Traversable (mapM)
import           Data.Coerce (coerce)

-- $doc
-- TODO: small tutorial w/ example function

-- | @IO@ with the current @Event@ in scope (read with 'event').
type EventM t e = ReaderT e IO

-- | See 'eventListenerNew'.
newListener :: (IsEvent e) => EventM t e () -> IO (SaferEventListener t e)
newListener f = SaferEventListener <$> eventListenerNew (runReaderT f)

-- | See 'eventListenerNewSync'.
newListenerSync :: (IsEvent e) => EventM t e () -> IO (SaferEventListener t e)
newListenerSync f = SaferEventListener <$> eventListenerNewSync (runReaderT f)

-- | See 'eventListenerNewAsync'.
newListenerAsync :: (IsEvent e) => EventM t e () -> IO (SaferEventListener t e)
newListenerAsync f = SaferEventListener <$> eventListenerNewAsync (runReaderT f)

-- | Add an EventListener to an EventTarget.
addListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> IO ()
addListener target eventName (SaferEventListener l) useCapture =
    addEventListener target (eventNameString eventName) (Just l) (Just useCapture)

-- | Remove an EventListener from an EventTarget.
removeListener :: (IsEventTarget t, IsEvent e) => t -> EventName t e -> SaferEventListener t e -> Bool -> IO ()
removeListener target eventName (SaferEventListener l) useCapture =
    removeEventListener target (eventNameString eventName) (Just l) (Just useCapture)

-- | Release the listener (deallocates callbacks).
releaseListener :: (IsEventTarget t, IsEvent e) => SaferEventListener t e -> IO ()
releaseListener (SaferEventListener l) = eventListenerRelease l

-- | Shortcut for create, add and release:
--
-- @
-- releaseAction <- on element 'GHCJS.DOM.Document.click' $ do
--     w <- 'GHCJS.DOM.currentWindowUnchecked'
--     'GHCJS.DOM.Window.alert' w "I was clicked!"
-- -- remove click handler again
-- releaseAction
-- @
on :: (IsEventTarget t, IsEvent e)
   => t             -- ^ target
   -> EventName t e -- ^ event
   -> EventM t e () -- ^ action
   -> IO (IO ())    -- ^ @IO@ action that removes the listener from the element
on target eventName@(EventNameSyncDefault _) = onSync target eventName
on target eventName@(EventNameAsyncDefault _) = onAsync target eventName

-- | Like 'on' but always uses 'newListenerSync'
onSync :: (IsEventTarget t, IsEvent e)
   => t             -- ^ target
   -> EventName t e -- ^ event
   -> EventM t e () -- ^ action
   -> IO (IO ())    -- ^ @IO@ action that removes the listener from the element
onSync target eventName callback = do
    l <- newListenerSync callback
    addListener target eventName l False
    return (removeListener target eventName l False >> releaseListener l)

-- | Like 'on' but uses 'newListenerAsync'
onAsync :: (IsEventTarget t, IsEvent e)
   => t             -- ^ target
   -> EventName t e -- ^ event
   -> EventM t e () -- ^ action
   -> IO (IO ())    -- ^ @IO@ action that removes the listener from the element
onAsync target eventName callback = do
    l <- newListenerAsync callback
    addListener target eventName l False
    return (removeListener target eventName l False >> releaseListener l)

-- | 'onSync' for multiple targets & events.
--
--   The returned @IO@ action removes them all at once.
onTheseSync :: (IsEventTarget t, IsEvent e) => [(t, EventName t e)] -> EventM t e () -> IO (IO ())
onTheseSync targetsAndEventNames callback = do
    l <- newListenerSync callback
    forM_ targetsAndEventNames $ \(target, eventName) ->
        addListener target eventName l False
    return (do
        forM_ targetsAndEventNames (\(target, eventName) ->
            removeListener target eventName l False)
        releaseListener l)

-- | 'onAsync' for multiple targets & events.
--
--   The returned @IO@ action removes them all at once.
onTheseAsync :: (IsEventTarget t, IsEvent e) => [(t, EventName t e)] -> EventM t e () -> IO (IO ())
onTheseAsync targetsAndEventNames callback = do
    l <- newListenerAsync callback
    forM_ targetsAndEventNames $ \(target, eventName) ->
        addListener target eventName l False
    return (do
        forM_ targetsAndEventNames (\(target, eventName) ->
            removeListener target eventName l False)
        releaseListener l)

event :: EventM t e e
event = ask

eventTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventTarget = event >>= (Event.getTarget)

eventTargetUnsafe :: IsEvent e => EventM t e EventTarget
eventTargetUnsafe = event >>= (Event.getTargetUnsafe)

eventTargetUnchecked :: IsEvent e => EventM t e EventTarget
eventTargetUnchecked = event >>= (Event.getTargetUnchecked)

target :: (IsEvent e, IsGObject t) => EventM t e (Maybe t)
target = eventTarget >>= mapM (liftJSM . fromJSValUnchecked . coerce)

targetUnsafe :: (IsEvent e, IsGObject t) => EventM t e t
targetUnsafe = eventTargetUnsafe >>= (liftJSM . fromJSValUnchecked . coerce)

targetUnchecked :: (IsEvent e, IsGObject t) => EventM t e t
targetUnchecked = eventTargetUnchecked >>= (liftJSM . fromJSValUnchecked . coerce)

eventCurrentTarget :: IsEvent e => EventM t e (Maybe EventTarget)
eventCurrentTarget = event >>= (Event.getCurrentTarget)

eventCurrentTargetUnsafe :: IsEvent e => EventM t e EventTarget
eventCurrentTargetUnsafe = event >>= (Event.getCurrentTargetUnsafe)

eventCurrentTargetUnchecked :: IsEvent e => EventM t e EventTarget
eventCurrentTargetUnchecked = event >>= (Event.getCurrentTargetUnchecked)

eventPhase :: IsEvent e => EventM t e Word
eventPhase = event >>= (Event.getEventPhase)

bubbles :: IsEvent e => EventM t e Bool
bubbles = event >>= (Event.getBubbles)

cancelable :: IsEvent e => EventM t e Bool
cancelable = event >>= (Event.getCancelable)

timeStamp :: IsEvent e => EventM t e Double
timeStamp = event >>= (Event.getTimeStamp)

stopPropagation :: IsEvent e => EventM t e ()
stopPropagation = event >>= (Event.stopPropagation)

preventDefault :: IsEvent e => EventM t e ()
preventDefault = event >>= (Event.preventDefault)

defaultPrevented :: IsEvent e => EventM t e Bool
defaultPrevented = event >>= (Event.getDefaultPrevented)

stopImmediatePropagation :: IsEvent e => EventM t e ()
stopImmediatePropagation = event >>= (Event.stopImmediatePropagation)

srcElement :: IsEvent e => EventM t e (Maybe EventTarget)
srcElement = event >>= (Event.getSrcElement)

getCancelBubble :: IsEvent e => EventM t e Bool
getCancelBubble = event >>= (Event.getCancelBubble)

cancelBubble :: IsEvent e => Bool -> EventM t e ()
cancelBubble f = event >>= (flip Event.setCancelBubble f)

getReturnValue :: IsEvent e => EventM t e Bool
getReturnValue = event >>= (Event.getReturnValue)

returnValue :: IsEvent e => Bool -> EventM t e ()
returnValue f = event >>= (flip Event.setReturnValue f)

uiView :: IsUIEvent e => EventM t e (Maybe Window)
uiView = event >>= (UIEvent.getView)

uiDetail :: IsUIEvent e => EventM t e Int
uiDetail = event >>= (UIEvent.getDetail)

uiKeyCode :: EventM t KeyboardEvent Word
uiKeyCode = event >>= (KeyboardEvent.getKeyCode)

uiCharCode :: EventM t KeyboardEvent Word
uiCharCode = event >>= (KeyboardEvent.getCharCode)

-- layerX/layerY and pageX/pageY are MouseEvent attributes in current specs
-- (they were on UIEvent in WebKit).

uiLayerX :: IsMouseEvent e => EventM t e Int
uiLayerX = event >>= (MouseEvent.getLayerX)

uiLayerY :: IsMouseEvent e => EventM t e Int
uiLayerY = event >>= (MouseEvent.getLayerY)

uiLayerXY :: IsMouseEvent e => EventM t e (Int, Int)
uiLayerXY = do
    e <- event
    x <- MouseEvent.getLayerX e
    y <- MouseEvent.getLayerY e
    return (x, y)

uiPageX :: IsMouseEvent e => EventM t e Double
uiPageX = event >>= (MouseEvent.getPageX)

uiPageY :: IsMouseEvent e => EventM t e Double
uiPageY = event >>= (MouseEvent.getPageY)

uiPageXY :: IsMouseEvent e => EventM t e (Double, Double)
uiPageXY = do
    e <- event
    x <- MouseEvent.getPageX e
    y <- MouseEvent.getPageY e
    return (x, y)

uiWhich :: IsUIEvent e => EventM t e Word
uiWhich = event >>= (UIEvent.getWhich)

mouseScreenX :: IsMouseEvent e => EventM t e Int
mouseScreenX = event >>= (MouseEvent.getScreenX)

mouseScreenY :: IsMouseEvent e => EventM t e Int
mouseScreenY = event >>= (MouseEvent.getScreenY)

mouseScreenXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseScreenXY = do
    e <- event
    x <- MouseEvent.getScreenX e
    y <- MouseEvent.getScreenY e
    return (x, y)

mouseClientX :: IsMouseEvent e => EventM t e Int
mouseClientX = event >>= (MouseEvent.getClientX)

mouseClientY :: IsMouseEvent e => EventM t e Int
mouseClientY = event >>= (MouseEvent.getClientY)

mouseClientXY :: IsMouseEvent e => EventM t e (Int, Int)
mouseClientXY = do
    e <- event
    x <- MouseEvent.getClientX e
    y <- MouseEvent.getClientY e
    return (x, y)

mouseMovementX :: IsMouseEvent e => EventM t e Double
mouseMovementX = event >>= (MouseEvent.getMovementX)

mouseMovementY :: IsMouseEvent e => EventM t e Double
mouseMovementY = event >>= (MouseEvent.getMovementY)

mouseMovementXY :: IsMouseEvent e => EventM t e (Double, Double)
mouseMovementXY = do
    e <- event
    x <- MouseEvent.getMovementX e
    y <- MouseEvent.getMovementY e
    return (x, y)

mouseCtrlKey :: IsMouseEvent e => EventM t e Bool
mouseCtrlKey = event >>= (MouseEvent.getCtrlKey)

mouseShiftKey :: IsMouseEvent e => EventM t e Bool
mouseShiftKey = event >>= (MouseEvent.getShiftKey)

mouseAltKey :: IsMouseEvent e => EventM t e Bool
mouseAltKey = event >>= (MouseEvent.getAltKey)

mouseMetaKey :: IsMouseEvent e => EventM t e Bool
mouseMetaKey = event >>= (MouseEvent.getMetaKey)

mouseButton :: IsMouseEvent e => EventM t e Int
mouseButton = event >>= (MouseEvent.getButton)

mouseRelatedTarget :: IsMouseEvent e => EventM t e (Maybe EventTarget)
mouseRelatedTarget = event >>= (MouseEvent.getRelatedTarget)

mouseOffsetX :: IsMouseEvent e => EventM t e Double
mouseOffsetX = event >>= (MouseEvent.getOffsetX)

mouseOffsetY :: IsMouseEvent e => EventM t e Double
mouseOffsetY = event >>= (MouseEvent.getOffsetY)

mouseOffsetXY :: IsMouseEvent e => EventM t e (Double, Double)
mouseOffsetXY = do
    e <- event
    x <- MouseEvent.getOffsetX e
    y <- MouseEvent.getOffsetY e
    return (x, y)

mouseX :: IsMouseEvent e => EventM t e Double
mouseX = event >>= (MouseEvent.getX)

mouseY :: IsMouseEvent e => EventM t e Double
mouseY = event >>= (MouseEvent.getY)

mouseXY :: IsMouseEvent e => EventM t e (Double, Double)
mouseXY = do
    e <- event
    x <- MouseEvent.getX e
    y <- MouseEvent.getY e
    return (x, y)

