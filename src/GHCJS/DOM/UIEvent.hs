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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"initUIEvent\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_ui_event_init_ui_event ::
        JSRef UIEvent ->
          JSString -> Bool -> Bool -> JSRef DOMWindow -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.initUIEvent Mozilla UIEvent.initUIEvent documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.view Mozilla UIEvent.view documentation> 
uiEventGetView :: (IsUIEvent self) => self -> IO (Maybe DOMWindow)
uiEventGetView self
  = (ghcjs_dom_ui_event_get_view (unUIEvent (toUIEvent self))) >>=
      fromJSRef
 
foreign import javascript unsafe "$1[\"detail\"]"
        ghcjs_dom_ui_event_get_detail :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.detail Mozilla UIEvent.detail documentation> 
uiEventGetDetail :: (IsUIEvent self) => self -> IO Int
uiEventGetDetail self
  = ghcjs_dom_ui_event_get_detail (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"keyCode\"]"
        ghcjs_dom_ui_event_get_key_code :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.keyCode Mozilla UIEvent.keyCode documentation> 
uiEventGetKeyCode :: (IsUIEvent self) => self -> IO Int
uiEventGetKeyCode self
  = ghcjs_dom_ui_event_get_key_code (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"charCode\"]"
        ghcjs_dom_ui_event_get_char_code :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.charCode Mozilla UIEvent.charCode documentation> 
uiEventGetCharCode :: (IsUIEvent self) => self -> IO Int
uiEventGetCharCode self
  = ghcjs_dom_ui_event_get_char_code (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"layerX\"]"
        ghcjs_dom_ui_event_get_layer_x :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.layerX Mozilla UIEvent.layerX documentation> 
uiEventGetLayerX :: (IsUIEvent self) => self -> IO Int
uiEventGetLayerX self
  = ghcjs_dom_ui_event_get_layer_x (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"layerY\"]"
        ghcjs_dom_ui_event_get_layer_y :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.layerY Mozilla UIEvent.layerY documentation> 
uiEventGetLayerY :: (IsUIEvent self) => self -> IO Int
uiEventGetLayerY self
  = ghcjs_dom_ui_event_get_layer_y (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"pageX\"]"
        ghcjs_dom_ui_event_get_page_x :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.pageX Mozilla UIEvent.pageX documentation> 
uiEventGetPageX :: (IsUIEvent self) => self -> IO Int
uiEventGetPageX self
  = ghcjs_dom_ui_event_get_page_x (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"pageY\"]"
        ghcjs_dom_ui_event_get_page_y :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.pageY Mozilla UIEvent.pageY documentation> 
uiEventGetPageY :: (IsUIEvent self) => self -> IO Int
uiEventGetPageY self
  = ghcjs_dom_ui_event_get_page_y (unUIEvent (toUIEvent self))
 
foreign import javascript unsafe "$1[\"which\"]"
        ghcjs_dom_ui_event_get_which :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.which Mozilla UIEvent.which documentation> 
uiEventGetWhich :: (IsUIEvent self) => self -> IO Int
uiEventGetWhich self
  = ghcjs_dom_ui_event_get_which (unUIEvent (toUIEvent self))
#else
module GHCJS.DOM.UIEvent (
  module Graphics.UI.Gtk.WebKit.DOM.UIEvent
  ) where
import Graphics.UI.Gtk.WebKit.DOM.UIEvent
#endif
