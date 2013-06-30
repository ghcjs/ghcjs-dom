{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.KeyboardEvent
       (webkit_dom_keyboard_event_get_modifier_state,
        keyboardEventGetModifierState,
        webkit_dom_keyboard_event_init_keyboard_event,
        keyboardEventInitKeyboardEvent, cKEY_LOCATION_STANDARD,
        cKEY_LOCATION_LEFT, cKEY_LOCATION_RIGHT, cKEY_LOCATION_NUMPAD,
        webkit_dom_keyboard_event_get_key_identifier,
        keyboardEventGetKeyIdentifier,
        webkit_dom_keyboard_event_get_key_location,
        keyboardEventGetKeyLocation,
        webkit_dom_keyboard_event_get_ctrl_key, keyboardEventGetCtrlKey,
        webkit_dom_keyboard_event_get_shift_key, keyboardEventGetShiftKey,
        webkit_dom_keyboard_event_get_alt_key, keyboardEventGetAltKey,
        webkit_dom_keyboard_event_get_meta_key, keyboardEventGetMetaKey,
        webkit_dom_keyboard_event_get_alt_graph_key,
        keyboardEventGetAltGraphKey,
        webkit_dom_keyboard_event_get_key_code, keyboardEventGetKeyCode,
        webkit_dom_keyboard_event_get_char_code, keyboardEventGetCharCode)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"getModifierState\"]($2) ? 1 : 0)"
        webkit_dom_keyboard_event_get_modifier_state ::
        JSRef KeyboardEvent -> JSString -> IO JSBool
#else 
webkit_dom_keyboard_event_get_modifier_state ::
                                               JSRef KeyboardEvent -> JSString -> IO JSBool
webkit_dom_keyboard_event_get_modifier_state = undefined
#endif
 
keyboardEventGetModifierState ::
                              (KeyboardEventClass self, ToJSString keyIdentifierArg) =>
                                self -> keyIdentifierArg -> IO Bool
keyboardEventGetModifierState self keyIdentifierArg
  = fromJSBool <$>
      (webkit_dom_keyboard_event_get_modifier_state
         (unKeyboardEvent (toKeyboardEvent self))
         (toJSString keyIdentifierArg))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"initKeyboardEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11, $12)"
        webkit_dom_keyboard_event_init_keyboard_event ::
        JSRef KeyboardEvent ->
          JSString ->
            JSBool ->
              JSBool ->
                JSRef DOMWindow ->
                  JSString ->
                    Word -> JSBool -> JSBool -> JSBool -> JSBool -> JSBool -> IO ()
#else 
webkit_dom_keyboard_event_init_keyboard_event ::
                                                JSRef KeyboardEvent ->
                                                  JSString ->
                                                    JSBool ->
                                                      JSBool ->
                                                        JSRef DOMWindow ->
                                                          JSString ->
                                                            Word ->
                                                              JSBool ->
                                                                JSBool ->
                                                                  JSBool ->
                                                                    JSBool -> JSBool -> IO ()
webkit_dom_keyboard_event_init_keyboard_event = undefined
#endif
 
keyboardEventInitKeyboardEvent ::
                               (KeyboardEventClass self, ToJSString type', DOMWindowClass view,
                                ToJSString keyIdentifier) =>
                                 self ->
                                   type' ->
                                     Bool ->
                                       Bool ->
                                         Maybe view ->
                                           keyIdentifier ->
                                             Word -> Bool -> Bool -> Bool -> Bool -> Bool -> IO ()
keyboardEventInitKeyboardEvent self type' canBubble cancelable view
  keyIdentifier keyLocation ctrlKey altKey shiftKey metaKey
  altGraphKey
  = webkit_dom_keyboard_event_init_keyboard_event
      (unKeyboardEvent (toKeyboardEvent self))
      (toJSString type')
      (toJSBool canBubble)
      (toJSBool cancelable)
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      (toJSString keyIdentifier)
      keyLocation
      (toJSBool ctrlKey)
      (toJSBool altKey)
      (toJSBool shiftKey)
      (toJSBool metaKey)
      (toJSBool altGraphKey)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"initKeyboardEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11)"
        webkit_dom_keyboard_event_init_keyboard_event ::
        JSRef KeyboardEvent ->
          JSString ->
            JSBool ->
              JSBool ->
                JSRef DOMWindow ->
                  JSString -> Word -> JSBool -> JSBool -> JSBool -> JSBool -> IO ()
#else 
webkit_dom_keyboard_event_init_keyboard_event ::
                                                JSRef KeyboardEvent ->
                                                  JSString ->
                                                    JSBool ->
                                                      JSBool ->
                                                        JSRef DOMWindow ->
                                                          JSString ->
                                                            Word ->
                                                              JSBool ->
                                                                JSBool -> JSBool -> JSBool -> IO ()
webkit_dom_keyboard_event_init_keyboard_event = undefined
#endif
 
keyboardEventInitKeyboardEvent ::
                               (KeyboardEventClass self, ToJSString type', DOMWindowClass view,
                                ToJSString keyIdentifier) =>
                                 self ->
                                   type' ->
                                     Bool ->
                                       Bool ->
                                         Maybe view ->
                                           keyIdentifier ->
                                             Word -> Bool -> Bool -> Bool -> Bool -> IO ()
keyboardEventInitKeyboardEvent self type' canBubble cancelable view
  keyIdentifier keyLocation ctrlKey altKey shiftKey metaKey
  = webkit_dom_keyboard_event_init_keyboard_event
      (unKeyboardEvent (toKeyboardEvent self))
      (toJSString type')
      (toJSBool canBubble)
      (toJSBool cancelable)
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      (toJSString keyIdentifier)
      keyLocation
      (toJSBool ctrlKey)
      (toJSBool altKey)
      (toJSBool shiftKey)
      (toJSBool metaKey)
cKEY_LOCATION_STANDARD = 0
cKEY_LOCATION_LEFT = 1
cKEY_LOCATION_RIGHT = 2
cKEY_LOCATION_NUMPAD = 3


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keyIdentifier\"]"
        webkit_dom_keyboard_event_get_key_identifier ::
        JSRef KeyboardEvent -> IO JSString
#else 
webkit_dom_keyboard_event_get_key_identifier ::
                                               JSRef KeyboardEvent -> IO JSString
webkit_dom_keyboard_event_get_key_identifier = undefined
#endif
 
keyboardEventGetKeyIdentifier ::
                              (KeyboardEventClass self, FromJSString result) => self -> IO result
keyboardEventGetKeyIdentifier self
  = fromJSString <$>
      (webkit_dom_keyboard_event_get_key_identifier
         (unKeyboardEvent (toKeyboardEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keyLocation\"]"
        webkit_dom_keyboard_event_get_key_location ::
        JSRef KeyboardEvent -> IO Word
#else 
webkit_dom_keyboard_event_get_key_location ::
                                             JSRef KeyboardEvent -> IO Word
webkit_dom_keyboard_event_get_key_location = undefined
#endif
 
keyboardEventGetKeyLocation ::
                            (KeyboardEventClass self) => self -> IO Word
keyboardEventGetKeyLocation self
  = webkit_dom_keyboard_event_get_key_location
      (unKeyboardEvent (toKeyboardEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        webkit_dom_keyboard_event_get_ctrl_key ::
        JSRef KeyboardEvent -> IO JSBool
#else 
webkit_dom_keyboard_event_get_ctrl_key ::
                                         JSRef KeyboardEvent -> IO JSBool
webkit_dom_keyboard_event_get_ctrl_key = undefined
#endif
 
keyboardEventGetCtrlKey ::
                        (KeyboardEventClass self) => self -> IO Bool
keyboardEventGetCtrlKey self
  = fromJSBool <$>
      (webkit_dom_keyboard_event_get_ctrl_key
         (unKeyboardEvent (toKeyboardEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        webkit_dom_keyboard_event_get_shift_key ::
        JSRef KeyboardEvent -> IO JSBool
#else 
webkit_dom_keyboard_event_get_shift_key ::
                                          JSRef KeyboardEvent -> IO JSBool
webkit_dom_keyboard_event_get_shift_key = undefined
#endif
 
keyboardEventGetShiftKey ::
                         (KeyboardEventClass self) => self -> IO Bool
keyboardEventGetShiftKey self
  = fromJSBool <$>
      (webkit_dom_keyboard_event_get_shift_key
         (unKeyboardEvent (toKeyboardEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        webkit_dom_keyboard_event_get_alt_key ::
        JSRef KeyboardEvent -> IO JSBool
#else 
webkit_dom_keyboard_event_get_alt_key ::
                                        JSRef KeyboardEvent -> IO JSBool
webkit_dom_keyboard_event_get_alt_key = undefined
#endif
 
keyboardEventGetAltKey ::
                       (KeyboardEventClass self) => self -> IO Bool
keyboardEventGetAltKey self
  = fromJSBool <$>
      (webkit_dom_keyboard_event_get_alt_key
         (unKeyboardEvent (toKeyboardEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        webkit_dom_keyboard_event_get_meta_key ::
        JSRef KeyboardEvent -> IO JSBool
#else 
webkit_dom_keyboard_event_get_meta_key ::
                                         JSRef KeyboardEvent -> IO JSBool
webkit_dom_keyboard_event_get_meta_key = undefined
#endif
 
keyboardEventGetMetaKey ::
                        (KeyboardEventClass self) => self -> IO Bool
keyboardEventGetMetaKey self
  = fromJSBool <$>
      (webkit_dom_keyboard_event_get_meta_key
         (unKeyboardEvent (toKeyboardEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"altGraphKey\"] ? 1 : 0)"
        webkit_dom_keyboard_event_get_alt_graph_key ::
        JSRef KeyboardEvent -> IO JSBool
#else 
webkit_dom_keyboard_event_get_alt_graph_key ::
                                              JSRef KeyboardEvent -> IO JSBool
webkit_dom_keyboard_event_get_alt_graph_key = undefined
#endif
 
keyboardEventGetAltGraphKey ::
                            (KeyboardEventClass self) => self -> IO Bool
keyboardEventGetAltGraphKey self
  = fromJSBool <$>
      (webkit_dom_keyboard_event_get_alt_graph_key
         (unKeyboardEvent (toKeyboardEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keyCode\"]"
        webkit_dom_keyboard_event_get_key_code ::
        JSRef KeyboardEvent -> IO Int
#else 
webkit_dom_keyboard_event_get_key_code ::
                                         JSRef KeyboardEvent -> IO Int
webkit_dom_keyboard_event_get_key_code = undefined
#endif
 
keyboardEventGetKeyCode ::
                        (KeyboardEventClass self) => self -> IO Int
keyboardEventGetKeyCode self
  = webkit_dom_keyboard_event_get_key_code
      (unKeyboardEvent (toKeyboardEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charCode\"]"
        webkit_dom_keyboard_event_get_char_code ::
        JSRef KeyboardEvent -> IO Int
#else 
webkit_dom_keyboard_event_get_char_code ::
                                          JSRef KeyboardEvent -> IO Int
webkit_dom_keyboard_event_get_char_code = undefined
#endif
 
keyboardEventGetCharCode ::
                         (KeyboardEventClass self) => self -> IO Int
keyboardEventGetCharCode self
  = webkit_dom_keyboard_event_get_char_code
      (unKeyboardEvent (toKeyboardEvent self))