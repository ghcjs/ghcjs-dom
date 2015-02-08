{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MouseEvent
       (ghcjs_dom_mouse_event_init_mouse_event, mouseEventInitMouseEvent,
        ghcjs_dom_mouse_event_get_screen_x, mouseEventGetScreenX,
        ghcjs_dom_mouse_event_get_screen_y, mouseEventGetScreenY,
        ghcjs_dom_mouse_event_get_client_x, mouseEventGetClientX,
        ghcjs_dom_mouse_event_get_client_y, mouseEventGetClientY,
        ghcjs_dom_mouse_event_get_ctrl_key, mouseEventGetCtrlKey,
        ghcjs_dom_mouse_event_get_shift_key, mouseEventGetShiftKey,
        ghcjs_dom_mouse_event_get_alt_key, mouseEventGetAltKey,
        ghcjs_dom_mouse_event_get_meta_key, mouseEventGetMetaKey,
        ghcjs_dom_mouse_event_get_button, mouseEventGetButton,
        ghcjs_dom_mouse_event_get_related_target,
        mouseEventGetRelatedTarget, ghcjs_dom_mouse_event_get_movement_x,
        mouseEventGetMovementX, ghcjs_dom_mouse_event_get_movement_y,
        mouseEventGetMovementY, ghcjs_dom_mouse_event_get_offset_x,
        mouseEventGetOffsetX, ghcjs_dom_mouse_event_get_offset_y,
        mouseEventGetOffsetY, ghcjs_dom_mouse_event_get_x, mouseEventGetX,
        ghcjs_dom_mouse_event_get_y, mouseEventGetY,
        ghcjs_dom_mouse_event_get_from_element, mouseEventGetFromElement,
        ghcjs_dom_mouse_event_get_to_element, mouseEventGetToElement,
        MouseEvent, IsMouseEvent, castToMouseEvent, gTypeMouseEvent,
        toMouseEvent)
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

 
foreign import javascript unsafe
        "$1[\"initMouseEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12, $13, $14, $15, $16)"
        ghcjs_dom_mouse_event_init_mouse_event ::
        JSRef MouseEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef DOMWindow ->
                  Int ->
                    Int ->
                      Int ->
                        Int ->
                          Int ->
                            Bool -> Bool -> Bool -> Bool -> Word -> JSRef EventTarget -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.initMouseEvent Mozilla MouseEvent.initMouseEvent documentation> 
mouseEventInitMouseEvent ::
                         (MonadIO m, IsMouseEvent self, ToJSString type', IsDOMWindow view,
                          IsEventTarget relatedTarget) =>
                           self ->
                             type' ->
                               Bool ->
                                 Bool ->
                                   Maybe view ->
                                     Int ->
                                       Int ->
                                         Int ->
                                           Int ->
                                             Int ->
                                               Bool ->
                                                 Bool ->
                                                   Bool ->
                                                     Bool -> Word -> Maybe relatedTarget -> m ()
mouseEventInitMouseEvent self type' canBubble cancelable view
  detail screenX screenY clientX clientY ctrlKey altKey shiftKey
  metaKey button relatedTarget
  = liftIO
      (ghcjs_dom_mouse_event_init_mouse_event
         (unMouseEvent (toMouseEvent self))
         (toJSString type')
         canBubble
         cancelable
         (maybe jsNull (unDOMWindow . toDOMWindow) view)
         detail
         screenX
         screenY
         clientX
         clientY
         ctrlKey
         altKey
         shiftKey
         metaKey
         button
         (maybe jsNull (unEventTarget . toEventTarget) relatedTarget))
 
foreign import javascript unsafe "$1[\"screenX\"]"
        ghcjs_dom_mouse_event_get_screen_x :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.screenX Mozilla MouseEvent.screenX documentation> 
mouseEventGetScreenX ::
                     (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetScreenX self
  = liftIO
      (ghcjs_dom_mouse_event_get_screen_x
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"screenY\"]"
        ghcjs_dom_mouse_event_get_screen_y :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.screenY Mozilla MouseEvent.screenY documentation> 
mouseEventGetScreenY ::
                     (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetScreenY self
  = liftIO
      (ghcjs_dom_mouse_event_get_screen_y
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"clientX\"]"
        ghcjs_dom_mouse_event_get_client_x :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.clientX Mozilla MouseEvent.clientX documentation> 
mouseEventGetClientX ::
                     (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetClientX self
  = liftIO
      (ghcjs_dom_mouse_event_get_client_x
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"clientY\"]"
        ghcjs_dom_mouse_event_get_client_y :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.clientY Mozilla MouseEvent.clientY documentation> 
mouseEventGetClientY ::
                     (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetClientY self
  = liftIO
      (ghcjs_dom_mouse_event_get_client_y
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        ghcjs_dom_mouse_event_get_ctrl_key :: JSRef MouseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.ctrlKey Mozilla MouseEvent.ctrlKey documentation> 
mouseEventGetCtrlKey ::
                     (MonadIO m, IsMouseEvent self) => self -> m Bool
mouseEventGetCtrlKey self
  = liftIO
      (ghcjs_dom_mouse_event_get_ctrl_key
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        ghcjs_dom_mouse_event_get_shift_key :: JSRef MouseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.shiftKey Mozilla MouseEvent.shiftKey documentation> 
mouseEventGetShiftKey ::
                      (MonadIO m, IsMouseEvent self) => self -> m Bool
mouseEventGetShiftKey self
  = liftIO
      (ghcjs_dom_mouse_event_get_shift_key
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        ghcjs_dom_mouse_event_get_alt_key :: JSRef MouseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.altKey Mozilla MouseEvent.altKey documentation> 
mouseEventGetAltKey ::
                    (MonadIO m, IsMouseEvent self) => self -> m Bool
mouseEventGetAltKey self
  = liftIO
      (ghcjs_dom_mouse_event_get_alt_key
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        ghcjs_dom_mouse_event_get_meta_key :: JSRef MouseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.metaKey Mozilla MouseEvent.metaKey documentation> 
mouseEventGetMetaKey ::
                     (MonadIO m, IsMouseEvent self) => self -> m Bool
mouseEventGetMetaKey self
  = liftIO
      (ghcjs_dom_mouse_event_get_meta_key
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"button\"]"
        ghcjs_dom_mouse_event_get_button :: JSRef MouseEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.button Mozilla MouseEvent.button documentation> 
mouseEventGetButton ::
                    (MonadIO m, IsMouseEvent self) => self -> m Word
mouseEventGetButton self
  = liftIO
      (ghcjs_dom_mouse_event_get_button
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"relatedTarget\"]"
        ghcjs_dom_mouse_event_get_related_target ::
        JSRef MouseEvent -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.relatedTarget Mozilla MouseEvent.relatedTarget documentation> 
mouseEventGetRelatedTarget ::
                           (MonadIO m, IsMouseEvent self) => self -> m (Maybe EventTarget)
mouseEventGetRelatedTarget self
  = liftIO
      ((ghcjs_dom_mouse_event_get_related_target
          (unMouseEvent (toMouseEvent self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"movementX\"]"
        ghcjs_dom_mouse_event_get_movement_x :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.movementX Mozilla MouseEvent.movementX documentation> 
mouseEventGetMovementX ::
                       (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetMovementX self
  = liftIO
      (ghcjs_dom_mouse_event_get_movement_x
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"movementY\"]"
        ghcjs_dom_mouse_event_get_movement_y :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.movementY Mozilla MouseEvent.movementY documentation> 
mouseEventGetMovementY ::
                       (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetMovementY self
  = liftIO
      (ghcjs_dom_mouse_event_get_movement_y
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"offsetX\"]"
        ghcjs_dom_mouse_event_get_offset_x :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.offsetX Mozilla MouseEvent.offsetX documentation> 
mouseEventGetOffsetX ::
                     (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetOffsetX self
  = liftIO
      (ghcjs_dom_mouse_event_get_offset_x
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"offsetY\"]"
        ghcjs_dom_mouse_event_get_offset_y :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.offsetY Mozilla MouseEvent.offsetY documentation> 
mouseEventGetOffsetY ::
                     (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetOffsetY self
  = liftIO
      (ghcjs_dom_mouse_event_get_offset_y
         (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_mouse_event_get_x :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.x Mozilla MouseEvent.x documentation> 
mouseEventGetX :: (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetX self
  = liftIO
      (ghcjs_dom_mouse_event_get_x (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_mouse_event_get_y :: JSRef MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.y Mozilla MouseEvent.y documentation> 
mouseEventGetY :: (MonadIO m, IsMouseEvent self) => self -> m Int
mouseEventGetY self
  = liftIO
      (ghcjs_dom_mouse_event_get_y (unMouseEvent (toMouseEvent self)))
 
foreign import javascript unsafe "$1[\"fromElement\"]"
        ghcjs_dom_mouse_event_get_from_element ::
        JSRef MouseEvent -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.fromElement Mozilla MouseEvent.fromElement documentation> 
mouseEventGetFromElement ::
                         (MonadIO m, IsMouseEvent self) => self -> m (Maybe Node)
mouseEventGetFromElement self
  = liftIO
      ((ghcjs_dom_mouse_event_get_from_element
          (unMouseEvent (toMouseEvent self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"toElement\"]"
        ghcjs_dom_mouse_event_get_to_element ::
        JSRef MouseEvent -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.toElement Mozilla MouseEvent.toElement documentation> 
mouseEventGetToElement ::
                       (MonadIO m, IsMouseEvent self) => self -> m (Maybe Node)
mouseEventGetToElement self
  = liftIO
      ((ghcjs_dom_mouse_event_get_to_element
          (unMouseEvent (toMouseEvent self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.MouseEvent (
  module Graphics.UI.Gtk.WebKit.DOM.MouseEvent
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MouseEvent
#endif
