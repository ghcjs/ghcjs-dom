{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.MouseEvent
       (webkit_dom_mouse_event_init_mouse_event, mouseEventInitMouseEvent,
        webkit_dom_mouse_event_get_screen_x, mouseEventGetScreenX,
        webkit_dom_mouse_event_get_screen_y, mouseEventGetScreenY,
        webkit_dom_mouse_event_get_client_x, mouseEventGetClientX,
        webkit_dom_mouse_event_get_client_y, mouseEventGetClientY,
        webkit_dom_mouse_event_get_webkit_movement_x,
        mouseEventGetWebkitMovementX,
        webkit_dom_mouse_event_get_webkit_movement_y,
        mouseEventGetWebkitMovementY, webkit_dom_mouse_event_get_ctrl_key,
        mouseEventGetCtrlKey, webkit_dom_mouse_event_get_shift_key,
        mouseEventGetShiftKey, webkit_dom_mouse_event_get_alt_key,
        mouseEventGetAltKey, webkit_dom_mouse_event_get_meta_key,
        mouseEventGetMetaKey, webkit_dom_mouse_event_get_button,
        mouseEventGetButton, webkit_dom_mouse_event_get_related_target,
        mouseEventGetRelatedTarget, webkit_dom_mouse_event_get_offset_x,
        mouseEventGetOffsetX, webkit_dom_mouse_event_get_offset_y,
        mouseEventGetOffsetY, webkit_dom_mouse_event_get_x, mouseEventGetX,
        webkit_dom_mouse_event_get_y, mouseEventGetY,
        webkit_dom_mouse_event_get_from_element, mouseEventGetFromElement,
        webkit_dom_mouse_event_get_to_element, mouseEventGetToElement)
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
foreign import javascript unsafe
        "$1[\"initMouseEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12, $13, $14, $15, $16)"
        webkit_dom_mouse_event_init_mouse_event ::
        JSRef MouseEvent ->
          JSString ->
            JSBool ->
              JSBool ->
                JSRef DOMWindow ->
                  Int ->
                    Int ->
                      Int ->
                        Int ->
                          Int ->
                            JSBool ->
                              JSBool -> JSBool -> JSBool -> Word -> JSRef EventTarget -> IO ()
#else 
webkit_dom_mouse_event_init_mouse_event ::
                                          JSRef MouseEvent ->
                                            JSString ->
                                              JSBool ->
                                                JSBool ->
                                                  JSRef DOMWindow ->
                                                    Int ->
                                                      Int ->
                                                        Int ->
                                                          Int ->
                                                            Int ->
                                                              JSBool ->
                                                                JSBool ->
                                                                  JSBool ->
                                                                    JSBool ->
                                                                      Word ->
                                                                        JSRef EventTarget -> IO ()
webkit_dom_mouse_event_init_mouse_event = undefined
#endif
 
mouseEventInitMouseEvent ::
                         (MouseEventClass self, ToJSString type', DOMWindowClass view,
                          EventTargetClass relatedTarget) =>
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
                                                     Bool -> Word -> Maybe relatedTarget -> IO ()
mouseEventInitMouseEvent self type' canBubble cancelable view
  detail screenX screenY clientX clientY ctrlKey altKey shiftKey
  metaKey button relatedTarget
  = webkit_dom_mouse_event_init_mouse_event
      (unMouseEvent (toMouseEvent self))
      (toJSString type')
      (toJSBool canBubble)
      (toJSBool cancelable)
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      detail
      screenX
      screenY
      clientX
      clientY
      (toJSBool ctrlKey)
      (toJSBool altKey)
      (toJSBool shiftKey)
      (toJSBool metaKey)
      button
      (maybe jsNull (unEventTarget . toEventTarget) relatedTarget)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"screenX\"]"
        webkit_dom_mouse_event_get_screen_x :: JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_screen_x :: JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_screen_x = undefined
#endif
 
mouseEventGetScreenX :: (MouseEventClass self) => self -> IO Int
mouseEventGetScreenX self
  = webkit_dom_mouse_event_get_screen_x
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"screenY\"]"
        webkit_dom_mouse_event_get_screen_y :: JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_screen_y :: JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_screen_y = undefined
#endif
 
mouseEventGetScreenY :: (MouseEventClass self) => self -> IO Int
mouseEventGetScreenY self
  = webkit_dom_mouse_event_get_screen_y
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clientX\"]"
        webkit_dom_mouse_event_get_client_x :: JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_client_x :: JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_client_x = undefined
#endif
 
mouseEventGetClientX :: (MouseEventClass self) => self -> IO Int
mouseEventGetClientX self
  = webkit_dom_mouse_event_get_client_x
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clientY\"]"
        webkit_dom_mouse_event_get_client_y :: JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_client_y :: JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_client_y = undefined
#endif
 
mouseEventGetClientY :: (MouseEventClass self) => self -> IO Int
mouseEventGetClientY self
  = webkit_dom_mouse_event_get_client_y
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitMovementX\"]"
        webkit_dom_mouse_event_get_webkit_movement_x ::
        JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_webkit_movement_x ::
                                               JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_webkit_movement_x = undefined
#endif
 
mouseEventGetWebkitMovementX ::
                             (MouseEventClass self) => self -> IO Int
mouseEventGetWebkitMovementX self
  = webkit_dom_mouse_event_get_webkit_movement_x
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitMovementY\"]"
        webkit_dom_mouse_event_get_webkit_movement_y ::
        JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_webkit_movement_y ::
                                               JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_webkit_movement_y = undefined
#endif
 
mouseEventGetWebkitMovementY ::
                             (MouseEventClass self) => self -> IO Int
mouseEventGetWebkitMovementY self
  = webkit_dom_mouse_event_get_webkit_movement_y
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ctrlKey\"]"
        webkit_dom_mouse_event_get_ctrl_key ::
        JSRef MouseEvent -> IO JSBool
#else 
webkit_dom_mouse_event_get_ctrl_key ::
                                      JSRef MouseEvent -> IO JSBool
webkit_dom_mouse_event_get_ctrl_key = undefined
#endif
 
mouseEventGetCtrlKey :: (MouseEventClass self) => self -> IO Bool
mouseEventGetCtrlKey self
  = fromJSBool <$>
      (webkit_dom_mouse_event_get_ctrl_key
         (unMouseEvent (toMouseEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"shiftKey\"]"
        webkit_dom_mouse_event_get_shift_key ::
        JSRef MouseEvent -> IO JSBool
#else 
webkit_dom_mouse_event_get_shift_key ::
                                       JSRef MouseEvent -> IO JSBool
webkit_dom_mouse_event_get_shift_key = undefined
#endif
 
mouseEventGetShiftKey :: (MouseEventClass self) => self -> IO Bool
mouseEventGetShiftKey self
  = fromJSBool <$>
      (webkit_dom_mouse_event_get_shift_key
         (unMouseEvent (toMouseEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"altKey\"]"
        webkit_dom_mouse_event_get_alt_key :: JSRef MouseEvent -> IO JSBool
#else 
webkit_dom_mouse_event_get_alt_key :: JSRef MouseEvent -> IO JSBool
webkit_dom_mouse_event_get_alt_key = undefined
#endif
 
mouseEventGetAltKey :: (MouseEventClass self) => self -> IO Bool
mouseEventGetAltKey self
  = fromJSBool <$>
      (webkit_dom_mouse_event_get_alt_key
         (unMouseEvent (toMouseEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"metaKey\"]"
        webkit_dom_mouse_event_get_meta_key ::
        JSRef MouseEvent -> IO JSBool
#else 
webkit_dom_mouse_event_get_meta_key ::
                                      JSRef MouseEvent -> IO JSBool
webkit_dom_mouse_event_get_meta_key = undefined
#endif
 
mouseEventGetMetaKey :: (MouseEventClass self) => self -> IO Bool
mouseEventGetMetaKey self
  = fromJSBool <$>
      (webkit_dom_mouse_event_get_meta_key
         (unMouseEvent (toMouseEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"button\"]"
        webkit_dom_mouse_event_get_button :: JSRef MouseEvent -> IO Word
#else 
webkit_dom_mouse_event_get_button :: JSRef MouseEvent -> IO Word
webkit_dom_mouse_event_get_button = undefined
#endif
 
mouseEventGetButton :: (MouseEventClass self) => self -> IO Word
mouseEventGetButton self
  = webkit_dom_mouse_event_get_button
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"relatedTarget\"]"
        webkit_dom_mouse_event_get_related_target ::
        JSRef MouseEvent -> IO (JSRef EventTarget)
#else 
webkit_dom_mouse_event_get_related_target ::
                                            JSRef MouseEvent -> IO (JSRef EventTarget)
webkit_dom_mouse_event_get_related_target = undefined
#endif
 
mouseEventGetRelatedTarget ::
                           (MouseEventClass self) => self -> IO (Maybe EventTarget)
mouseEventGetRelatedTarget self
  = fmap EventTarget . maybeJSNull <$>
      (webkit_dom_mouse_event_get_related_target
         (unMouseEvent (toMouseEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"offsetX\"]"
        webkit_dom_mouse_event_get_offset_x :: JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_offset_x :: JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_offset_x = undefined
#endif
 
mouseEventGetOffsetX :: (MouseEventClass self) => self -> IO Int
mouseEventGetOffsetX self
  = webkit_dom_mouse_event_get_offset_x
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"offsetY\"]"
        webkit_dom_mouse_event_get_offset_y :: JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_offset_y :: JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_offset_y = undefined
#endif
 
mouseEventGetOffsetY :: (MouseEventClass self) => self -> IO Int
mouseEventGetOffsetY self
  = webkit_dom_mouse_event_get_offset_y
      (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"x\"]"
        webkit_dom_mouse_event_get_x :: JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_x :: JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_x = undefined
#endif
 
mouseEventGetX :: (MouseEventClass self) => self -> IO Int
mouseEventGetX self
  = webkit_dom_mouse_event_get_x (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"y\"]"
        webkit_dom_mouse_event_get_y :: JSRef MouseEvent -> IO Int
#else 
webkit_dom_mouse_event_get_y :: JSRef MouseEvent -> IO Int
webkit_dom_mouse_event_get_y = undefined
#endif
 
mouseEventGetY :: (MouseEventClass self) => self -> IO Int
mouseEventGetY self
  = webkit_dom_mouse_event_get_y (unMouseEvent (toMouseEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"fromElement\"]"
        webkit_dom_mouse_event_get_from_element ::
        JSRef MouseEvent -> IO (JSRef Node)
#else 
webkit_dom_mouse_event_get_from_element ::
                                          JSRef MouseEvent -> IO (JSRef Node)
webkit_dom_mouse_event_get_from_element = undefined
#endif
 
mouseEventGetFromElement ::
                         (MouseEventClass self) => self -> IO (Maybe Node)
mouseEventGetFromElement self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_mouse_event_get_from_element
         (unMouseEvent (toMouseEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"toElement\"]"
        webkit_dom_mouse_event_get_to_element ::
        JSRef MouseEvent -> IO (JSRef Node)
#else 
webkit_dom_mouse_event_get_to_element ::
                                        JSRef MouseEvent -> IO (JSRef Node)
webkit_dom_mouse_event_get_to_element = undefined
#endif
 
mouseEventGetToElement ::
                       (MouseEventClass self) => self -> IO (Maybe Node)
mouseEventGetToElement self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_mouse_event_get_to_element
         (unMouseEvent (toMouseEvent self)))