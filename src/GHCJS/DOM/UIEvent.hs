{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
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
        ghcjs_dom_ui_event_get_which, uiEventGetWhich)
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
        ghcjs_dom_ui_event_init_ui_event ::
        JSRef UIEvent ->
          JSString -> JSBool -> JSBool -> JSRef DOMWindow -> Int -> IO ()
#else 
ghcjs_dom_ui_event_init_ui_event ::
                                   JSRef UIEvent ->
                                     JSString -> JSBool -> JSBool -> JSRef DOMWindow -> Int -> IO ()
ghcjs_dom_ui_event_init_ui_event = undefined
#endif
 
uiEventInitUIEvent ::
                   (IsUIEvent self, ToJSString type', IsDOMWindow view) =>
                     self -> type' -> Bool -> Bool -> Maybe view -> Int -> IO ()
uiEventInitUIEvent self type' canBubble cancelable view detail
  = ghcjs_dom_ui_event_init_ui_event (unUIEvent (toUIEvent self))
      (toJSString type')
      (toJSBool canBubble)
      (toJSBool cancelable)
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      detail


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"view\"]"
        ghcjs_dom_ui_event_get_view ::
        JSRef UIEvent -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_ui_event_get_view ::
                              JSRef UIEvent -> IO (JSRef DOMWindow)
ghcjs_dom_ui_event_get_view = undefined
#endif
 
uiEventGetView :: (IsUIEvent self) => self -> IO (Maybe DOMWindow)
uiEventGetView self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_ui_event_get_view (unUIEvent (toUIEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"detail\"]"
        ghcjs_dom_ui_event_get_detail :: JSRef UIEvent -> IO Int
#else 
ghcjs_dom_ui_event_get_detail :: JSRef UIEvent -> IO Int
ghcjs_dom_ui_event_get_detail = undefined
#endif
 
uiEventGetDetail :: (IsUIEvent self) => self -> IO Int
uiEventGetDetail self
  = ghcjs_dom_ui_event_get_detail (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keyCode\"]"
        ghcjs_dom_ui_event_get_key_code :: JSRef UIEvent -> IO Int
#else 
ghcjs_dom_ui_event_get_key_code :: JSRef UIEvent -> IO Int
ghcjs_dom_ui_event_get_key_code = undefined
#endif
 
uiEventGetKeyCode :: (IsUIEvent self) => self -> IO Int
uiEventGetKeyCode self
  = ghcjs_dom_ui_event_get_key_code (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charCode\"]"
        ghcjs_dom_ui_event_get_char_code :: JSRef UIEvent -> IO Int
#else 
ghcjs_dom_ui_event_get_char_code :: JSRef UIEvent -> IO Int
ghcjs_dom_ui_event_get_char_code = undefined
#endif
 
uiEventGetCharCode :: (IsUIEvent self) => self -> IO Int
uiEventGetCharCode self
  = ghcjs_dom_ui_event_get_char_code (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"layerX\"]"
        ghcjs_dom_ui_event_get_layer_x :: JSRef UIEvent -> IO Int
#else 
ghcjs_dom_ui_event_get_layer_x :: JSRef UIEvent -> IO Int
ghcjs_dom_ui_event_get_layer_x = undefined
#endif
 
uiEventGetLayerX :: (IsUIEvent self) => self -> IO Int
uiEventGetLayerX self
  = ghcjs_dom_ui_event_get_layer_x (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"layerY\"]"
        ghcjs_dom_ui_event_get_layer_y :: JSRef UIEvent -> IO Int
#else 
ghcjs_dom_ui_event_get_layer_y :: JSRef UIEvent -> IO Int
ghcjs_dom_ui_event_get_layer_y = undefined
#endif
 
uiEventGetLayerY :: (IsUIEvent self) => self -> IO Int
uiEventGetLayerY self
  = ghcjs_dom_ui_event_get_layer_y (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pageX\"]"
        ghcjs_dom_ui_event_get_page_x :: JSRef UIEvent -> IO Int
#else 
ghcjs_dom_ui_event_get_page_x :: JSRef UIEvent -> IO Int
ghcjs_dom_ui_event_get_page_x = undefined
#endif
 
uiEventGetPageX :: (IsUIEvent self) => self -> IO Int
uiEventGetPageX self
  = ghcjs_dom_ui_event_get_page_x (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pageY\"]"
        ghcjs_dom_ui_event_get_page_y :: JSRef UIEvent -> IO Int
#else 
ghcjs_dom_ui_event_get_page_y :: JSRef UIEvent -> IO Int
ghcjs_dom_ui_event_get_page_y = undefined
#endif
 
uiEventGetPageY :: (IsUIEvent self) => self -> IO Int
uiEventGetPageY self
  = ghcjs_dom_ui_event_get_page_y (unUIEvent (toUIEvent self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"which\"]"
        ghcjs_dom_ui_event_get_which :: JSRef UIEvent -> IO Int
#else 
ghcjs_dom_ui_event_get_which :: JSRef UIEvent -> IO Int
ghcjs_dom_ui_event_get_which = undefined
#endif
 
uiEventGetWhich :: (IsUIEvent self) => self -> IO Int
uiEventGetWhich self
  = ghcjs_dom_ui_event_get_which (unUIEvent (toUIEvent self))