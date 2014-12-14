{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.KeyboardEvent
       (ghcjs_dom_keyboard_event_get_modifier_state,
        keyboardEventGetModifierState,
        ghcjs_dom_keyboard_event_init_keyboard_event,
        keyboardEventInitKeyboardEvent, cKEY_LOCATION_STANDARD,
        cKEY_LOCATION_LEFT, cKEY_LOCATION_RIGHT, cKEY_LOCATION_NUMPAD,
        ghcjs_dom_keyboard_event_get_key_identifier,
        keyboardEventGetKeyIdentifier,
        ghcjs_dom_keyboard_event_get_key_location,
        keyboardEventGetKeyLocation, ghcjs_dom_keyboard_event_get_ctrl_key,
        keyboardEventGetCtrlKey, ghcjs_dom_keyboard_event_get_shift_key,
        keyboardEventGetShiftKey, ghcjs_dom_keyboard_event_get_alt_key,
        keyboardEventGetAltKey, ghcjs_dom_keyboard_event_get_meta_key,
        keyboardEventGetMetaKey,
        ghcjs_dom_keyboard_event_get_alt_graph_key,
        keyboardEventGetAltGraphKey, KeyboardEvent, IsKeyboardEvent,
        castToKeyboardEvent, gTypeKeyboardEvent, toKeyboardEvent)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "($1[\"getModifierState\"]($2) ? 1 : 0)"
        ghcjs_dom_keyboard_event_get_modifier_state ::
        JSRef KeyboardEvent -> JSString -> IO Bool
 
keyboardEventGetModifierState ::
                              (IsKeyboardEvent self, ToJSString keyIdentifierArg) =>
                                self -> keyIdentifierArg -> IO Bool
keyboardEventGetModifierState self keyIdentifierArg
  = ghcjs_dom_keyboard_event_get_modifier_state
      (unKeyboardEvent (toKeyboardEvent self))
      (toJSString keyIdentifierArg)
 
foreign import javascript unsafe
        "$1[\"initKeyboardEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11, $12)"
        ghcjs_dom_keyboard_event_init_keyboard_event ::
        JSRef KeyboardEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef DOMWindow ->
                  JSString -> Word -> Bool -> Bool -> Bool -> Bool -> Bool -> IO ()
 
keyboardEventInitKeyboardEvent ::
                               (IsKeyboardEvent self, ToJSString type', IsDOMWindow view,
                                ToJSString keyIdentifier) =>
                                 self ->
                                   type' ->
                                     Bool ->
                                       Bool ->
                                         Maybe view ->
                                           keyIdentifier ->
                                             Word -> Bool -> Bool -> Bool -> Bool -> Bool -> IO ()
keyboardEventInitKeyboardEvent self type' canBubble cancelable view
  keyIdentifier location ctrlKey altKey shiftKey metaKey altGraphKey
  = ghcjs_dom_keyboard_event_init_keyboard_event
      (unKeyboardEvent (toKeyboardEvent self))
      (toJSString type')
      canBubble
      cancelable
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      (toJSString keyIdentifier)
      location
      ctrlKey
      altKey
      shiftKey
      metaKey
      altGraphKey
cKEY_LOCATION_STANDARD = 0
cKEY_LOCATION_LEFT = 1
cKEY_LOCATION_RIGHT = 2
cKEY_LOCATION_NUMPAD = 3
 
foreign import javascript unsafe "$1[\"keyIdentifier\"]"
        ghcjs_dom_keyboard_event_get_key_identifier ::
        JSRef KeyboardEvent -> IO JSString
 
keyboardEventGetKeyIdentifier ::
                              (IsKeyboardEvent self, FromJSString result) => self -> IO result
keyboardEventGetKeyIdentifier self
  = fromJSString <$>
      (ghcjs_dom_keyboard_event_get_key_identifier
         (unKeyboardEvent (toKeyboardEvent self)))
 
foreign import javascript unsafe "$1[\"keyLocation\"]"
        ghcjs_dom_keyboard_event_get_key_location ::
        JSRef KeyboardEvent -> IO Word
 
keyboardEventGetKeyLocation ::
                            (IsKeyboardEvent self) => self -> IO Word
keyboardEventGetKeyLocation self
  = ghcjs_dom_keyboard_event_get_key_location
      (unKeyboardEvent (toKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        ghcjs_dom_keyboard_event_get_ctrl_key ::
        JSRef KeyboardEvent -> IO Bool
 
keyboardEventGetCtrlKey ::
                        (IsKeyboardEvent self) => self -> IO Bool
keyboardEventGetCtrlKey self
  = ghcjs_dom_keyboard_event_get_ctrl_key
      (unKeyboardEvent (toKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        ghcjs_dom_keyboard_event_get_shift_key ::
        JSRef KeyboardEvent -> IO Bool
 
keyboardEventGetShiftKey ::
                         (IsKeyboardEvent self) => self -> IO Bool
keyboardEventGetShiftKey self
  = ghcjs_dom_keyboard_event_get_shift_key
      (unKeyboardEvent (toKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        ghcjs_dom_keyboard_event_get_alt_key ::
        JSRef KeyboardEvent -> IO Bool
 
keyboardEventGetAltKey :: (IsKeyboardEvent self) => self -> IO Bool
keyboardEventGetAltKey self
  = ghcjs_dom_keyboard_event_get_alt_key
      (unKeyboardEvent (toKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        ghcjs_dom_keyboard_event_get_meta_key ::
        JSRef KeyboardEvent -> IO Bool
 
keyboardEventGetMetaKey ::
                        (IsKeyboardEvent self) => self -> IO Bool
keyboardEventGetMetaKey self
  = ghcjs_dom_keyboard_event_get_meta_key
      (unKeyboardEvent (toKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"altGraphKey\"] ? 1 : 0)"
        ghcjs_dom_keyboard_event_get_alt_graph_key ::
        JSRef KeyboardEvent -> IO Bool
 
keyboardEventGetAltGraphKey ::
                            (IsKeyboardEvent self) => self -> IO Bool
keyboardEventGetAltGraphKey self
  = ghcjs_dom_keyboard_event_get_alt_graph_key
      (unKeyboardEvent (toKeyboardEvent self))
#else
module GHCJS.DOM.KeyboardEvent (
  module Graphics.UI.Gtk.WebKit.DOM.KeyboardEvent
  ) where
import Graphics.UI.Gtk.WebKit.DOM.KeyboardEvent
#endif
