{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.UIEvent
       (webkit_dom_ui_event_init_ui_event, uiEventInitUIEvent,
        webkit_dom_ui_event_get_view, uiEventGetView,
        webkit_dom_ui_event_get_detail, uiEventGetDetail,
        webkit_dom_ui_event_get_key_code, uiEventGetKeyCode,
        webkit_dom_ui_event_get_char_code, uiEventGetCharCode,
        webkit_dom_ui_event_get_layer_x, uiEventGetLayerX,
        webkit_dom_ui_event_get_layer_y, uiEventGetLayerY,
        webkit_dom_ui_event_get_page_x, uiEventGetPageX,
        webkit_dom_ui_event_get_page_y, uiEventGetPageY,
        webkit_dom_ui_event_get_which, uiEventGetWhich)
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
        "$1[\"initUIEvent\"]($2, $3, $4,\n$5, $6)"
        webkit_dom_ui_event_init_ui_event ::
        JSRef UIEvent ->
          JSString -> JSBool -> JSBool -> JSRef DOMWindow -> Int -> IO ()
#else 
webkit_dom_ui_event_init_ui_event ::
                                    JSRef UIEvent ->
                                      JSString ->
                                        JSBool -> JSBool -> JSRef DOMWindow -> Int -> IO ()
webkit_dom_ui_event_init_ui_event = undefined
#endif
 
uiEventInitUIEvent ::
                   (UIEventClass self, ToJSString type', DOMWindowClass view) =>
                     self -> type' -> Bool -> Bool -> Maybe view -> Int -> IO ()
uiEventInitUIEvent self type' canBubble cancelable view detail
  = webkit_dom_ui_event_init_ui_event (unUIEvent (toUIEvent self))
      (toJSString type')
      (toJSBool canBubble)
      (toJSBool cancelable)
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      detail


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"view\"]"
        webkit_dom_ui_event_get_view ::
        JSRef UIEvent -> IO (JSRef DOMWindow)
#else 
webkit_dom_ui_event_get_view ::
                               JSRef UIEvent -> IO (JSRef DOMWindow)
webkit_dom_ui_event_get_view = undefined
#endif
 
uiEventGetView ::
               (UIEventClass self) => self -> IO (Maybe DOMWindow)
uiEventGetView self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_ui_event_get_view (unUIEvent (toUIEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"detail\"]"
        webkit_dom_ui_event_get_detail :: JSRef UIEvent -> IO Int
#else 
webkit_dom_ui_event_get_detail :: JSRef UIEvent -> IO Int
webkit_dom_ui_event_get_detail = undefined
#endif
 
uiEventGetDetail :: (UIEventClass self) => self -> IO Int
uiEventGetDetail self
  = webkit_dom_ui_event_get_detail (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keyCode\"]"
        webkit_dom_ui_event_get_key_code :: JSRef UIEvent -> IO Int
#else 
webkit_dom_ui_event_get_key_code :: JSRef UIEvent -> IO Int
webkit_dom_ui_event_get_key_code = undefined
#endif
 
uiEventGetKeyCode :: (UIEventClass self) => self -> IO Int
uiEventGetKeyCode self
  = webkit_dom_ui_event_get_key_code (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charCode\"]"
        webkit_dom_ui_event_get_char_code :: JSRef UIEvent -> IO Int
#else 
webkit_dom_ui_event_get_char_code :: JSRef UIEvent -> IO Int
webkit_dom_ui_event_get_char_code = undefined
#endif
 
uiEventGetCharCode :: (UIEventClass self) => self -> IO Int
uiEventGetCharCode self
  = webkit_dom_ui_event_get_char_code (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"layerX\"]"
        webkit_dom_ui_event_get_layer_x :: JSRef UIEvent -> IO Int
#else 
webkit_dom_ui_event_get_layer_x :: JSRef UIEvent -> IO Int
webkit_dom_ui_event_get_layer_x = undefined
#endif
 
uiEventGetLayerX :: (UIEventClass self) => self -> IO Int
uiEventGetLayerX self
  = webkit_dom_ui_event_get_layer_x (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"layerY\"]"
        webkit_dom_ui_event_get_layer_y :: JSRef UIEvent -> IO Int
#else 
webkit_dom_ui_event_get_layer_y :: JSRef UIEvent -> IO Int
webkit_dom_ui_event_get_layer_y = undefined
#endif
 
uiEventGetLayerY :: (UIEventClass self) => self -> IO Int
uiEventGetLayerY self
  = webkit_dom_ui_event_get_layer_y (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pageX\"]"
        webkit_dom_ui_event_get_page_x :: JSRef UIEvent -> IO Int
#else 
webkit_dom_ui_event_get_page_x :: JSRef UIEvent -> IO Int
webkit_dom_ui_event_get_page_x = undefined
#endif
 
uiEventGetPageX :: (UIEventClass self) => self -> IO Int
uiEventGetPageX self
  = webkit_dom_ui_event_get_page_x (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pageY\"]"
        webkit_dom_ui_event_get_page_y :: JSRef UIEvent -> IO Int
#else 
webkit_dom_ui_event_get_page_y :: JSRef UIEvent -> IO Int
webkit_dom_ui_event_get_page_y = undefined
#endif
 
uiEventGetPageY :: (UIEventClass self) => self -> IO Int
uiEventGetPageY self
  = webkit_dom_ui_event_get_page_y (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"which\"]"
        webkit_dom_ui_event_get_which :: JSRef UIEvent -> IO Int
#else 
webkit_dom_ui_event_get_which :: JSRef UIEvent -> IO Int
webkit_dom_ui_event_get_which = undefined
#endif
 
uiEventGetWhich :: (UIEventClass self) => self -> IO Int
uiEventGetWhich self
  = webkit_dom_ui_event_get_which (unUIEvent (toUIEvent self))