{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.UIEvent
       (ghcjs_dom_ui_event_init_ui_event, uiEventInitUIEvent,
        ghcjs_dom_ui_event_get_view, uiEventGetView,
        ghcjs_dom_ui_event_get_detail, uiEventGetDetail,
        ghcjs_dom_ui_event_get_key_code, uiEventGetKeyCode,
        ghcjs_dom_ui_event_get_char_code, uiEventGetCharCode,
        ghcjs_dom_ui_event_get_layer_x, uiEventGetLayerX,
        ghcjs_dom_ui_event_get_layer_y, uiEventGetLayerY,
        ghcjs_dom_ui_event_get_page_x, uiEventGetPageX,
        ghcjs_dom_ui_event_get_page_y, uiEventGetPageY,
        ghcjs_dom_ui_event_get_which, uiEventGetWhich, UIEvent, IsUIEvent,
        castToUIEvent, gTypeUIEvent, toUIEvent)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))

 
foreign import javascript unsafe
        "$1[\"initUIEvent\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_ui_event_init_ui_event ::
        JSRef UIEvent ->
          JSString -> Bool -> Bool -> JSRef DOMWindow -> Int -> IO ()
 
uiEventInitUIEvent ::
                   (IsUIEvent self, ToJSString type', IsDOMWindow view) =>
                     self -> type' -> Bool -> Bool -> Maybe view -> Int -> IO ()
uiEventInitUIEvent self type' canBubble cancelable view detail
  = ghcjs_dom_ui_event_init_ui_event (unUIEvent (toUIEvent self))
      (toJSString type')
      canBubble
      cancelable
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      detail
 
foreign import javascript unsafe "$1[\"view\"]"
        ghcjs_dom_ui_event_get_view ::
        JSRef UIEvent -> IO (JSRef DOMWindow)
 
uiEventGetView :: (IsUIEvent self) => self -> IO (Maybe DOMWindow)
uiEventGetView self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_ui_event_get_view (unUIEvent (toUIEvent self)))
 
foreign import javascript unsafe "$1[\"detail\"]"
        ghcjs_dom_ui_event_get_detail :: JSRef UIEvent -> IO Int
 
uiEventGetDetail :: (IsUIEvent self) => self -> IO Int
uiEventGetDetail self
  = ghcjs_dom_ui_event_get_detail (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"keyCode\"]"
        ghcjs_dom_ui_event_get_key_code :: JSRef UIEvent -> IO Int
 
uiEventGetKeyCode :: (IsUIEvent self) => self -> IO Int
uiEventGetKeyCode self
  = ghcjs_dom_ui_event_get_key_code (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"charCode\"]"
        ghcjs_dom_ui_event_get_char_code :: JSRef UIEvent -> IO Int
 
uiEventGetCharCode :: (IsUIEvent self) => self -> IO Int
uiEventGetCharCode self
  = ghcjs_dom_ui_event_get_char_code (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"layerX\"]"
        ghcjs_dom_ui_event_get_layer_x :: JSRef UIEvent -> IO Int
 
uiEventGetLayerX :: (IsUIEvent self) => self -> IO Int
uiEventGetLayerX self
  = ghcjs_dom_ui_event_get_layer_x (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"layerY\"]"
        ghcjs_dom_ui_event_get_layer_y :: JSRef UIEvent -> IO Int
 
uiEventGetLayerY :: (IsUIEvent self) => self -> IO Int
uiEventGetLayerY self
  = ghcjs_dom_ui_event_get_layer_y (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"pageX\"]"
        ghcjs_dom_ui_event_get_page_x :: JSRef UIEvent -> IO Int
 
uiEventGetPageX :: (IsUIEvent self) => self -> IO Int
uiEventGetPageX self
  = ghcjs_dom_ui_event_get_page_x (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"pageY\"]"
        ghcjs_dom_ui_event_get_page_y :: JSRef UIEvent -> IO Int
 
uiEventGetPageY :: (IsUIEvent self) => self -> IO Int
uiEventGetPageY self
  = ghcjs_dom_ui_event_get_page_y (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"which\"]"
        ghcjs_dom_ui_event_get_which :: JSRef UIEvent -> IO Int
 
uiEventGetWhich :: (IsUIEvent self) => self -> IO Int
uiEventGetWhich self
  = ghcjs_dom_ui_event_get_which (unUIEvent (toUIEvent self))
#else
module GHCJS.DOM.UIEvent (
  module Graphics.UI.Gtk.WebKit.DOM.UIEvent
  ) where
import Graphics.UI.Gtk.WebKit.DOM.UIEvent
#endif
