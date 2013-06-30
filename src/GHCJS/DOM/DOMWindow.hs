{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMWindow
       (webkit_dom_dom_window_get_selection, domWindowGetSelection,
        webkit_dom_dom_window_blur, domWindowBlur,
        webkit_dom_dom_window_print, domWindowPrint,
        webkit_dom_dom_window_stop, domWindowStop,
        webkit_dom_dom_window_alert, domWindowAlert,
        webkit_dom_dom_window_confirm, domWindowConfirm,
        webkit_dom_dom_window_prompt, domWindowPrompt,
        webkit_dom_dom_window_find, domWindowFind,
        webkit_dom_dom_window_scroll_by, domWindowScrollBy,
        webkit_dom_dom_window_scroll_to, domWindowScrollTo,
        webkit_dom_dom_window_scroll, domWindowScroll,
        webkit_dom_dom_window_move_by, domWindowMoveBy,
        webkit_dom_dom_window_move_to, domWindowMoveTo,
        webkit_dom_dom_window_resize_by, domWindowResizeBy,
        webkit_dom_dom_window_resize_to, domWindowResizeTo,
        webkit_dom_dom_window_match_media, domWindowMatchMedia,
        webkit_dom_dom_window_get_computed_style,
        domWindowGetComputedStyle,
        webkit_dom_dom_window_webkit_convert_point_from_page_to_node,
        domWindowWebkitConvertPointFromPageToNode,
        webkit_dom_dom_window_webkit_convert_point_from_node_to_page,
        domWindowWebkitConvertPointFromNodeToPage,
        webkit_dom_dom_window_clear_timeout, domWindowClearTimeout,
        webkit_dom_dom_window_clear_interval, domWindowClearInterval,
        webkit_dom_dom_window_atob, domWindowAtob,
        webkit_dom_dom_window_btoa, domWindowBtoa,
        webkit_dom_dom_window_dispatch_event, domWindowDispatchEvent,
        webkit_dom_dom_window_capture_events, domWindowCaptureEvents,
        webkit_dom_dom_window_release_events, domWindowReleaseEvents,
        webkit_dom_dom_window_get_screen, domWindowGetScreen,
        webkit_dom_dom_window_get_history, domWindowGetHistory,
        webkit_dom_dom_window_get_locationbar, domWindowGetLocationbar,
        webkit_dom_dom_window_get_menubar, domWindowGetMenubar,
        webkit_dom_dom_window_get_personalbar, domWindowGetPersonalbar,
        webkit_dom_dom_window_get_scrollbars, domWindowGetScrollbars,
        webkit_dom_dom_window_get_statusbar, domWindowGetStatusbar,
        webkit_dom_dom_window_get_toolbar, domWindowGetToolbar,
        webkit_dom_dom_window_get_navigator, domWindowGetNavigator,
        webkit_dom_dom_window_get_client_information,
        domWindowGetClientInformation,
        webkit_dom_dom_window_get_frame_element, domWindowGetFrameElement,
        webkit_dom_dom_window_get_offscreen_buffering,
        domWindowGetOffscreenBuffering,
        webkit_dom_dom_window_get_outer_height, domWindowGetOuterHeight,
        webkit_dom_dom_window_get_outer_width, domWindowGetOuterWidth,
        webkit_dom_dom_window_get_inner_height, domWindowGetInnerHeight,
        webkit_dom_dom_window_get_inner_width, domWindowGetInnerWidth,
        webkit_dom_dom_window_get_screen_x, domWindowGetScreenX,
        webkit_dom_dom_window_get_screen_y, domWindowGetScreenY,
        webkit_dom_dom_window_get_screen_left, domWindowGetScreenLeft,
        webkit_dom_dom_window_get_screen_top, domWindowGetScreenTop,
        webkit_dom_dom_window_get_scroll_x, domWindowGetScrollX,
        webkit_dom_dom_window_get_scroll_y, domWindowGetScrollY,
        webkit_dom_dom_window_get_page_x_offset, domWindowGetPageXOffset,
        webkit_dom_dom_window_get_page_y_offset, domWindowGetPageYOffset,
        webkit_dom_dom_window_get_closed, domWindowGetClosed,
        webkit_dom_dom_window_get_length, domWindowGetLength,
        webkit_dom_dom_window_set_name, domWindowSetName,
        webkit_dom_dom_window_get_name, domWindowGetName,
        webkit_dom_dom_window_set_status, domWindowSetStatus,
        webkit_dom_dom_window_get_status, domWindowGetStatus,
        webkit_dom_dom_window_set_default_status,
        domWindowSetDefaultStatus,
        webkit_dom_dom_window_get_default_status,
        domWindowGetDefaultStatus, webkit_dom_dom_window_get_self,
        domWindowGetSelf, webkit_dom_dom_window_get_window,
        domWindowGetWindow, webkit_dom_dom_window_get_frames,
        domWindowGetFrames, webkit_dom_dom_window_get_opener,
        domWindowGetOpener, webkit_dom_dom_window_get_parent,
        domWindowGetParent, webkit_dom_dom_window_get_top, domWindowGetTop,
        webkit_dom_dom_window_get_document, domWindowGetDocument,
        webkit_dom_dom_window_get_style_media, domWindowGetStyleMedia,
        webkit_dom_dom_window_get_device_pixel_ratio,
        domWindowGetDevicePixelRatio,
        webkit_dom_dom_window_get_application_cache,
        domWindowGetApplicationCache,
        webkit_dom_dom_window_get_session_storage,
        domWindowGetSessionStorage,
        webkit_dom_dom_window_get_local_storage, domWindowGetLocalStorage,
        webkit_dom_dom_window_get_console, domWindowGetConsole,
        domWindowOnabort, domWindowOnbeforeunload, domWindowOnblur,
        domWindowOncanplay, domWindowOncanplaythrough, domWindowOnchange,
        domWindowOnclick, domWindowOncontextmenu, domWindowOndblclick,
        domWindowOndrag, domWindowOndragend, domWindowOndragenter,
        domWindowOndragleave, domWindowOndragover, domWindowOndragstart,
        domWindowOndrop, domWindowOndurationchange, domWindowOnemptied,
        domWindowOnended, domWindowOnerror, domWindowOnfocus,
        domWindowOnhashchange, domWindowOninput, domWindowOninvalid,
        domWindowOnkeydown, domWindowOnkeypress, domWindowOnkeyup,
        domWindowOnload, domWindowOnloadeddata, domWindowOnloadedmetadata,
        domWindowOnloadstart, domWindowOnmessage, domWindowOnmousedown,
        domWindowOnmousemove, domWindowOnmouseout, domWindowOnmouseover,
        domWindowOnmouseup, domWindowOnmousewheel, domWindowOnoffline,
        domWindowOnonline, domWindowOnpagehide, domWindowOnpageshow,
        domWindowOnpause, domWindowOnplay, domWindowOnplaying,
        domWindowOnpopstate, domWindowOnprogress, domWindowOnratechange,
        domWindowOnresize, domWindowOnscroll, domWindowOnseeked,
        domWindowOnseeking, domWindowOnselect, domWindowOnstalled,
        domWindowOnstorage, domWindowOnsubmit, domWindowOnsuspend,
        domWindowOntimeupdate, domWindowOnunload, domWindowOnvolumechange,
        domWindowOnwaiting, domWindowOnreset, domWindowOnsearch,
        domWindowOnwebkitanimationend, domWindowOnwebkitanimationiteration,
        domWindowOnwebkitanimationstart, domWindowOnwebkittransitionend,
        domWindowOntouchstart, domWindowOntouchmove, domWindowOntouchend,
        domWindowOntouchcancel, domWindowOndevicemotion,
        domWindowOndeviceorientation, domWindowOnwebkitdeviceproximity)
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
foreign import javascript unsafe "$1[\"getSelection\"]()"
        webkit_dom_dom_window_get_selection ::
        JSRef DOMWindow -> IO (JSRef DOMSelection)
#else 
webkit_dom_dom_window_get_selection ::
                                      JSRef DOMWindow -> IO (JSRef DOMSelection)
webkit_dom_dom_window_get_selection = undefined
#endif
 
domWindowGetSelection ::
                      (DOMWindowClass self) => self -> IO (Maybe DOMSelection)
domWindowGetSelection self
  = fmap DOMSelection . maybeJSNull <$>
      (webkit_dom_dom_window_get_selection
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"blur\"]()"
        webkit_dom_dom_window_blur :: JSRef DOMWindow -> IO ()
#else 
webkit_dom_dom_window_blur :: JSRef DOMWindow -> IO ()
webkit_dom_dom_window_blur = undefined
#endif
 
domWindowBlur :: (DOMWindowClass self) => self -> IO ()
domWindowBlur self
  = webkit_dom_dom_window_blur (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"print\"]()"
        webkit_dom_dom_window_print :: JSRef DOMWindow -> IO ()
#else 
webkit_dom_dom_window_print :: JSRef DOMWindow -> IO ()
webkit_dom_dom_window_print = undefined
#endif
 
domWindowPrint :: (DOMWindowClass self) => self -> IO ()
domWindowPrint self
  = webkit_dom_dom_window_print (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"stop\"]()"
        webkit_dom_dom_window_stop :: JSRef DOMWindow -> IO ()
#else 
webkit_dom_dom_window_stop :: JSRef DOMWindow -> IO ()
webkit_dom_dom_window_stop = undefined
#endif
 
domWindowStop :: (DOMWindowClass self) => self -> IO ()
domWindowStop self
  = webkit_dom_dom_window_stop (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alert\"]($2)"
        webkit_dom_dom_window_alert :: JSRef DOMWindow -> JSString -> IO ()
#else 
webkit_dom_dom_window_alert :: JSRef DOMWindow -> JSString -> IO ()
webkit_dom_dom_window_alert = undefined
#endif
 
domWindowAlert ::
               (DOMWindowClass self, ToJSString message) =>
                 self -> message -> IO ()
domWindowAlert self message
  = webkit_dom_dom_window_alert (unDOMWindow (toDOMWindow self))
      (toJSString message)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"confirm\"]($2) ? 1 : 0)"
        webkit_dom_dom_window_confirm ::
        JSRef DOMWindow -> JSString -> IO JSBool
#else 
webkit_dom_dom_window_confirm ::
                                JSRef DOMWindow -> JSString -> IO JSBool
webkit_dom_dom_window_confirm = undefined
#endif
 
domWindowConfirm ::
                 (DOMWindowClass self, ToJSString message) =>
                   self -> message -> IO Bool
domWindowConfirm self message
  = fromJSBool <$>
      (webkit_dom_dom_window_confirm (unDOMWindow (toDOMWindow self))
         (toJSString message))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"prompt\"]($2, $3)"
        webkit_dom_dom_window_prompt ::
        JSRef DOMWindow -> JSString -> JSString -> IO JSString
#else 
webkit_dom_dom_window_prompt ::
                               JSRef DOMWindow -> JSString -> JSString -> IO JSString
webkit_dom_dom_window_prompt = undefined
#endif
 
domWindowPrompt ::
                (DOMWindowClass self, ToJSString message, ToJSString defaultValue,
                 FromJSString result) =>
                  self -> message -> defaultValue -> IO result
domWindowPrompt self message defaultValue
  = fromJSString <$>
      (webkit_dom_dom_window_prompt (unDOMWindow (toDOMWindow self))
         (toJSString message)
         (toJSString defaultValue))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"find\"]($2, $3, $4, $5, $6,\n$7, $8) ? 1 : 0)"
        webkit_dom_dom_window_find ::
        JSRef DOMWindow ->
          JSString ->
            JSBool ->
              JSBool -> JSBool -> JSBool -> JSBool -> JSBool -> IO JSBool
#else 
webkit_dom_dom_window_find ::
                             JSRef DOMWindow ->
                               JSString ->
                                 JSBool ->
                                   JSBool -> JSBool -> JSBool -> JSBool -> JSBool -> IO JSBool
webkit_dom_dom_window_find = undefined
#endif
 
domWindowFind ::
              (DOMWindowClass self, ToJSString string) =>
                self ->
                  string -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> IO Bool
domWindowFind self string caseSensitive backwards wrap wholeWord
  searchInFrames showDialog
  = fromJSBool <$>
      (webkit_dom_dom_window_find (unDOMWindow (toDOMWindow self))
         (toJSString string)
         (toJSBool caseSensitive)
         (toJSBool backwards)
         (toJSBool wrap)
         (toJSBool wholeWord)
         (toJSBool searchInFrames)
         (toJSBool showDialog))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollBy\"]($2, $3)"
        webkit_dom_dom_window_scroll_by ::
        JSRef DOMWindow -> Int -> Int -> IO ()
#else 
webkit_dom_dom_window_scroll_by ::
                                  JSRef DOMWindow -> Int -> Int -> IO ()
webkit_dom_dom_window_scroll_by = undefined
#endif
 
domWindowScrollBy ::
                  (DOMWindowClass self) => self -> Int -> Int -> IO ()
domWindowScrollBy self x y
  = webkit_dom_dom_window_scroll_by (unDOMWindow (toDOMWindow self))
      x
      y


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollTo\"]($2, $3)"
        webkit_dom_dom_window_scroll_to ::
        JSRef DOMWindow -> Int -> Int -> IO ()
#else 
webkit_dom_dom_window_scroll_to ::
                                  JSRef DOMWindow -> Int -> Int -> IO ()
webkit_dom_dom_window_scroll_to = undefined
#endif
 
domWindowScrollTo ::
                  (DOMWindowClass self) => self -> Int -> Int -> IO ()
domWindowScrollTo self x y
  = webkit_dom_dom_window_scroll_to (unDOMWindow (toDOMWindow self))
      x
      y


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scroll\"]($2, $3)"
        webkit_dom_dom_window_scroll ::
        JSRef DOMWindow -> Int -> Int -> IO ()
#else 
webkit_dom_dom_window_scroll ::
                               JSRef DOMWindow -> Int -> Int -> IO ()
webkit_dom_dom_window_scroll = undefined
#endif
 
domWindowScroll ::
                (DOMWindowClass self) => self -> Int -> Int -> IO ()
domWindowScroll self x y
  = webkit_dom_dom_window_scroll (unDOMWindow (toDOMWindow self)) x y


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"moveBy\"]($2, $3)"
        webkit_dom_dom_window_move_by ::
        JSRef DOMWindow -> Float -> Float -> IO ()
#else 
webkit_dom_dom_window_move_by ::
                                JSRef DOMWindow -> Float -> Float -> IO ()
webkit_dom_dom_window_move_by = undefined
#endif
 
domWindowMoveBy ::
                (DOMWindowClass self) => self -> Float -> Float -> IO ()
domWindowMoveBy self x y
  = webkit_dom_dom_window_move_by (unDOMWindow (toDOMWindow self)) x
      y


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)"
        webkit_dom_dom_window_move_to ::
        JSRef DOMWindow -> Float -> Float -> IO ()
#else 
webkit_dom_dom_window_move_to ::
                                JSRef DOMWindow -> Float -> Float -> IO ()
webkit_dom_dom_window_move_to = undefined
#endif
 
domWindowMoveTo ::
                (DOMWindowClass self) => self -> Float -> Float -> IO ()
domWindowMoveTo self x y
  = webkit_dom_dom_window_move_to (unDOMWindow (toDOMWindow self)) x
      y


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"resizeBy\"]($2, $3)"
        webkit_dom_dom_window_resize_by ::
        JSRef DOMWindow -> Float -> Float -> IO ()
#else 
webkit_dom_dom_window_resize_by ::
                                  JSRef DOMWindow -> Float -> Float -> IO ()
webkit_dom_dom_window_resize_by = undefined
#endif
 
domWindowResizeBy ::
                  (DOMWindowClass self) => self -> Float -> Float -> IO ()
domWindowResizeBy self x y
  = webkit_dom_dom_window_resize_by (unDOMWindow (toDOMWindow self))
      x
      y


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"resizeTo\"]($2, $3)"
        webkit_dom_dom_window_resize_to ::
        JSRef DOMWindow -> Float -> Float -> IO ()
#else 
webkit_dom_dom_window_resize_to ::
                                  JSRef DOMWindow -> Float -> Float -> IO ()
webkit_dom_dom_window_resize_to = undefined
#endif
 
domWindowResizeTo ::
                  (DOMWindowClass self) => self -> Float -> Float -> IO ()
domWindowResizeTo self width height
  = webkit_dom_dom_window_resize_to (unDOMWindow (toDOMWindow self))
      width
      height


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"matchMedia\"]($2)"
        webkit_dom_dom_window_match_media ::
        JSRef DOMWindow -> JSString -> IO (JSRef MediaQueryList)
#else 
webkit_dom_dom_window_match_media ::
                                    JSRef DOMWindow -> JSString -> IO (JSRef MediaQueryList)
webkit_dom_dom_window_match_media = undefined
#endif
 
domWindowMatchMedia ::
                    (DOMWindowClass self, ToJSString query) =>
                      self -> query -> IO (Maybe MediaQueryList)
domWindowMatchMedia self query
  = fmap MediaQueryList . maybeJSNull <$>
      (webkit_dom_dom_window_match_media (unDOMWindow (toDOMWindow self))
         (toJSString query))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getComputedStyle\"]($2, $3)"
        webkit_dom_dom_window_get_computed_style ::
        JSRef DOMWindow ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)
#else 
webkit_dom_dom_window_get_computed_style ::
                                           JSRef DOMWindow ->
                                             JSRef Element ->
                                               JSString -> IO (JSRef CSSStyleDeclaration)
webkit_dom_dom_window_get_computed_style = undefined
#endif
 
domWindowGetComputedStyle ::
                          (DOMWindowClass self, ElementClass element,
                           ToJSString pseudoElement) =>
                            self ->
                              Maybe element -> pseudoElement -> IO (Maybe CSSStyleDeclaration)
domWindowGetComputedStyle self element pseudoElement
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (webkit_dom_dom_window_get_computed_style
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unElement . toElement) element)
         (toJSString pseudoElement))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromPageToNode\"]($2,\n$3)"
        webkit_dom_dom_window_webkit_convert_point_from_page_to_node ::
        JSRef DOMWindow ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)
#else 
webkit_dom_dom_window_webkit_convert_point_from_page_to_node ::
                                                               JSRef DOMWindow ->
                                                                 JSRef Node ->
                                                                   JSRef WebKitPoint ->
                                                                     IO (JSRef WebKitPoint)
webkit_dom_dom_window_webkit_convert_point_from_page_to_node
  = undefined
#endif
 
domWindowWebkitConvertPointFromPageToNode ::
                                          (DOMWindowClass self, NodeClass node,
                                           WebKitPointClass p) =>
                                            self -> Maybe node -> Maybe p -> IO (Maybe WebKitPoint)
domWindowWebkitConvertPointFromPageToNode self node p
  = fmap WebKitPoint . maybeJSNull <$>
      (webkit_dom_dom_window_webkit_convert_point_from_page_to_node
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unNode . toNode) node)
         (maybe jsNull (unWebKitPoint . toWebKitPoint) p))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromNodeToPage\"]($2,\n$3)"
        webkit_dom_dom_window_webkit_convert_point_from_node_to_page ::
        JSRef DOMWindow ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)
#else 
webkit_dom_dom_window_webkit_convert_point_from_node_to_page ::
                                                               JSRef DOMWindow ->
                                                                 JSRef Node ->
                                                                   JSRef WebKitPoint ->
                                                                     IO (JSRef WebKitPoint)
webkit_dom_dom_window_webkit_convert_point_from_node_to_page
  = undefined
#endif
 
domWindowWebkitConvertPointFromNodeToPage ::
                                          (DOMWindowClass self, NodeClass node,
                                           WebKitPointClass p) =>
                                            self -> Maybe node -> Maybe p -> IO (Maybe WebKitPoint)
domWindowWebkitConvertPointFromNodeToPage self node p
  = fmap WebKitPoint . maybeJSNull <$>
      (webkit_dom_dom_window_webkit_convert_point_from_node_to_page
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unNode . toNode) node)
         (maybe jsNull (unWebKitPoint . toWebKitPoint) p))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clearTimeout\"]($2)"
        webkit_dom_dom_window_clear_timeout ::
        JSRef DOMWindow -> Int -> IO ()
#else 
webkit_dom_dom_window_clear_timeout ::
                                      JSRef DOMWindow -> Int -> IO ()
webkit_dom_dom_window_clear_timeout = undefined
#endif
 
domWindowClearTimeout ::
                      (DOMWindowClass self) => self -> Int -> IO ()
domWindowClearTimeout self handle
  = webkit_dom_dom_window_clear_timeout
      (unDOMWindow (toDOMWindow self))
      handle


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clearInterval\"]($2)"
        webkit_dom_dom_window_clear_interval ::
        JSRef DOMWindow -> Int -> IO ()
#else 
webkit_dom_dom_window_clear_interval ::
                                       JSRef DOMWindow -> Int -> IO ()
webkit_dom_dom_window_clear_interval = undefined
#endif
 
domWindowClearInterval ::
                       (DOMWindowClass self) => self -> Int -> IO ()
domWindowClearInterval self handle
  = webkit_dom_dom_window_clear_interval
      (unDOMWindow (toDOMWindow self))
      handle


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"atob\"]($2)"
        webkit_dom_dom_window_atob ::
        JSRef DOMWindow -> JSString -> IO JSString
#else 
webkit_dom_dom_window_atob ::
                             JSRef DOMWindow -> JSString -> IO JSString
webkit_dom_dom_window_atob = undefined
#endif
 
domWindowAtob ::
              (DOMWindowClass self, ToJSString string, FromJSString result) =>
                self -> string -> IO result
domWindowAtob self string
  = fromJSString <$>
      (webkit_dom_dom_window_atob (unDOMWindow (toDOMWindow self))
         (toJSString string))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"btoa\"]($2)"
        webkit_dom_dom_window_btoa ::
        JSRef DOMWindow -> JSString -> IO JSString
#else 
webkit_dom_dom_window_btoa ::
                             JSRef DOMWindow -> JSString -> IO JSString
webkit_dom_dom_window_btoa = undefined
#endif
 
domWindowBtoa ::
              (DOMWindowClass self, ToJSString string, FromJSString result) =>
                self -> string -> IO result
domWindowBtoa self string
  = fromJSString <$>
      (webkit_dom_dom_window_btoa (unDOMWindow (toDOMWindow self))
         (toJSString string))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        webkit_dom_dom_window_dispatch_event ::
        JSRef DOMWindow -> JSRef Event -> IO JSBool
#else 
webkit_dom_dom_window_dispatch_event ::
                                       JSRef DOMWindow -> JSRef Event -> IO JSBool
webkit_dom_dom_window_dispatch_event = undefined
#endif
 
domWindowDispatchEvent ::
                       (DOMWindowClass self, EventClass evt) =>
                         self -> Maybe evt -> IO Bool
domWindowDispatchEvent self evt
  = fromJSBool <$>
      (webkit_dom_dom_window_dispatch_event
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unEvent . toEvent) evt))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        webkit_dom_dom_window_capture_events :: JSRef DOMWindow -> IO ()
#else 
webkit_dom_dom_window_capture_events :: JSRef DOMWindow -> IO ()
webkit_dom_dom_window_capture_events = undefined
#endif
 
domWindowCaptureEvents :: (DOMWindowClass self) => self -> IO ()
domWindowCaptureEvents self
  = webkit_dom_dom_window_capture_events
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        webkit_dom_dom_window_release_events :: JSRef DOMWindow -> IO ()
#else 
webkit_dom_dom_window_release_events :: JSRef DOMWindow -> IO ()
webkit_dom_dom_window_release_events = undefined
#endif
 
domWindowReleaseEvents :: (DOMWindowClass self) => self -> IO ()
domWindowReleaseEvents self
  = webkit_dom_dom_window_release_events
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"screen\"]"
        webkit_dom_dom_window_get_screen ::
        JSRef DOMWindow -> IO (JSRef DOMScreen)
#else 
webkit_dom_dom_window_get_screen ::
                                   JSRef DOMWindow -> IO (JSRef DOMScreen)
webkit_dom_dom_window_get_screen = undefined
#endif
 
domWindowGetScreen ::
                   (DOMWindowClass self) => self -> IO (Maybe DOMScreen)
domWindowGetScreen self
  = fmap DOMScreen . maybeJSNull <$>
      (webkit_dom_dom_window_get_screen (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"history\"]"
        webkit_dom_dom_window_get_history ::
        JSRef DOMWindow -> IO (JSRef History)
#else 
webkit_dom_dom_window_get_history ::
                                    JSRef DOMWindow -> IO (JSRef History)
webkit_dom_dom_window_get_history = undefined
#endif
 
domWindowGetHistory ::
                    (DOMWindowClass self) => self -> IO (Maybe History)
domWindowGetHistory self
  = fmap History . maybeJSNull <$>
      (webkit_dom_dom_window_get_history
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"locationbar\"]"
        webkit_dom_dom_window_get_locationbar ::
        JSRef DOMWindow -> IO (JSRef BarInfo)
#else 
webkit_dom_dom_window_get_locationbar ::
                                        JSRef DOMWindow -> IO (JSRef BarInfo)
webkit_dom_dom_window_get_locationbar = undefined
#endif
 
domWindowGetLocationbar ::
                        (DOMWindowClass self) => self -> IO (Maybe BarInfo)
domWindowGetLocationbar self
  = fmap BarInfo . maybeJSNull <$>
      (webkit_dom_dom_window_get_locationbar
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"menubar\"]"
        webkit_dom_dom_window_get_menubar ::
        JSRef DOMWindow -> IO (JSRef BarInfo)
#else 
webkit_dom_dom_window_get_menubar ::
                                    JSRef DOMWindow -> IO (JSRef BarInfo)
webkit_dom_dom_window_get_menubar = undefined
#endif
 
domWindowGetMenubar ::
                    (DOMWindowClass self) => self -> IO (Maybe BarInfo)
domWindowGetMenubar self
  = fmap BarInfo . maybeJSNull <$>
      (webkit_dom_dom_window_get_menubar
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"personalbar\"]"
        webkit_dom_dom_window_get_personalbar ::
        JSRef DOMWindow -> IO (JSRef BarInfo)
#else 
webkit_dom_dom_window_get_personalbar ::
                                        JSRef DOMWindow -> IO (JSRef BarInfo)
webkit_dom_dom_window_get_personalbar = undefined
#endif
 
domWindowGetPersonalbar ::
                        (DOMWindowClass self) => self -> IO (Maybe BarInfo)
domWindowGetPersonalbar self
  = fmap BarInfo . maybeJSNull <$>
      (webkit_dom_dom_window_get_personalbar
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollbars\"]"
        webkit_dom_dom_window_get_scrollbars ::
        JSRef DOMWindow -> IO (JSRef BarInfo)
#else 
webkit_dom_dom_window_get_scrollbars ::
                                       JSRef DOMWindow -> IO (JSRef BarInfo)
webkit_dom_dom_window_get_scrollbars = undefined
#endif
 
domWindowGetScrollbars ::
                       (DOMWindowClass self) => self -> IO (Maybe BarInfo)
domWindowGetScrollbars self
  = fmap BarInfo . maybeJSNull <$>
      (webkit_dom_dom_window_get_scrollbars
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"statusbar\"]"
        webkit_dom_dom_window_get_statusbar ::
        JSRef DOMWindow -> IO (JSRef BarInfo)
#else 
webkit_dom_dom_window_get_statusbar ::
                                      JSRef DOMWindow -> IO (JSRef BarInfo)
webkit_dom_dom_window_get_statusbar = undefined
#endif
 
domWindowGetStatusbar ::
                      (DOMWindowClass self) => self -> IO (Maybe BarInfo)
domWindowGetStatusbar self
  = fmap BarInfo . maybeJSNull <$>
      (webkit_dom_dom_window_get_statusbar
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"toolbar\"]"
        webkit_dom_dom_window_get_toolbar ::
        JSRef DOMWindow -> IO (JSRef BarInfo)
#else 
webkit_dom_dom_window_get_toolbar ::
                                    JSRef DOMWindow -> IO (JSRef BarInfo)
webkit_dom_dom_window_get_toolbar = undefined
#endif
 
domWindowGetToolbar ::
                    (DOMWindowClass self) => self -> IO (Maybe BarInfo)
domWindowGetToolbar self
  = fmap BarInfo . maybeJSNull <$>
      (webkit_dom_dom_window_get_toolbar
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"navigator\"]"
        webkit_dom_dom_window_get_navigator ::
        JSRef DOMWindow -> IO (JSRef Navigator)
#else 
webkit_dom_dom_window_get_navigator ::
                                      JSRef DOMWindow -> IO (JSRef Navigator)
webkit_dom_dom_window_get_navigator = undefined
#endif
 
domWindowGetNavigator ::
                      (DOMWindowClass self) => self -> IO (Maybe Navigator)
domWindowGetNavigator self
  = fmap Navigator . maybeJSNull <$>
      (webkit_dom_dom_window_get_navigator
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clientInformation\"]"
        webkit_dom_dom_window_get_client_information ::
        JSRef DOMWindow -> IO (JSRef Navigator)
#else 
webkit_dom_dom_window_get_client_information ::
                                               JSRef DOMWindow -> IO (JSRef Navigator)
webkit_dom_dom_window_get_client_information = undefined
#endif
 
domWindowGetClientInformation ::
                              (DOMWindowClass self) => self -> IO (Maybe Navigator)
domWindowGetClientInformation self
  = fmap Navigator . maybeJSNull <$>
      (webkit_dom_dom_window_get_client_information
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frameElement\"]"
        webkit_dom_dom_window_get_frame_element ::
        JSRef DOMWindow -> IO (JSRef Element)
#else 
webkit_dom_dom_window_get_frame_element ::
                                          JSRef DOMWindow -> IO (JSRef Element)
webkit_dom_dom_window_get_frame_element = undefined
#endif
 
domWindowGetFrameElement ::
                         (DOMWindowClass self) => self -> IO (Maybe Element)
domWindowGetFrameElement self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_dom_window_get_frame_element
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"offscreenBuffering\"] ? 1 : 0)"
        webkit_dom_dom_window_get_offscreen_buffering ::
        JSRef DOMWindow -> IO JSBool
#else 
webkit_dom_dom_window_get_offscreen_buffering ::
                                                JSRef DOMWindow -> IO JSBool
webkit_dom_dom_window_get_offscreen_buffering = undefined
#endif
 
domWindowGetOffscreenBuffering ::
                               (DOMWindowClass self) => self -> IO Bool
domWindowGetOffscreenBuffering self
  = fromJSBool <$>
      (webkit_dom_dom_window_get_offscreen_buffering
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"outerHeight\"]"
        webkit_dom_dom_window_get_outer_height :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_outer_height :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_outer_height = undefined
#endif
 
domWindowGetOuterHeight :: (DOMWindowClass self) => self -> IO Int
domWindowGetOuterHeight self
  = webkit_dom_dom_window_get_outer_height
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"outerWidth\"]"
        webkit_dom_dom_window_get_outer_width :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_outer_width :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_outer_width = undefined
#endif
 
domWindowGetOuterWidth :: (DOMWindowClass self) => self -> IO Int
domWindowGetOuterWidth self
  = webkit_dom_dom_window_get_outer_width
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"innerHeight\"]"
        webkit_dom_dom_window_get_inner_height :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_inner_height :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_inner_height = undefined
#endif
 
domWindowGetInnerHeight :: (DOMWindowClass self) => self -> IO Int
domWindowGetInnerHeight self
  = webkit_dom_dom_window_get_inner_height
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"innerWidth\"]"
        webkit_dom_dom_window_get_inner_width :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_inner_width :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_inner_width = undefined
#endif
 
domWindowGetInnerWidth :: (DOMWindowClass self) => self -> IO Int
domWindowGetInnerWidth self
  = webkit_dom_dom_window_get_inner_width
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"screenX\"]"
        webkit_dom_dom_window_get_screen_x :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_screen_x :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_screen_x = undefined
#endif
 
domWindowGetScreenX :: (DOMWindowClass self) => self -> IO Int
domWindowGetScreenX self
  = webkit_dom_dom_window_get_screen_x
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"screenY\"]"
        webkit_dom_dom_window_get_screen_y :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_screen_y :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_screen_y = undefined
#endif
 
domWindowGetScreenY :: (DOMWindowClass self) => self -> IO Int
domWindowGetScreenY self
  = webkit_dom_dom_window_get_screen_y
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"screenLeft\"]"
        webkit_dom_dom_window_get_screen_left :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_screen_left :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_screen_left = undefined
#endif
 
domWindowGetScreenLeft :: (DOMWindowClass self) => self -> IO Int
domWindowGetScreenLeft self
  = webkit_dom_dom_window_get_screen_left
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"screenTop\"]"
        webkit_dom_dom_window_get_screen_top :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_screen_top :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_screen_top = undefined
#endif
 
domWindowGetScreenTop :: (DOMWindowClass self) => self -> IO Int
domWindowGetScreenTop self
  = webkit_dom_dom_window_get_screen_top
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollX\"]"
        webkit_dom_dom_window_get_scroll_x :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_scroll_x :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_scroll_x = undefined
#endif
 
domWindowGetScrollX :: (DOMWindowClass self) => self -> IO Int
domWindowGetScrollX self
  = webkit_dom_dom_window_get_scroll_x
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollY\"]"
        webkit_dom_dom_window_get_scroll_y :: JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_scroll_y :: JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_scroll_y = undefined
#endif
 
domWindowGetScrollY :: (DOMWindowClass self) => self -> IO Int
domWindowGetScrollY self
  = webkit_dom_dom_window_get_scroll_y
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pageXOffset\"]"
        webkit_dom_dom_window_get_page_x_offset ::
        JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_page_x_offset ::
                                          JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_page_x_offset = undefined
#endif
 
domWindowGetPageXOffset :: (DOMWindowClass self) => self -> IO Int
domWindowGetPageXOffset self
  = webkit_dom_dom_window_get_page_x_offset
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pageYOffset\"]"
        webkit_dom_dom_window_get_page_y_offset ::
        JSRef DOMWindow -> IO Int
#else 
webkit_dom_dom_window_get_page_y_offset ::
                                          JSRef DOMWindow -> IO Int
webkit_dom_dom_window_get_page_y_offset = undefined
#endif
 
domWindowGetPageYOffset :: (DOMWindowClass self) => self -> IO Int
domWindowGetPageYOffset self
  = webkit_dom_dom_window_get_page_y_offset
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"closed\"] ? 1 : 0)"
        webkit_dom_dom_window_get_closed :: JSRef DOMWindow -> IO JSBool
#else 
webkit_dom_dom_window_get_closed :: JSRef DOMWindow -> IO JSBool
webkit_dom_dom_window_get_closed = undefined
#endif
 
domWindowGetClosed :: (DOMWindowClass self) => self -> IO Bool
domWindowGetClosed self
  = fromJSBool <$>
      (webkit_dom_dom_window_get_closed (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_dom_window_get_length :: JSRef DOMWindow -> IO Word
#else 
webkit_dom_dom_window_get_length :: JSRef DOMWindow -> IO Word
webkit_dom_dom_window_get_length = undefined
#endif
 
domWindowGetLength :: (DOMWindowClass self) => self -> IO Word
domWindowGetLength self
  = webkit_dom_dom_window_get_length (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_dom_window_set_name ::
        JSRef DOMWindow -> JSString -> IO ()
#else 
webkit_dom_dom_window_set_name ::
                                 JSRef DOMWindow -> JSString -> IO ()
webkit_dom_dom_window_set_name = undefined
#endif
 
domWindowSetName ::
                 (DOMWindowClass self, ToJSString val) => self -> val -> IO ()
domWindowSetName self val
  = webkit_dom_dom_window_set_name (unDOMWindow (toDOMWindow self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_dom_window_get_name :: JSRef DOMWindow -> IO JSString
#else 
webkit_dom_dom_window_get_name :: JSRef DOMWindow -> IO JSString
webkit_dom_dom_window_get_name = undefined
#endif
 
domWindowGetName ::
                 (DOMWindowClass self, FromJSString result) => self -> IO result
domWindowGetName self
  = fromJSString <$>
      (webkit_dom_dom_window_get_name (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"status\"] = $2;"
        webkit_dom_dom_window_set_status ::
        JSRef DOMWindow -> JSString -> IO ()
#else 
webkit_dom_dom_window_set_status ::
                                   JSRef DOMWindow -> JSString -> IO ()
webkit_dom_dom_window_set_status = undefined
#endif
 
domWindowSetStatus ::
                   (DOMWindowClass self, ToJSString val) => self -> val -> IO ()
domWindowSetStatus self val
  = webkit_dom_dom_window_set_status (unDOMWindow (toDOMWindow self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"status\"]"
        webkit_dom_dom_window_get_status :: JSRef DOMWindow -> IO JSString
#else 
webkit_dom_dom_window_get_status :: JSRef DOMWindow -> IO JSString
webkit_dom_dom_window_get_status = undefined
#endif
 
domWindowGetStatus ::
                   (DOMWindowClass self, FromJSString result) => self -> IO result
domWindowGetStatus self
  = fromJSString <$>
      (webkit_dom_dom_window_get_status (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultStatus\"] = $2;"
        webkit_dom_dom_window_set_default_status ::
        JSRef DOMWindow -> JSString -> IO ()
#else 
webkit_dom_dom_window_set_default_status ::
                                           JSRef DOMWindow -> JSString -> IO ()
webkit_dom_dom_window_set_default_status = undefined
#endif
 
domWindowSetDefaultStatus ::
                          (DOMWindowClass self, ToJSString val) => self -> val -> IO ()
domWindowSetDefaultStatus self val
  = webkit_dom_dom_window_set_default_status
      (unDOMWindow (toDOMWindow self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultStatus\"]"
        webkit_dom_dom_window_get_default_status ::
        JSRef DOMWindow -> IO JSString
#else 
webkit_dom_dom_window_get_default_status ::
                                           JSRef DOMWindow -> IO JSString
webkit_dom_dom_window_get_default_status = undefined
#endif
 
domWindowGetDefaultStatus ::
                          (DOMWindowClass self, FromJSString result) => self -> IO result
domWindowGetDefaultStatus self
  = fromJSString <$>
      (webkit_dom_dom_window_get_default_status
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"self\"]"
        webkit_dom_dom_window_get_self ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
webkit_dom_dom_window_get_self ::
                                 JSRef DOMWindow -> IO (JSRef DOMWindow)
webkit_dom_dom_window_get_self = undefined
#endif
 
domWindowGetSelf ::
                 (DOMWindowClass self) => self -> IO (Maybe DOMWindow)
domWindowGetSelf self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_dom_window_get_self (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"window\"]"
        webkit_dom_dom_window_get_window ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
webkit_dom_dom_window_get_window ::
                                   JSRef DOMWindow -> IO (JSRef DOMWindow)
webkit_dom_dom_window_get_window = undefined
#endif
 
domWindowGetWindow ::
                   (DOMWindowClass self) => self -> IO (Maybe DOMWindow)
domWindowGetWindow self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_dom_window_get_window (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frames\"]"
        webkit_dom_dom_window_get_frames ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
webkit_dom_dom_window_get_frames ::
                                   JSRef DOMWindow -> IO (JSRef DOMWindow)
webkit_dom_dom_window_get_frames = undefined
#endif
 
domWindowGetFrames ::
                   (DOMWindowClass self) => self -> IO (Maybe DOMWindow)
domWindowGetFrames self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_dom_window_get_frames (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"opener\"]"
        webkit_dom_dom_window_get_opener ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
webkit_dom_dom_window_get_opener ::
                                   JSRef DOMWindow -> IO (JSRef DOMWindow)
webkit_dom_dom_window_get_opener = undefined
#endif
 
domWindowGetOpener ::
                   (DOMWindowClass self) => self -> IO (Maybe DOMWindow)
domWindowGetOpener self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_dom_window_get_opener (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parent\"]"
        webkit_dom_dom_window_get_parent ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
webkit_dom_dom_window_get_parent ::
                                   JSRef DOMWindow -> IO (JSRef DOMWindow)
webkit_dom_dom_window_get_parent = undefined
#endif
 
domWindowGetParent ::
                   (DOMWindowClass self) => self -> IO (Maybe DOMWindow)
domWindowGetParent self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_dom_window_get_parent (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"top\"]"
        webkit_dom_dom_window_get_top ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
webkit_dom_dom_window_get_top ::
                                JSRef DOMWindow -> IO (JSRef DOMWindow)
webkit_dom_dom_window_get_top = undefined
#endif
 
domWindowGetTop ::
                (DOMWindowClass self) => self -> IO (Maybe DOMWindow)
domWindowGetTop self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_dom_window_get_top (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"document\"]"
        webkit_dom_dom_window_get_document ::
        JSRef DOMWindow -> IO (JSRef Document)
#else 
webkit_dom_dom_window_get_document ::
                                     JSRef DOMWindow -> IO (JSRef Document)
webkit_dom_dom_window_get_document = undefined
#endif
 
domWindowGetDocument ::
                     (DOMWindowClass self) => self -> IO (Maybe Document)
domWindowGetDocument self
  = fmap Document . maybeJSNull <$>
      (webkit_dom_dom_window_get_document
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        webkit_dom_dom_window_get_style_media ::
        JSRef DOMWindow -> IO (JSRef StyleMedia)
#else 
webkit_dom_dom_window_get_style_media ::
                                        JSRef DOMWindow -> IO (JSRef StyleMedia)
webkit_dom_dom_window_get_style_media = undefined
#endif
 
domWindowGetStyleMedia ::
                       (DOMWindowClass self) => self -> IO (Maybe StyleMedia)
domWindowGetStyleMedia self
  = fmap StyleMedia . maybeJSNull <$>
      (webkit_dom_dom_window_get_style_media
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"devicePixelRatio\"]"
        webkit_dom_dom_window_get_device_pixel_ratio ::
        JSRef DOMWindow -> IO Double
#else 
webkit_dom_dom_window_get_device_pixel_ratio ::
                                               JSRef DOMWindow -> IO Double
webkit_dom_dom_window_get_device_pixel_ratio = undefined
#endif
 
domWindowGetDevicePixelRatio ::
                             (DOMWindowClass self) => self -> IO Double
domWindowGetDevicePixelRatio self
  = webkit_dom_dom_window_get_device_pixel_ratio
      (unDOMWindow (toDOMWindow self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"applicationCache\"]"
        webkit_dom_dom_window_get_application_cache ::
        JSRef DOMWindow -> IO (JSRef DOMApplicationCache)
#else 
webkit_dom_dom_window_get_application_cache ::
                                              JSRef DOMWindow -> IO (JSRef DOMApplicationCache)
webkit_dom_dom_window_get_application_cache = undefined
#endif
 
domWindowGetApplicationCache ::
                             (DOMWindowClass self) => self -> IO (Maybe DOMApplicationCache)
domWindowGetApplicationCache self
  = fmap DOMApplicationCache . maybeJSNull <$>
      (webkit_dom_dom_window_get_application_cache
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sessionStorage\"]"
        webkit_dom_dom_window_get_session_storage ::
        JSRef DOMWindow -> IO (JSRef Storage)
#else 
webkit_dom_dom_window_get_session_storage ::
                                            JSRef DOMWindow -> IO (JSRef Storage)
webkit_dom_dom_window_get_session_storage = undefined
#endif
 
domWindowGetSessionStorage ::
                           (DOMWindowClass self) => self -> IO (Maybe Storage)
domWindowGetSessionStorage self
  = fmap Storage . maybeJSNull <$>
      (webkit_dom_dom_window_get_session_storage
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"localStorage\"]"
        webkit_dom_dom_window_get_local_storage ::
        JSRef DOMWindow -> IO (JSRef Storage)
#else 
webkit_dom_dom_window_get_local_storage ::
                                          JSRef DOMWindow -> IO (JSRef Storage)
webkit_dom_dom_window_get_local_storage = undefined
#endif
 
domWindowGetLocalStorage ::
                         (DOMWindowClass self) => self -> IO (Maybe Storage)
domWindowGetLocalStorage self
  = fmap Storage . maybeJSNull <$>
      (webkit_dom_dom_window_get_local_storage
         (unDOMWindow (toDOMWindow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"console\"]"
        webkit_dom_dom_window_get_console ::
        JSRef DOMWindow -> IO (JSRef Console)
#else 
webkit_dom_dom_window_get_console ::
                                    JSRef DOMWindow -> IO (JSRef Console)
webkit_dom_dom_window_get_console = undefined
#endif
 
domWindowGetConsole ::
                    (DOMWindowClass self) => self -> IO (Maybe Console)
domWindowGetConsole self
  = fmap Console . maybeJSNull <$>
      (webkit_dom_dom_window_get_console
         (unDOMWindow (toDOMWindow self)))
 
domWindowOnabort ::
                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnabort = (connect "abort")
 
domWindowOnbeforeunload ::
                        (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnbeforeunload = (connect "beforeunload")
 
domWindowOnblur ::
                (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnblur = (connect "blur")
 
domWindowOncanplay ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOncanplay = (connect "canplay")
 
domWindowOncanplaythrough ::
                          (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOncanplaythrough = (connect "canplaythrough")
 
domWindowOnchange ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnchange = (connect "change")
 
domWindowOnclick ::
                 (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOnclick = (connect "click")
 
domWindowOncontextmenu ::
                       (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOncontextmenu = (connect "contextmenu")
 
domWindowOndblclick ::
                    (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOndblclick = (connect "dblclick")
 
domWindowOndrag ::
                (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOndrag = (connect "drag")
 
domWindowOndragend ::
                   (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOndragend = (connect "dragend")
 
domWindowOndragenter ::
                     (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOndragenter = (connect "dragenter")
 
domWindowOndragleave ::
                     (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOndragleave = (connect "dragleave")
 
domWindowOndragover ::
                    (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOndragover = (connect "dragover")
 
domWindowOndragstart ::
                     (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOndragstart = (connect "dragstart")
 
domWindowOndrop ::
                (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOndrop = (connect "drop")
 
domWindowOndurationchange ::
                          (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOndurationchange = (connect "durationchange")
 
domWindowOnemptied ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnemptied = (connect "emptied")
 
domWindowOnended ::
                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnended = (connect "ended")
 
domWindowOnerror ::
                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnerror = (connect "error")
 
domWindowOnfocus ::
                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnfocus = (connect "focus")
 
domWindowOnhashchange ::
                      (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnhashchange = (connect "hashchange")
 
domWindowOninput ::
                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOninput = (connect "input")
 
domWindowOninvalid ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOninvalid = (connect "invalid")
 
domWindowOnkeydown ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnkeydown = (connect "keydown")
 
domWindowOnkeypress ::
                    (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnkeypress = (connect "keypress")
 
domWindowOnkeyup ::
                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnkeyup = (connect "keyup")
 
domWindowOnload ::
                (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnload = (connect "load")
 
domWindowOnloadeddata ::
                      (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnloadeddata = (connect "loadeddata")
 
domWindowOnloadedmetadata ::
                          (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnloadedmetadata = (connect "loadedmetadata")
 
domWindowOnloadstart ::
                     (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnloadstart = (connect "loadstart")
 
domWindowOnmessage ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnmessage = (connect "message")
 
domWindowOnmousedown ::
                     (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOnmousedown = (connect "mousedown")
 
domWindowOnmousemove ::
                     (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOnmousemove = (connect "mousemove")
 
domWindowOnmouseout ::
                    (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseout = (connect "mouseout")
 
domWindowOnmouseover ::
                     (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseover = (connect "mouseover")
 
domWindowOnmouseup ::
                   (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseup = (connect "mouseup")
 
domWindowOnmousewheel ::
                      (DOMWindowClass self) => Signal self (EventM MouseEvent self ())
domWindowOnmousewheel = (connect "mousewheel")
 
domWindowOnoffline ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnoffline = (connect "offline")
 
domWindowOnonline ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnonline = (connect "online")
 
domWindowOnpagehide ::
                    (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnpagehide = (connect "pagehide")
 
domWindowOnpageshow ::
                    (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnpageshow = (connect "pageshow")
 
domWindowOnpause ::
                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnpause = (connect "pause")
 
domWindowOnplay ::
                (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnplay = (connect "play")
 
domWindowOnplaying ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnplaying = (connect "playing")
 
domWindowOnpopstate ::
                    (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnpopstate = (connect "popstate")
 
domWindowOnprogress ::
                    (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnprogress = (connect "progress")
 
domWindowOnratechange ::
                      (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnratechange = (connect "ratechange")
 
domWindowOnresize ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnresize = (connect "resize")
 
domWindowOnscroll ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnscroll = (connect "scroll")
 
domWindowOnseeked ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnseeked = (connect "seeked")
 
domWindowOnseeking ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnseeking = (connect "seeking")
 
domWindowOnselect ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnselect = (connect "select")
 
domWindowOnstalled ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnstalled = (connect "stalled")
 
domWindowOnstorage ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnstorage = (connect "storage")
 
domWindowOnsubmit ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnsubmit = (connect "submit")
 
domWindowOnsuspend ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnsuspend = (connect "suspend")
 
domWindowOntimeupdate ::
                      (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOntimeupdate = (connect "timeupdate")
 
domWindowOnunload ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnunload = (connect "unload")
 
domWindowOnvolumechange ::
                        (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnvolumechange = (connect "volumechange")
 
domWindowOnwaiting ::
                   (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnwaiting = (connect "waiting")
 
domWindowOnreset ::
                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnreset = (connect "reset")
 
domWindowOnsearch ::
                  (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnsearch = (connect "search")
 
domWindowOnwebkitanimationend ::
                              (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationend = (connect "webkitanimationend")
 
domWindowOnwebkitanimationiteration ::
                                    (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationiteration
  = (connect "webkitanimationiteration")
 
domWindowOnwebkitanimationstart ::
                                (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationstart = (connect "webkitanimationstart")
 
domWindowOnwebkittransitionend ::
                               (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnwebkittransitionend = (connect "webkittransitionend")
 
domWindowOntouchstart ::
                      (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOntouchstart = (connect "touchstart")
 
domWindowOntouchmove ::
                     (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOntouchmove = (connect "touchmove")
 
domWindowOntouchend ::
                    (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOntouchend = (connect "touchend")
 
domWindowOntouchcancel ::
                       (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOntouchcancel = (connect "touchcancel")
 
domWindowOndevicemotion ::
                        (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOndevicemotion = (connect "devicemotion")
 
domWindowOndeviceorientation ::
                             (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOndeviceorientation = (connect "deviceorientation")
 
domWindowOnwebkitdeviceproximity ::
                                 (DOMWindowClass self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitdeviceproximity
  = (connect "webkitdeviceproximity")