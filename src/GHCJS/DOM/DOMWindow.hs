{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMWindow
       (ghcjs_dom_dom_window_get_selection, domWindowGetSelection,
        ghcjs_dom_dom_window_blur, domWindowBlur,
        ghcjs_dom_dom_window_print, domWindowPrint,
        ghcjs_dom_dom_window_stop, domWindowStop,
        ghcjs_dom_dom_window_alert, domWindowAlert,
        ghcjs_dom_dom_window_confirm, domWindowConfirm,
        ghcjs_dom_dom_window_prompt, domWindowPrompt,
        ghcjs_dom_dom_window_find, domWindowFind,
        ghcjs_dom_dom_window_scroll_by, domWindowScrollBy,
        ghcjs_dom_dom_window_scroll_to, domWindowScrollTo,
        ghcjs_dom_dom_window_scroll, domWindowScroll,
        ghcjs_dom_dom_window_move_by, domWindowMoveBy,
        ghcjs_dom_dom_window_move_to, domWindowMoveTo,
        ghcjs_dom_dom_window_resize_by, domWindowResizeBy,
        ghcjs_dom_dom_window_resize_to, domWindowResizeTo,
        ghcjs_dom_dom_window_match_media, domWindowMatchMedia,
        ghcjs_dom_dom_window_get_computed_style, domWindowGetComputedStyle,
        ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node,
        domWindowWebkitConvertPointFromPageToNode,
        ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page,
        domWindowWebkitConvertPointFromNodeToPage,
        ghcjs_dom_dom_window_dispatch_event, domWindowDispatchEvent,
        ghcjs_dom_dom_window_capture_events, domWindowCaptureEvents,
        ghcjs_dom_dom_window_release_events, domWindowReleaseEvents,
        ghcjs_dom_dom_window_get_screen, domWindowGetScreen,
        ghcjs_dom_dom_window_get_history, domWindowGetHistory,
        ghcjs_dom_dom_window_get_locationbar, domWindowGetLocationbar,
        ghcjs_dom_dom_window_get_menubar, domWindowGetMenubar,
        ghcjs_dom_dom_window_get_personalbar, domWindowGetPersonalbar,
        ghcjs_dom_dom_window_get_scrollbars, domWindowGetScrollbars,
        ghcjs_dom_dom_window_get_statusbar, domWindowGetStatusbar,
        ghcjs_dom_dom_window_get_toolbar, domWindowGetToolbar,
        ghcjs_dom_dom_window_get_navigator, domWindowGetNavigator,
        ghcjs_dom_dom_window_get_client_information,
        domWindowGetClientInformation,
        ghcjs_dom_dom_window_get_frame_element, domWindowGetFrameElement,
        ghcjs_dom_dom_window_get_offscreen_buffering,
        domWindowGetOffscreenBuffering,
        ghcjs_dom_dom_window_get_outer_height, domWindowGetOuterHeight,
        ghcjs_dom_dom_window_get_outer_width, domWindowGetOuterWidth,
        ghcjs_dom_dom_window_get_inner_height, domWindowGetInnerHeight,
        ghcjs_dom_dom_window_get_inner_width, domWindowGetInnerWidth,
        ghcjs_dom_dom_window_get_screen_x, domWindowGetScreenX,
        ghcjs_dom_dom_window_get_screen_y, domWindowGetScreenY,
        ghcjs_dom_dom_window_get_screen_left, domWindowGetScreenLeft,
        ghcjs_dom_dom_window_get_screen_top, domWindowGetScreenTop,
        ghcjs_dom_dom_window_get_scroll_x, domWindowGetScrollX,
        ghcjs_dom_dom_window_get_scroll_y, domWindowGetScrollY,
        ghcjs_dom_dom_window_get_page_x_offset, domWindowGetPageXOffset,
        ghcjs_dom_dom_window_get_page_y_offset, domWindowGetPageYOffset,
        ghcjs_dom_dom_window_get_closed, domWindowGetClosed,
        ghcjs_dom_dom_window_get_length, domWindowGetLength,
        ghcjs_dom_dom_window_set_name, domWindowSetName,
        ghcjs_dom_dom_window_get_name, domWindowGetName,
        ghcjs_dom_dom_window_set_status, domWindowSetStatus,
        ghcjs_dom_dom_window_get_status, domWindowGetStatus,
        ghcjs_dom_dom_window_set_default_status, domWindowSetDefaultStatus,
        ghcjs_dom_dom_window_get_default_status, domWindowGetDefaultStatus,
        ghcjs_dom_dom_window_get_self, domWindowGetSelf,
        ghcjs_dom_dom_window_get_window, domWindowGetWindow,
        ghcjs_dom_dom_window_get_frames, domWindowGetFrames,
        ghcjs_dom_dom_window_get_opener, domWindowGetOpener,
        ghcjs_dom_dom_window_get_parent, domWindowGetParent,
        ghcjs_dom_dom_window_get_top, domWindowGetTop,
        ghcjs_dom_dom_window_get_document, domWindowGetDocument,
        ghcjs_dom_dom_window_get_style_media, domWindowGetStyleMedia,
        ghcjs_dom_dom_window_get_device_pixel_ratio,
        domWindowGetDevicePixelRatio,
        ghcjs_dom_dom_window_get_application_cache,
        domWindowGetApplicationCache,
        ghcjs_dom_dom_window_get_session_storage,
        domWindowGetSessionStorage, ghcjs_dom_dom_window_get_local_storage,
        domWindowGetLocalStorage, ghcjs_dom_dom_window_get_css,
        domWindowGetCSS, domWindowOnabort, domWindowOnbeforeunload,
        domWindowOnblur, domWindowOncanplay, domWindowOncanplaythrough,
        domWindowOnchange, domWindowOnclick, domWindowOncontextmenu,
        domWindowOndblclick, domWindowOndrag, domWindowOndragend,
        domWindowOndragenter, domWindowOndragleave, domWindowOndragover,
        domWindowOndragstart, domWindowOndrop, domWindowOndurationchange,
        domWindowOnemptied, domWindowOnended, domWindowOnerror,
        domWindowOnfocus, domWindowOnhashchange, domWindowOninput,
        domWindowOninvalid, domWindowOnkeydown, domWindowOnkeypress,
        domWindowOnkeyup, domWindowOnload, domWindowOnloadeddata,
        domWindowOnloadedmetadata, domWindowOnloadstart,
        domWindowOnmessage, domWindowOnmousedown, domWindowOnmouseenter,
        domWindowOnmouseleave, domWindowOnmousemove, domWindowOnmouseout,
        domWindowOnmouseover, domWindowOnmouseup, domWindowOnmousewheel,
        domWindowOnoffline, domWindowOnonline, domWindowOnpagehide,
        domWindowOnpageshow, domWindowOnpause, domWindowOnplay,
        domWindowOnplaying, domWindowOnpopstate, domWindowOnprogress,
        domWindowOnratechange, domWindowOnresize, domWindowOnscroll,
        domWindowOnseeked, domWindowOnseeking, domWindowOnselect,
        domWindowOnstalled, domWindowOnstorage, domWindowOnsubmit,
        domWindowOnsuspend, domWindowOntimeupdate, domWindowOnunload,
        domWindowOnvolumechange, domWindowOnwaiting, domWindowOnwheel,
        domWindowOnreset, domWindowOnsearch, domWindowOnwebkitanimationend,
        domWindowOnwebkitanimationiteration,
        domWindowOnwebkitanimationstart, domWindowOnanimationend,
        domWindowOnanimationiteration, domWindowOnanimationstart,
        domWindowOnwebkittransitionend, domWindowOntransitionend,
        domWindowOntouchstart, domWindowOntouchmove, domWindowOntouchend,
        domWindowOntouchcancel, domWindowOngesturestart,
        domWindowOngesturechange, domWindowOngestureend,
        domWindowOndevicemotion, domWindowOndeviceorientation,
        domWindowOnwebkitdeviceproximity,
        domWindowOnwebkitwillrevealbottom, domWindowOnwebkitwillrevealleft,
        domWindowOnwebkitwillrevealright, domWindowOnwebkitwillrevealtop,
        DOMWindow, IsDOMWindow, castToDOMWindow, gTypeDOMWindow,
        toDOMWindow)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getSelection\"]()"
        ghcjs_dom_dom_window_get_selection ::
        JSRef DOMWindow -> IO (JSRef DOMSelection)
#else 
ghcjs_dom_dom_window_get_selection ::
                                     JSRef DOMWindow -> IO (JSRef DOMSelection)
ghcjs_dom_dom_window_get_selection = undefined
#endif
 
domWindowGetSelection ::
                      (IsDOMWindow self) => self -> IO (Maybe DOMSelection)
domWindowGetSelection self
  = fmap DOMSelection . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_selection
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"blur\"]()"
        ghcjs_dom_dom_window_blur :: JSRef DOMWindow -> IO ()
#else 
ghcjs_dom_dom_window_blur :: JSRef DOMWindow -> IO ()
ghcjs_dom_dom_window_blur = undefined
#endif
 
domWindowBlur :: (IsDOMWindow self) => self -> IO ()
domWindowBlur self
  = ghcjs_dom_dom_window_blur (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"print\"]()"
        ghcjs_dom_dom_window_print :: JSRef DOMWindow -> IO ()
#else 
ghcjs_dom_dom_window_print :: JSRef DOMWindow -> IO ()
ghcjs_dom_dom_window_print = undefined
#endif
 
domWindowPrint :: (IsDOMWindow self) => self -> IO ()
domWindowPrint self
  = ghcjs_dom_dom_window_print (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"stop\"]()"
        ghcjs_dom_dom_window_stop :: JSRef DOMWindow -> IO ()
#else 
ghcjs_dom_dom_window_stop :: JSRef DOMWindow -> IO ()
ghcjs_dom_dom_window_stop = undefined
#endif
 
domWindowStop :: (IsDOMWindow self) => self -> IO ()
domWindowStop self
  = ghcjs_dom_dom_window_stop (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"alert\"]($2)"
        ghcjs_dom_dom_window_alert :: JSRef DOMWindow -> JSString -> IO ()
#else 
ghcjs_dom_dom_window_alert :: JSRef DOMWindow -> JSString -> IO ()
ghcjs_dom_dom_window_alert = undefined
#endif
 
domWindowAlert ::
               (IsDOMWindow self, ToJSString message) => self -> message -> IO ()
domWindowAlert self message
  = ghcjs_dom_dom_window_alert (unDOMWindow (toDOMWindow self))
      (toJSString message)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"confirm\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_window_confirm ::
        JSRef DOMWindow -> JSString -> IO Bool
#else 
ghcjs_dom_dom_window_confirm ::
                               JSRef DOMWindow -> JSString -> IO Bool
ghcjs_dom_dom_window_confirm = undefined
#endif
 
domWindowConfirm ::
                 (IsDOMWindow self, ToJSString message) =>
                   self -> message -> IO Bool
domWindowConfirm self message
  = ghcjs_dom_dom_window_confirm (unDOMWindow (toDOMWindow self))
      (toJSString message)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"prompt\"]($2, $3)"
        ghcjs_dom_dom_window_prompt ::
        JSRef DOMWindow -> JSString -> JSString -> IO JSString
#else 
ghcjs_dom_dom_window_prompt ::
                              JSRef DOMWindow -> JSString -> JSString -> IO JSString
ghcjs_dom_dom_window_prompt = undefined
#endif
 
domWindowPrompt ::
                (IsDOMWindow self, ToJSString message, ToJSString defaultValue,
                 FromJSString result) =>
                  self -> message -> defaultValue -> IO result
domWindowPrompt self message defaultValue
  = fromJSString <$>
      (ghcjs_dom_dom_window_prompt (unDOMWindow (toDOMWindow self))
         (toJSString message)
         (toJSString defaultValue))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"find\"]($2, $3, $4, $5, $6,\n$7, $8) ? 1 : 0)"
        ghcjs_dom_dom_window_find ::
        JSRef DOMWindow ->
          JSString -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> IO Bool
#else 
ghcjs_dom_dom_window_find ::
                            JSRef DOMWindow ->
                              JSString -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> IO Bool
ghcjs_dom_dom_window_find = undefined
#endif
 
domWindowFind ::
              (IsDOMWindow self, ToJSString string) =>
                self ->
                  string -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> IO Bool
domWindowFind self string caseSensitive backwards wrap wholeWord
  searchInFrames showDialog
  = ghcjs_dom_dom_window_find (unDOMWindow (toDOMWindow self))
      (toJSString string)
      caseSensitive
      backwards
      wrap
      wholeWord
      searchInFrames
      showDialog


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollBy\"]($2, $3)"
        ghcjs_dom_dom_window_scroll_by ::
        JSRef DOMWindow -> Int -> Int -> IO ()
#else 
ghcjs_dom_dom_window_scroll_by ::
                                 JSRef DOMWindow -> Int -> Int -> IO ()
ghcjs_dom_dom_window_scroll_by = undefined
#endif
 
domWindowScrollBy ::
                  (IsDOMWindow self) => self -> Int -> Int -> IO ()
domWindowScrollBy self x y
  = ghcjs_dom_dom_window_scroll_by (unDOMWindow (toDOMWindow self)) x
      y


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollTo\"]($2, $3)"
        ghcjs_dom_dom_window_scroll_to ::
        JSRef DOMWindow -> Int -> Int -> IO ()
#else 
ghcjs_dom_dom_window_scroll_to ::
                                 JSRef DOMWindow -> Int -> Int -> IO ()
ghcjs_dom_dom_window_scroll_to = undefined
#endif
 
domWindowScrollTo ::
                  (IsDOMWindow self) => self -> Int -> Int -> IO ()
domWindowScrollTo self x y
  = ghcjs_dom_dom_window_scroll_to (unDOMWindow (toDOMWindow self)) x
      y


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scroll\"]($2, $3)"
        ghcjs_dom_dom_window_scroll ::
        JSRef DOMWindow -> Int -> Int -> IO ()
#else 
ghcjs_dom_dom_window_scroll ::
                              JSRef DOMWindow -> Int -> Int -> IO ()
ghcjs_dom_dom_window_scroll = undefined
#endif
 
domWindowScroll ::
                (IsDOMWindow self) => self -> Int -> Int -> IO ()
domWindowScroll self x y
  = ghcjs_dom_dom_window_scroll (unDOMWindow (toDOMWindow self)) x y


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"moveBy\"]($2, $3)"
        ghcjs_dom_dom_window_move_by ::
        JSRef DOMWindow -> Float -> Float -> IO ()
#else 
ghcjs_dom_dom_window_move_by ::
                               JSRef DOMWindow -> Float -> Float -> IO ()
ghcjs_dom_dom_window_move_by = undefined
#endif
 
domWindowMoveBy ::
                (IsDOMWindow self) => self -> Float -> Float -> IO ()
domWindowMoveBy self x y
  = ghcjs_dom_dom_window_move_by (unDOMWindow (toDOMWindow self)) x y


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)"
        ghcjs_dom_dom_window_move_to ::
        JSRef DOMWindow -> Float -> Float -> IO ()
#else 
ghcjs_dom_dom_window_move_to ::
                               JSRef DOMWindow -> Float -> Float -> IO ()
ghcjs_dom_dom_window_move_to = undefined
#endif
 
domWindowMoveTo ::
                (IsDOMWindow self) => self -> Float -> Float -> IO ()
domWindowMoveTo self x y
  = ghcjs_dom_dom_window_move_to (unDOMWindow (toDOMWindow self)) x y


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"resizeBy\"]($2, $3)"
        ghcjs_dom_dom_window_resize_by ::
        JSRef DOMWindow -> Float -> Float -> IO ()
#else 
ghcjs_dom_dom_window_resize_by ::
                                 JSRef DOMWindow -> Float -> Float -> IO ()
ghcjs_dom_dom_window_resize_by = undefined
#endif
 
domWindowResizeBy ::
                  (IsDOMWindow self) => self -> Float -> Float -> IO ()
domWindowResizeBy self x y
  = ghcjs_dom_dom_window_resize_by (unDOMWindow (toDOMWindow self)) x
      y


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"resizeTo\"]($2, $3)"
        ghcjs_dom_dom_window_resize_to ::
        JSRef DOMWindow -> Float -> Float -> IO ()
#else 
ghcjs_dom_dom_window_resize_to ::
                                 JSRef DOMWindow -> Float -> Float -> IO ()
ghcjs_dom_dom_window_resize_to = undefined
#endif
 
domWindowResizeTo ::
                  (IsDOMWindow self) => self -> Float -> Float -> IO ()
domWindowResizeTo self width height
  = ghcjs_dom_dom_window_resize_to (unDOMWindow (toDOMWindow self))
      width
      height


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"matchMedia\"]($2)"
        ghcjs_dom_dom_window_match_media ::
        JSRef DOMWindow -> JSString -> IO (JSRef MediaQueryList)
#else 
ghcjs_dom_dom_window_match_media ::
                                   JSRef DOMWindow -> JSString -> IO (JSRef MediaQueryList)
ghcjs_dom_dom_window_match_media = undefined
#endif
 
domWindowMatchMedia ::
                    (IsDOMWindow self, ToJSString query) =>
                      self -> query -> IO (Maybe MediaQueryList)
domWindowMatchMedia self query
  = fmap MediaQueryList . maybeJSNull <$>
      (ghcjs_dom_dom_window_match_media (unDOMWindow (toDOMWindow self))
         (toJSString query))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getComputedStyle\"]($2, $3)"
        ghcjs_dom_dom_window_get_computed_style ::
        JSRef DOMWindow ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)
#else 
ghcjs_dom_dom_window_get_computed_style ::
                                          JSRef DOMWindow ->
                                            JSRef Element ->
                                              JSString -> IO (JSRef CSSStyleDeclaration)
ghcjs_dom_dom_window_get_computed_style = undefined
#endif
 
domWindowGetComputedStyle ::
                          (IsDOMWindow self, IsElement element, ToJSString pseudoElement) =>
                            self ->
                              Maybe element -> pseudoElement -> IO (Maybe CSSStyleDeclaration)
domWindowGetComputedStyle self element pseudoElement
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_computed_style
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unElement . toElement) element)
         (toJSString pseudoElement))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromPageToNode\"]($2,\n$3)"
        ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node ::
        JSRef DOMWindow ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)
#else 
ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node ::
                                                              JSRef DOMWindow ->
                                                                JSRef Node ->
                                                                  JSRef WebKitPoint ->
                                                                    IO (JSRef WebKitPoint)
ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node
  = undefined
#endif
 
domWindowWebkitConvertPointFromPageToNode ::
                                          (IsDOMWindow self, IsNode node, IsWebKitPoint p) =>
                                            self -> Maybe node -> Maybe p -> IO (Maybe WebKitPoint)
domWindowWebkitConvertPointFromPageToNode self node p
  = fmap WebKitPoint . maybeJSNull <$>
      (ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unNode . toNode) node)
         (maybe jsNull (unWebKitPoint . toWebKitPoint) p))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromNodeToPage\"]($2,\n$3)"
        ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page ::
        JSRef DOMWindow ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)
#else 
ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page ::
                                                              JSRef DOMWindow ->
                                                                JSRef Node ->
                                                                  JSRef WebKitPoint ->
                                                                    IO (JSRef WebKitPoint)
ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page
  = undefined
#endif
 
domWindowWebkitConvertPointFromNodeToPage ::
                                          (IsDOMWindow self, IsNode node, IsWebKitPoint p) =>
                                            self -> Maybe node -> Maybe p -> IO (Maybe WebKitPoint)
domWindowWebkitConvertPointFromNodeToPage self node p
  = fmap WebKitPoint . maybeJSNull <$>
      (ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unNode . toNode) node)
         (maybe jsNull (unWebKitPoint . toWebKitPoint) p))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_window_dispatch_event ::
        JSRef DOMWindow -> JSRef Event -> IO Bool
#else 
ghcjs_dom_dom_window_dispatch_event ::
                                      JSRef DOMWindow -> JSRef Event -> IO Bool
ghcjs_dom_dom_window_dispatch_event = undefined
#endif
 
domWindowDispatchEvent ::
                       (IsDOMWindow self, IsEvent evt) => self -> Maybe evt -> IO Bool
domWindowDispatchEvent self evt
  = ghcjs_dom_dom_window_dispatch_event
      (unDOMWindow (toDOMWindow self))
      (maybe jsNull (unEvent . toEvent) evt)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        ghcjs_dom_dom_window_capture_events :: JSRef DOMWindow -> IO ()
#else 
ghcjs_dom_dom_window_capture_events :: JSRef DOMWindow -> IO ()
ghcjs_dom_dom_window_capture_events = undefined
#endif
 
domWindowCaptureEvents :: (IsDOMWindow self) => self -> IO ()
domWindowCaptureEvents self
  = ghcjs_dom_dom_window_capture_events
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        ghcjs_dom_dom_window_release_events :: JSRef DOMWindow -> IO ()
#else 
ghcjs_dom_dom_window_release_events :: JSRef DOMWindow -> IO ()
ghcjs_dom_dom_window_release_events = undefined
#endif
 
domWindowReleaseEvents :: (IsDOMWindow self) => self -> IO ()
domWindowReleaseEvents self
  = ghcjs_dom_dom_window_release_events
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"screen\"]"
        ghcjs_dom_dom_window_get_screen ::
        JSRef DOMWindow -> IO (JSRef DOMScreen)
#else 
ghcjs_dom_dom_window_get_screen ::
                                  JSRef DOMWindow -> IO (JSRef DOMScreen)
ghcjs_dom_dom_window_get_screen = undefined
#endif
 
domWindowGetScreen ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMScreen)
domWindowGetScreen self
  = fmap DOMScreen . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_screen (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"history\"]"
        ghcjs_dom_dom_window_get_history ::
        JSRef DOMWindow -> IO (JSRef History)
#else 
ghcjs_dom_dom_window_get_history ::
                                   JSRef DOMWindow -> IO (JSRef History)
ghcjs_dom_dom_window_get_history = undefined
#endif
 
domWindowGetHistory ::
                    (IsDOMWindow self) => self -> IO (Maybe History)
domWindowGetHistory self
  = fmap History . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_history (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"locationbar\"]"
        ghcjs_dom_dom_window_get_locationbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)
#else 
ghcjs_dom_dom_window_get_locationbar ::
                                       JSRef DOMWindow -> IO (JSRef BarProp)
ghcjs_dom_dom_window_get_locationbar = undefined
#endif
 
domWindowGetLocationbar ::
                        (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetLocationbar self
  = fmap BarProp . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_locationbar
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"menubar\"]"
        ghcjs_dom_dom_window_get_menubar ::
        JSRef DOMWindow -> IO (JSRef BarProp)
#else 
ghcjs_dom_dom_window_get_menubar ::
                                   JSRef DOMWindow -> IO (JSRef BarProp)
ghcjs_dom_dom_window_get_menubar = undefined
#endif
 
domWindowGetMenubar ::
                    (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetMenubar self
  = fmap BarProp . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_menubar (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"personalbar\"]"
        ghcjs_dom_dom_window_get_personalbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)
#else 
ghcjs_dom_dom_window_get_personalbar ::
                                       JSRef DOMWindow -> IO (JSRef BarProp)
ghcjs_dom_dom_window_get_personalbar = undefined
#endif
 
domWindowGetPersonalbar ::
                        (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetPersonalbar self
  = fmap BarProp . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_personalbar
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollbars\"]"
        ghcjs_dom_dom_window_get_scrollbars ::
        JSRef DOMWindow -> IO (JSRef BarProp)
#else 
ghcjs_dom_dom_window_get_scrollbars ::
                                      JSRef DOMWindow -> IO (JSRef BarProp)
ghcjs_dom_dom_window_get_scrollbars = undefined
#endif
 
domWindowGetScrollbars ::
                       (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetScrollbars self
  = fmap BarProp . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_scrollbars
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"statusbar\"]"
        ghcjs_dom_dom_window_get_statusbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)
#else 
ghcjs_dom_dom_window_get_statusbar ::
                                     JSRef DOMWindow -> IO (JSRef BarProp)
ghcjs_dom_dom_window_get_statusbar = undefined
#endif
 
domWindowGetStatusbar ::
                      (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetStatusbar self
  = fmap BarProp . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_statusbar
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"toolbar\"]"
        ghcjs_dom_dom_window_get_toolbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)
#else 
ghcjs_dom_dom_window_get_toolbar ::
                                   JSRef DOMWindow -> IO (JSRef BarProp)
ghcjs_dom_dom_window_get_toolbar = undefined
#endif
 
domWindowGetToolbar ::
                    (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetToolbar self
  = fmap BarProp . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_toolbar (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"navigator\"]"
        ghcjs_dom_dom_window_get_navigator ::
        JSRef DOMWindow -> IO (JSRef Navigator)
#else 
ghcjs_dom_dom_window_get_navigator ::
                                     JSRef DOMWindow -> IO (JSRef Navigator)
ghcjs_dom_dom_window_get_navigator = undefined
#endif
 
domWindowGetNavigator ::
                      (IsDOMWindow self) => self -> IO (Maybe Navigator)
domWindowGetNavigator self
  = fmap Navigator . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_navigator
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"clientInformation\"]"
        ghcjs_dom_dom_window_get_client_information ::
        JSRef DOMWindow -> IO (JSRef Navigator)
#else 
ghcjs_dom_dom_window_get_client_information ::
                                              JSRef DOMWindow -> IO (JSRef Navigator)
ghcjs_dom_dom_window_get_client_information = undefined
#endif
 
domWindowGetClientInformation ::
                              (IsDOMWindow self) => self -> IO (Maybe Navigator)
domWindowGetClientInformation self
  = fmap Navigator . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_client_information
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"frameElement\"]"
        ghcjs_dom_dom_window_get_frame_element ::
        JSRef DOMWindow -> IO (JSRef Element)
#else 
ghcjs_dom_dom_window_get_frame_element ::
                                         JSRef DOMWindow -> IO (JSRef Element)
ghcjs_dom_dom_window_get_frame_element = undefined
#endif
 
domWindowGetFrameElement ::
                         (IsDOMWindow self) => self -> IO (Maybe Element)
domWindowGetFrameElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_frame_element
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"offscreenBuffering\"] ? 1 : 0)"
        ghcjs_dom_dom_window_get_offscreen_buffering ::
        JSRef DOMWindow -> IO Bool
#else 
ghcjs_dom_dom_window_get_offscreen_buffering ::
                                               JSRef DOMWindow -> IO Bool
ghcjs_dom_dom_window_get_offscreen_buffering = undefined
#endif
 
domWindowGetOffscreenBuffering ::
                               (IsDOMWindow self) => self -> IO Bool
domWindowGetOffscreenBuffering self
  = ghcjs_dom_dom_window_get_offscreen_buffering
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"outerHeight\"]"
        ghcjs_dom_dom_window_get_outer_height :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_outer_height :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_outer_height = undefined
#endif
 
domWindowGetOuterHeight :: (IsDOMWindow self) => self -> IO Int
domWindowGetOuterHeight self
  = ghcjs_dom_dom_window_get_outer_height
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"outerWidth\"]"
        ghcjs_dom_dom_window_get_outer_width :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_outer_width :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_outer_width = undefined
#endif
 
domWindowGetOuterWidth :: (IsDOMWindow self) => self -> IO Int
domWindowGetOuterWidth self
  = ghcjs_dom_dom_window_get_outer_width
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"innerHeight\"]"
        ghcjs_dom_dom_window_get_inner_height :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_inner_height :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_inner_height = undefined
#endif
 
domWindowGetInnerHeight :: (IsDOMWindow self) => self -> IO Int
domWindowGetInnerHeight self
  = ghcjs_dom_dom_window_get_inner_height
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"innerWidth\"]"
        ghcjs_dom_dom_window_get_inner_width :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_inner_width :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_inner_width = undefined
#endif
 
domWindowGetInnerWidth :: (IsDOMWindow self) => self -> IO Int
domWindowGetInnerWidth self
  = ghcjs_dom_dom_window_get_inner_width
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"screenX\"]"
        ghcjs_dom_dom_window_get_screen_x :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_screen_x :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_screen_x = undefined
#endif
 
domWindowGetScreenX :: (IsDOMWindow self) => self -> IO Int
domWindowGetScreenX self
  = ghcjs_dom_dom_window_get_screen_x
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"screenY\"]"
        ghcjs_dom_dom_window_get_screen_y :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_screen_y :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_screen_y = undefined
#endif
 
domWindowGetScreenY :: (IsDOMWindow self) => self -> IO Int
domWindowGetScreenY self
  = ghcjs_dom_dom_window_get_screen_y
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"screenLeft\"]"
        ghcjs_dom_dom_window_get_screen_left :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_screen_left :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_screen_left = undefined
#endif
 
domWindowGetScreenLeft :: (IsDOMWindow self) => self -> IO Int
domWindowGetScreenLeft self
  = ghcjs_dom_dom_window_get_screen_left
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"screenTop\"]"
        ghcjs_dom_dom_window_get_screen_top :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_screen_top :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_screen_top = undefined
#endif
 
domWindowGetScreenTop :: (IsDOMWindow self) => self -> IO Int
domWindowGetScreenTop self
  = ghcjs_dom_dom_window_get_screen_top
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollX\"]"
        ghcjs_dom_dom_window_get_scroll_x :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_scroll_x :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_scroll_x = undefined
#endif
 
domWindowGetScrollX :: (IsDOMWindow self) => self -> IO Int
domWindowGetScrollX self
  = ghcjs_dom_dom_window_get_scroll_x
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollY\"]"
        ghcjs_dom_dom_window_get_scroll_y :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_scroll_y :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_scroll_y = undefined
#endif
 
domWindowGetScrollY :: (IsDOMWindow self) => self -> IO Int
domWindowGetScrollY self
  = ghcjs_dom_dom_window_get_scroll_y
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"pageXOffset\"]"
        ghcjs_dom_dom_window_get_page_x_offset :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_page_x_offset :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_page_x_offset = undefined
#endif
 
domWindowGetPageXOffset :: (IsDOMWindow self) => self -> IO Int
domWindowGetPageXOffset self
  = ghcjs_dom_dom_window_get_page_x_offset
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"pageYOffset\"]"
        ghcjs_dom_dom_window_get_page_y_offset :: JSRef DOMWindow -> IO Int
#else 
ghcjs_dom_dom_window_get_page_y_offset :: JSRef DOMWindow -> IO Int
ghcjs_dom_dom_window_get_page_y_offset = undefined
#endif
 
domWindowGetPageYOffset :: (IsDOMWindow self) => self -> IO Int
domWindowGetPageYOffset self
  = ghcjs_dom_dom_window_get_page_y_offset
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"closed\"] ? 1 : 0)"
        ghcjs_dom_dom_window_get_closed :: JSRef DOMWindow -> IO Bool
#else 
ghcjs_dom_dom_window_get_closed :: JSRef DOMWindow -> IO Bool
ghcjs_dom_dom_window_get_closed = undefined
#endif
 
domWindowGetClosed :: (IsDOMWindow self) => self -> IO Bool
domWindowGetClosed self
  = ghcjs_dom_dom_window_get_closed (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_window_get_length :: JSRef DOMWindow -> IO Word
#else 
ghcjs_dom_dom_window_get_length :: JSRef DOMWindow -> IO Word
ghcjs_dom_dom_window_get_length = undefined
#endif
 
domWindowGetLength :: (IsDOMWindow self) => self -> IO Word
domWindowGetLength self
  = ghcjs_dom_dom_window_get_length (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_dom_window_set_name ::
        JSRef DOMWindow -> JSString -> IO ()
#else 
ghcjs_dom_dom_window_set_name ::
                                JSRef DOMWindow -> JSString -> IO ()
ghcjs_dom_dom_window_set_name = undefined
#endif
 
domWindowSetName ::
                 (IsDOMWindow self, ToJSString val) => self -> val -> IO ()
domWindowSetName self val
  = ghcjs_dom_dom_window_set_name (unDOMWindow (toDOMWindow self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_dom_window_get_name :: JSRef DOMWindow -> IO JSString
#else 
ghcjs_dom_dom_window_get_name :: JSRef DOMWindow -> IO JSString
ghcjs_dom_dom_window_get_name = undefined
#endif
 
domWindowGetName ::
                 (IsDOMWindow self, FromJSString result) => self -> IO result
domWindowGetName self
  = fromJSString <$>
      (ghcjs_dom_dom_window_get_name (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"status\"] = $2;"
        ghcjs_dom_dom_window_set_status ::
        JSRef DOMWindow -> JSString -> IO ()
#else 
ghcjs_dom_dom_window_set_status ::
                                  JSRef DOMWindow -> JSString -> IO ()
ghcjs_dom_dom_window_set_status = undefined
#endif
 
domWindowSetStatus ::
                   (IsDOMWindow self, ToJSString val) => self -> val -> IO ()
domWindowSetStatus self val
  = ghcjs_dom_dom_window_set_status (unDOMWindow (toDOMWindow self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"status\"]"
        ghcjs_dom_dom_window_get_status :: JSRef DOMWindow -> IO JSString
#else 
ghcjs_dom_dom_window_get_status :: JSRef DOMWindow -> IO JSString
ghcjs_dom_dom_window_get_status = undefined
#endif
 
domWindowGetStatus ::
                   (IsDOMWindow self, FromJSString result) => self -> IO result
domWindowGetStatus self
  = fromJSString <$>
      (ghcjs_dom_dom_window_get_status (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"defaultStatus\"] = $2;"
        ghcjs_dom_dom_window_set_default_status ::
        JSRef DOMWindow -> JSString -> IO ()
#else 
ghcjs_dom_dom_window_set_default_status ::
                                          JSRef DOMWindow -> JSString -> IO ()
ghcjs_dom_dom_window_set_default_status = undefined
#endif
 
domWindowSetDefaultStatus ::
                          (IsDOMWindow self, ToJSString val) => self -> val -> IO ()
domWindowSetDefaultStatus self val
  = ghcjs_dom_dom_window_set_default_status
      (unDOMWindow (toDOMWindow self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"defaultStatus\"]"
        ghcjs_dom_dom_window_get_default_status ::
        JSRef DOMWindow -> IO JSString
#else 
ghcjs_dom_dom_window_get_default_status ::
                                          JSRef DOMWindow -> IO JSString
ghcjs_dom_dom_window_get_default_status = undefined
#endif
 
domWindowGetDefaultStatus ::
                          (IsDOMWindow self, FromJSString result) => self -> IO result
domWindowGetDefaultStatus self
  = fromJSString <$>
      (ghcjs_dom_dom_window_get_default_status
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"self\"]"
        ghcjs_dom_dom_window_get_self ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_dom_window_get_self ::
                                JSRef DOMWindow -> IO (JSRef DOMWindow)
ghcjs_dom_dom_window_get_self = undefined
#endif
 
domWindowGetSelf ::
                 (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetSelf self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_self (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"window\"]"
        ghcjs_dom_dom_window_get_window ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_dom_window_get_window ::
                                  JSRef DOMWindow -> IO (JSRef DOMWindow)
ghcjs_dom_dom_window_get_window = undefined
#endif
 
domWindowGetWindow ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetWindow self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_window (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"frames\"]"
        ghcjs_dom_dom_window_get_frames ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_dom_window_get_frames ::
                                  JSRef DOMWindow -> IO (JSRef DOMWindow)
ghcjs_dom_dom_window_get_frames = undefined
#endif
 
domWindowGetFrames ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetFrames self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_frames (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"opener\"]"
        ghcjs_dom_dom_window_get_opener ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_dom_window_get_opener ::
                                  JSRef DOMWindow -> IO (JSRef DOMWindow)
ghcjs_dom_dom_window_get_opener = undefined
#endif
 
domWindowGetOpener ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetOpener self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_opener (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"parent\"]"
        ghcjs_dom_dom_window_get_parent ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_dom_window_get_parent ::
                                  JSRef DOMWindow -> IO (JSRef DOMWindow)
ghcjs_dom_dom_window_get_parent = undefined
#endif
 
domWindowGetParent ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetParent self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_parent (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"top\"]"
        ghcjs_dom_dom_window_get_top ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_dom_window_get_top ::
                               JSRef DOMWindow -> IO (JSRef DOMWindow)
ghcjs_dom_dom_window_get_top = undefined
#endif
 
domWindowGetTop ::
                (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetTop self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_top (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"document\"]"
        ghcjs_dom_dom_window_get_document ::
        JSRef DOMWindow -> IO (JSRef Document)
#else 
ghcjs_dom_dom_window_get_document ::
                                    JSRef DOMWindow -> IO (JSRef Document)
ghcjs_dom_dom_window_get_document = undefined
#endif
 
domWindowGetDocument ::
                     (IsDOMWindow self) => self -> IO (Maybe Document)
domWindowGetDocument self
  = fmap Document . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_document
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        ghcjs_dom_dom_window_get_style_media ::
        JSRef DOMWindow -> IO (JSRef StyleMedia)
#else 
ghcjs_dom_dom_window_get_style_media ::
                                       JSRef DOMWindow -> IO (JSRef StyleMedia)
ghcjs_dom_dom_window_get_style_media = undefined
#endif
 
domWindowGetStyleMedia ::
                       (IsDOMWindow self) => self -> IO (Maybe StyleMedia)
domWindowGetStyleMedia self
  = fmap StyleMedia . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_style_media
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"devicePixelRatio\"]"
        ghcjs_dom_dom_window_get_device_pixel_ratio ::
        JSRef DOMWindow -> IO Double
#else 
ghcjs_dom_dom_window_get_device_pixel_ratio ::
                                              JSRef DOMWindow -> IO Double
ghcjs_dom_dom_window_get_device_pixel_ratio = undefined
#endif
 
domWindowGetDevicePixelRatio ::
                             (IsDOMWindow self) => self -> IO Double
domWindowGetDevicePixelRatio self
  = ghcjs_dom_dom_window_get_device_pixel_ratio
      (unDOMWindow (toDOMWindow self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"applicationCache\"]"
        ghcjs_dom_dom_window_get_application_cache ::
        JSRef DOMWindow -> IO (JSRef DOMApplicationCache)
#else 
ghcjs_dom_dom_window_get_application_cache ::
                                             JSRef DOMWindow -> IO (JSRef DOMApplicationCache)
ghcjs_dom_dom_window_get_application_cache = undefined
#endif
 
domWindowGetApplicationCache ::
                             (IsDOMWindow self) => self -> IO (Maybe DOMApplicationCache)
domWindowGetApplicationCache self
  = fmap DOMApplicationCache . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_application_cache
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"sessionStorage\"]"
        ghcjs_dom_dom_window_get_session_storage ::
        JSRef DOMWindow -> IO (JSRef Storage)
#else 
ghcjs_dom_dom_window_get_session_storage ::
                                           JSRef DOMWindow -> IO (JSRef Storage)
ghcjs_dom_dom_window_get_session_storage = undefined
#endif
 
domWindowGetSessionStorage ::
                           (IsDOMWindow self) => self -> IO (Maybe Storage)
domWindowGetSessionStorage self
  = fmap Storage . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_session_storage
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"localStorage\"]"
        ghcjs_dom_dom_window_get_local_storage ::
        JSRef DOMWindow -> IO (JSRef Storage)
#else 
ghcjs_dom_dom_window_get_local_storage ::
                                         JSRef DOMWindow -> IO (JSRef Storage)
ghcjs_dom_dom_window_get_local_storage = undefined
#endif
 
domWindowGetLocalStorage ::
                         (IsDOMWindow self) => self -> IO (Maybe Storage)
domWindowGetLocalStorage self
  = fmap Storage . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_local_storage
         (unDOMWindow (toDOMWindow self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"CSS\"]"
        ghcjs_dom_dom_window_get_css ::
        JSRef DOMWindow -> IO (JSRef DOMWindowCSS)
#else 
ghcjs_dom_dom_window_get_css ::
                               JSRef DOMWindow -> IO (JSRef DOMWindowCSS)
ghcjs_dom_dom_window_get_css = undefined
#endif
 
domWindowGetCSS ::
                (IsDOMWindow self) => self -> IO (Maybe DOMWindowCSS)
domWindowGetCSS self
  = fmap DOMWindowCSS . maybeJSNull <$>
      (ghcjs_dom_dom_window_get_css (unDOMWindow (toDOMWindow self)))
 
domWindowOnabort ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnabort = (connect "abort")
 
domWindowOnbeforeunload ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnbeforeunload = (connect "beforeunload")
 
domWindowOnblur ::
                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnblur = (connect "blur")
 
domWindowOncanplay ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOncanplay = (connect "canplay")
 
domWindowOncanplaythrough ::
                          (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOncanplaythrough = (connect "canplaythrough")
 
domWindowOnchange ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnchange = (connect "change")
 
domWindowOnclick ::
                 (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnclick = (connect "click")
 
domWindowOncontextmenu ::
                       (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOncontextmenu = (connect "contextmenu")
 
domWindowOndblclick ::
                    (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndblclick = (connect "dblclick")
 
domWindowOndrag ::
                (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndrag = (connect "drag")
 
domWindowOndragend ::
                   (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragend = (connect "dragend")
 
domWindowOndragenter ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragenter = (connect "dragenter")
 
domWindowOndragleave ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragleave = (connect "dragleave")
 
domWindowOndragover ::
                    (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragover = (connect "dragover")
 
domWindowOndragstart ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragstart = (connect "dragstart")
 
domWindowOndrop ::
                (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndrop = (connect "drop")
 
domWindowOndurationchange ::
                          (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOndurationchange = (connect "durationchange")
 
domWindowOnemptied ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnemptied = (connect "emptied")
 
domWindowOnended ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnended = (connect "ended")
 
domWindowOnerror ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnerror = (connect "error")
 
domWindowOnfocus ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnfocus = (connect "focus")
 
domWindowOnhashchange ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnhashchange = (connect "hashchange")
 
domWindowOninput ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOninput = (connect "input")
 
domWindowOninvalid ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOninvalid = (connect "invalid")
 
domWindowOnkeydown ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnkeydown = (connect "keydown")
 
domWindowOnkeypress ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnkeypress = (connect "keypress")
 
domWindowOnkeyup ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnkeyup = (connect "keyup")
 
domWindowOnload ::
                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnload = (connect "load")
 
domWindowOnloadeddata ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnloadeddata = (connect "loadeddata")
 
domWindowOnloadedmetadata ::
                          (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnloadedmetadata = (connect "loadedmetadata")
 
domWindowOnloadstart ::
                     (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnloadstart = (connect "loadstart")
 
domWindowOnmessage ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnmessage = (connect "message")
 
domWindowOnmousedown ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmousedown = (connect "mousedown")
 
domWindowOnmouseenter ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnmouseenter = (connect "mouseenter")
 
domWindowOnmouseleave ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnmouseleave = (connect "mouseleave")
 
domWindowOnmousemove ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmousemove = (connect "mousemove")
 
domWindowOnmouseout ::
                    (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseout = (connect "mouseout")
 
domWindowOnmouseover ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseover = (connect "mouseover")
 
domWindowOnmouseup ::
                   (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseup = (connect "mouseup")
 
domWindowOnmousewheel ::
                      (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmousewheel = (connect "mousewheel")
 
domWindowOnoffline ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnoffline = (connect "offline")
 
domWindowOnonline ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnonline = (connect "online")
 
domWindowOnpagehide ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnpagehide = (connect "pagehide")
 
domWindowOnpageshow ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnpageshow = (connect "pageshow")
 
domWindowOnpause ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnpause = (connect "pause")
 
domWindowOnplay ::
                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnplay = (connect "play")
 
domWindowOnplaying ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnplaying = (connect "playing")
 
domWindowOnpopstate ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnpopstate = (connect "popstate")
 
domWindowOnprogress ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnprogress = (connect "progress")
 
domWindowOnratechange ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnratechange = (connect "ratechange")
 
domWindowOnresize ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnresize = (connect "resize")
 
domWindowOnscroll ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnscroll = (connect "scroll")
 
domWindowOnseeked ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnseeked = (connect "seeked")
 
domWindowOnseeking ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnseeking = (connect "seeking")
 
domWindowOnselect ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnselect = (connect "select")
 
domWindowOnstalled ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnstalled = (connect "stalled")
 
domWindowOnstorage ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnstorage = (connect "storage")
 
domWindowOnsubmit ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnsubmit = (connect "submit")
 
domWindowOnsuspend ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnsuspend = (connect "suspend")
 
domWindowOntimeupdate ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntimeupdate = (connect "timeupdate")
 
domWindowOnunload ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnunload = (connect "unload")
 
domWindowOnvolumechange ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnvolumechange = (connect "volumechange")
 
domWindowOnwaiting ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwaiting = (connect "waiting")
 
domWindowOnwheel ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwheel = (connect "wheel")
 
domWindowOnreset ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnreset = (connect "reset")
 
domWindowOnsearch ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnsearch = (connect "search")
 
domWindowOnwebkitanimationend ::
                              (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationend = (connect "webkitanimationend")
 
domWindowOnwebkitanimationiteration ::
                                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationiteration
  = (connect "webkitanimationiteration")
 
domWindowOnwebkitanimationstart ::
                                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationstart = (connect "webkitanimationstart")
 
domWindowOnanimationend ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnanimationend = (connect "animationend")
 
domWindowOnanimationiteration ::
                              (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnanimationiteration = (connect "animationiteration")
 
domWindowOnanimationstart ::
                          (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnanimationstart = (connect "animationstart")
 
domWindowOnwebkittransitionend ::
                               (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkittransitionend = (connect "webkittransitionend")
 
domWindowOntransitionend ::
                         (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntransitionend = (connect "transitionend")
 
domWindowOntouchstart ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntouchstart = (connect "touchstart")
 
domWindowOntouchmove ::
                     (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntouchmove = (connect "touchmove")
 
domWindowOntouchend ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntouchend = (connect "touchend")
 
domWindowOntouchcancel ::
                       (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntouchcancel = (connect "touchcancel")
 
domWindowOngesturestart ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOngesturestart = (connect "gesturestart")
 
domWindowOngesturechange ::
                         (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOngesturechange = (connect "gesturechange")
 
domWindowOngestureend ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOngestureend = (connect "gestureend")
 
domWindowOndevicemotion ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOndevicemotion = (connect "devicemotion")
 
domWindowOndeviceorientation ::
                             (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOndeviceorientation = (connect "deviceorientation")
 
domWindowOnwebkitdeviceproximity ::
                                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitdeviceproximity
  = (connect "webkitdeviceproximity")
 
domWindowOnwebkitwillrevealbottom ::
                                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitwillrevealbottom
  = (connect "webkitwillrevealbottom")
 
domWindowOnwebkitwillrevealleft ::
                                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitwillrevealleft = (connect "webkitwillrevealleft")
 
domWindowOnwebkitwillrevealright ::
                                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitwillrevealright
  = (connect "webkitwillrevealright")
 
domWindowOnwebkitwillrevealtop ::
                               (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitwillrevealtop = (connect "webkitwillrevealtop")
#else
module GHCJS.DOM.DOMWindow (
  module Graphics.UI.Gtk.WebKit.DOM.DOMWindow
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMWindow
#endif
