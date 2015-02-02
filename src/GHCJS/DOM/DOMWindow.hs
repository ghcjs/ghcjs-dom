{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMWindow
       (ghcjs_dom_dom_window_open_database, domWindowOpenDatabase,
        ghcjs_dom_dom_window_get_selection, domWindowGetSelection,
        ghcjs_dom_dom_window_focus, domWindowFocus,
        ghcjs_dom_dom_window_blur, domWindowBlur,
        ghcjs_dom_dom_window_close, domWindowClose,
        ghcjs_dom_dom_window_print, domWindowPrint,
        ghcjs_dom_dom_window_stop, domWindowStop,
        ghcjs_dom_dom_window_open, domWindowOpen,
        ghcjs_dom_dom_window_show_modal_dialog, domWindowShowModalDialog,
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
        ghcjs_dom_dom_window_post_message, domWindowPostMessage,
        ghcjs_dom_dom_window_request_animation_frame,
        domWindowRequestAnimationFrame,
        ghcjs_dom_dom_window_cancel_animation_frame,
        domWindowCancelAnimationFrame,
        ghcjs_dom_dom_window_webkit_request_animation_frame,
        domWindowWebkitRequestAnimationFrame,
        ghcjs_dom_dom_window_webkit_cancel_animation_frame,
        domWindowWebkitCancelAnimationFrame,
        ghcjs_dom_dom_window_webkit_cancel_request_animation_frame,
        domWindowWebkitCancelRequestAnimationFrame,
        ghcjs_dom_dom_window_dispatch_event, domWindowDispatchEvent,
        ghcjs_dom_dom_window_capture_events, domWindowCaptureEvents,
        ghcjs_dom_dom_window_release_events, domWindowReleaseEvents,
        ghcjs_dom_dom_window_get_webkit_indexed_db,
        domWindowGetWebkitIndexedDB, ghcjs_dom_dom_window_get_indexed_db,
        domWindowGetIndexedDB,
        ghcjs_dom_dom_window_get_webkit_storage_info,
        domWindowGetWebkitStorageInfo,
        ghcjs_dom_dom_window_get_speech_synthesis,
        domWindowGetSpeechSynthesis, ghcjs_dom_dom_window_get_screen,
        domWindowGetScreen, ghcjs_dom_dom_window_get_history,
        domWindowGetHistory, ghcjs_dom_dom_window_get_locationbar,
        domWindowGetLocationbar, ghcjs_dom_dom_window_get_menubar,
        domWindowGetMenubar, ghcjs_dom_dom_window_get_personalbar,
        domWindowGetPersonalbar, ghcjs_dom_dom_window_get_scrollbars,
        domWindowGetScrollbars, ghcjs_dom_dom_window_get_statusbar,
        domWindowGetStatusbar, ghcjs_dom_dom_window_get_toolbar,
        domWindowGetToolbar, ghcjs_dom_dom_window_get_navigator,
        domWindowGetNavigator, ghcjs_dom_dom_window_get_client_information,
        domWindowGetClientInformation, ghcjs_dom_dom_window_get_crypto,
        domWindowGetCrypto, ghcjs_dom_dom_window_set_location,
        domWindowSetLocation, ghcjs_dom_dom_window_get_location,
        domWindowGetLocation, ghcjs_dom_dom_window_get_event,
        domWindowGetEvent, ghcjs_dom_dom_window_get_frame_element,
        domWindowGetFrameElement,
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
        domWindowGetLocalStorage, ghcjs_dom_dom_window_get_orientation,
        domWindowGetOrientation, ghcjs_dom_dom_window_get_performance,
        domWindowGetPerformance, ghcjs_dom_dom_window_get_css,
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
        domWindowOnorientationchange, domWindowOntouchstart,
        domWindowOntouchmove, domWindowOntouchend, domWindowOntouchcancel,
        domWindowOngesturestart, domWindowOngesturechange,
        domWindowOngestureend, domWindowOndevicemotion,
        domWindowOndeviceorientation, domWindowOnwebkitdeviceproximity,
        domWindowOnwebkitwillrevealbottom, domWindowOnwebkitwillrevealleft,
        domWindowOnwebkitwillrevealright, domWindowOnwebkitwillrevealtop,
        DOMWindow, IsDOMWindow, castToDOMWindow, gTypeDOMWindow,
        toDOMWindow)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"openDatabase\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_dom_window_open_database ::
        JSRef DOMWindow ->
          JSString ->
            JSString ->
              JSString -> Word -> JSRef DatabaseCallback -> IO (JSRef Database)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
domWindowOpenDatabase ::
                      (IsDOMWindow self, ToJSString name, ToJSString version,
                       ToJSString displayName, IsDatabaseCallback creationCallback) =>
                        self ->
                          name ->
                            version ->
                              displayName ->
                                Word -> Maybe creationCallback -> IO (Maybe Database)
domWindowOpenDatabase self name version displayName estimatedSize
  creationCallback
  = (ghcjs_dom_dom_window_open_database
       (unDOMWindow (toDOMWindow self))
       (toJSString name)
       (toJSString version)
       (toJSString displayName)
       estimatedSize
       (maybe jsNull (unDatabaseCallback . toDatabaseCallback)
          creationCallback))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getSelection\"]()"
        ghcjs_dom_dom_window_get_selection ::
        JSRef DOMWindow -> IO (JSRef DOMSelection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.selection Mozilla Window.selection documentation> 
domWindowGetSelection ::
                      (IsDOMWindow self) => self -> IO (Maybe DOMSelection)
domWindowGetSelection self
  = (ghcjs_dom_dom_window_get_selection
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"focus\"]()"
        ghcjs_dom_dom_window_focus :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.focus Mozilla Window.focus documentation> 
domWindowFocus :: (IsDOMWindow self) => self -> IO ()
domWindowFocus self
  = ghcjs_dom_dom_window_focus (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"blur\"]()"
        ghcjs_dom_dom_window_blur :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.blur Mozilla Window.blur documentation> 
domWindowBlur :: (IsDOMWindow self) => self -> IO ()
domWindowBlur self
  = ghcjs_dom_dom_window_blur (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_dom_window_close :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.close Mozilla Window.close documentation> 
domWindowClose :: (IsDOMWindow self) => self -> IO ()
domWindowClose self
  = ghcjs_dom_dom_window_close (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"print\"]()"
        ghcjs_dom_dom_window_print :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.print Mozilla Window.print documentation> 
domWindowPrint :: (IsDOMWindow self) => self -> IO ()
domWindowPrint self
  = ghcjs_dom_dom_window_print (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"stop\"]()"
        ghcjs_dom_dom_window_stop :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.stop Mozilla Window.stop documentation> 
domWindowStop :: (IsDOMWindow self) => self -> IO ()
domWindowStop self
  = ghcjs_dom_dom_window_stop (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"open\"]($2, $3, $4)"
        ghcjs_dom_dom_window_open ::
        JSRef DOMWindow ->
          JSString -> JSString -> JSString -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
domWindowOpen ::
              (IsDOMWindow self, ToJSString url, ToJSString name,
               ToJSString options) =>
                self -> url -> name -> options -> IO (Maybe DOMWindow)
domWindowOpen self url name options
  = (ghcjs_dom_dom_window_open (unDOMWindow (toDOMWindow self))
       (toJSString url)
       (toJSString name)
       (toJSString options))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"showModalDialog\"]($2, $3,\n$4)"
        ghcjs_dom_dom_window_show_modal_dialog ::
        JSRef DOMWindow -> JSString -> JSRef a -> JSString -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.showModalDialog Mozilla Window.showModalDialog documentation> 
domWindowShowModalDialog ::
                         (IsDOMWindow self, ToJSString url, ToJSString featureArgs) =>
                           self -> url -> JSRef a -> featureArgs -> IO (JSRef a)
domWindowShowModalDialog self url dialogArgs featureArgs
  = ghcjs_dom_dom_window_show_modal_dialog
      (unDOMWindow (toDOMWindow self))
      (toJSString url)
      dialogArgs
      (toJSString featureArgs)
 
foreign import javascript unsafe "$1[\"alert\"]($2)"
        ghcjs_dom_dom_window_alert :: JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.alert Mozilla Window.alert documentation> 
domWindowAlert ::
               (IsDOMWindow self, ToJSString message) => self -> message -> IO ()
domWindowAlert self message
  = ghcjs_dom_dom_window_alert (unDOMWindow (toDOMWindow self))
      (toJSString message)
 
foreign import javascript unsafe "($1[\"confirm\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_window_confirm ::
        JSRef DOMWindow -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.confirm Mozilla Window.confirm documentation> 
domWindowConfirm ::
                 (IsDOMWindow self, ToJSString message) =>
                   self -> message -> IO Bool
domWindowConfirm self message
  = ghcjs_dom_dom_window_confirm (unDOMWindow (toDOMWindow self))
      (toJSString message)
 
foreign import javascript unsafe "$1[\"prompt\"]($2, $3)"
        ghcjs_dom_dom_window_prompt ::
        JSRef DOMWindow -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
domWindowPrompt ::
                (IsDOMWindow self, ToJSString message, ToJSString defaultValue,
                 FromJSString result) =>
                  self -> message -> defaultValue -> IO result
domWindowPrompt self message defaultValue
  = fromJSString <$>
      (ghcjs_dom_dom_window_prompt (unDOMWindow (toDOMWindow self))
         (toJSString message)
         (toJSString defaultValue))
 
foreign import javascript unsafe
        "($1[\"find\"]($2, $3, $4, $5, $6,\n$7, $8) ? 1 : 0)"
        ghcjs_dom_dom_window_find ::
        JSRef DOMWindow ->
          JSString -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.find Mozilla Window.find documentation> 
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
 
foreign import javascript unsafe "$1[\"scrollBy\"]($2, $3)"
        ghcjs_dom_dom_window_scroll_by ::
        JSRef DOMWindow -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollBy Mozilla Window.scrollBy documentation> 
domWindowScrollBy ::
                  (IsDOMWindow self) => self -> Int -> Int -> IO ()
domWindowScrollBy self x y
  = ghcjs_dom_dom_window_scroll_by (unDOMWindow (toDOMWindow self)) x
      y
 
foreign import javascript unsafe "$1[\"scrollTo\"]($2, $3)"
        ghcjs_dom_dom_window_scroll_to ::
        JSRef DOMWindow -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollTo Mozilla Window.scrollTo documentation> 
domWindowScrollTo ::
                  (IsDOMWindow self) => self -> Int -> Int -> IO ()
domWindowScrollTo self x y
  = ghcjs_dom_dom_window_scroll_to (unDOMWindow (toDOMWindow self)) x
      y
 
foreign import javascript unsafe "$1[\"scroll\"]($2, $3)"
        ghcjs_dom_dom_window_scroll ::
        JSRef DOMWindow -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scroll Mozilla Window.scroll documentation> 
domWindowScroll ::
                (IsDOMWindow self) => self -> Int -> Int -> IO ()
domWindowScroll self x y
  = ghcjs_dom_dom_window_scroll (unDOMWindow (toDOMWindow self)) x y
 
foreign import javascript unsafe "$1[\"moveBy\"]($2, $3)"
        ghcjs_dom_dom_window_move_by ::
        JSRef DOMWindow -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveBy Mozilla Window.moveBy documentation> 
domWindowMoveBy ::
                (IsDOMWindow self) => self -> Float -> Float -> IO ()
domWindowMoveBy self x y
  = ghcjs_dom_dom_window_move_by (unDOMWindow (toDOMWindow self)) x y
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)"
        ghcjs_dom_dom_window_move_to ::
        JSRef DOMWindow -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveTo Mozilla Window.moveTo documentation> 
domWindowMoveTo ::
                (IsDOMWindow self) => self -> Float -> Float -> IO ()
domWindowMoveTo self x y
  = ghcjs_dom_dom_window_move_to (unDOMWindow (toDOMWindow self)) x y
 
foreign import javascript unsafe "$1[\"resizeBy\"]($2, $3)"
        ghcjs_dom_dom_window_resize_by ::
        JSRef DOMWindow -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeBy Mozilla Window.resizeBy documentation> 
domWindowResizeBy ::
                  (IsDOMWindow self) => self -> Float -> Float -> IO ()
domWindowResizeBy self x y
  = ghcjs_dom_dom_window_resize_by (unDOMWindow (toDOMWindow self)) x
      y
 
foreign import javascript unsafe "$1[\"resizeTo\"]($2, $3)"
        ghcjs_dom_dom_window_resize_to ::
        JSRef DOMWindow -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeTo Mozilla Window.resizeTo documentation> 
domWindowResizeTo ::
                  (IsDOMWindow self) => self -> Float -> Float -> IO ()
domWindowResizeTo self width height
  = ghcjs_dom_dom_window_resize_to (unDOMWindow (toDOMWindow self))
      width
      height
 
foreign import javascript unsafe "$1[\"matchMedia\"]($2)"
        ghcjs_dom_dom_window_match_media ::
        JSRef DOMWindow -> JSString -> IO (JSRef MediaQueryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchMedia Mozilla Window.matchMedia documentation> 
domWindowMatchMedia ::
                    (IsDOMWindow self, ToJSString query) =>
                      self -> query -> IO (Maybe MediaQueryList)
domWindowMatchMedia self query
  = (ghcjs_dom_dom_window_match_media
       (unDOMWindow (toDOMWindow self))
       (toJSString query))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getComputedStyle\"]($2, $3)"
        ghcjs_dom_dom_window_get_computed_style ::
        JSRef DOMWindow ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.computedStyle Mozilla Window.computedStyle documentation> 
domWindowGetComputedStyle ::
                          (IsDOMWindow self, IsElement element, ToJSString pseudoElement) =>
                            self ->
                              Maybe element -> pseudoElement -> IO (Maybe CSSStyleDeclaration)
domWindowGetComputedStyle self element pseudoElement
  = (ghcjs_dom_dom_window_get_computed_style
       (unDOMWindow (toDOMWindow self))
       (maybe jsNull (unElement . toElement) element)
       (toJSString pseudoElement))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromPageToNode\"]($2,\n$3)"
        ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node ::
        JSRef DOMWindow ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromPageToNode Mozilla Window.webkitConvertPointFromPageToNode documentation> 
domWindowWebkitConvertPointFromPageToNode ::
                                          (IsDOMWindow self, IsNode node, IsWebKitPoint p) =>
                                            self -> Maybe node -> Maybe p -> IO (Maybe WebKitPoint)
domWindowWebkitConvertPointFromPageToNode self node p
  = (ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node
       (unDOMWindow (toDOMWindow self))
       (maybe jsNull (unNode . toNode) node)
       (maybe jsNull (unWebKitPoint . toWebKitPoint) p))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromNodeToPage\"]($2,\n$3)"
        ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page ::
        JSRef DOMWindow ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromNodeToPage Mozilla Window.webkitConvertPointFromNodeToPage documentation> 
domWindowWebkitConvertPointFromNodeToPage ::
                                          (IsDOMWindow self, IsNode node, IsWebKitPoint p) =>
                                            self -> Maybe node -> Maybe p -> IO (Maybe WebKitPoint)
domWindowWebkitConvertPointFromNodeToPage self node p
  = (ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page
       (unDOMWindow (toDOMWindow self))
       (maybe jsNull (unNode . toNode) node)
       (maybe jsNull (unWebKitPoint . toWebKitPoint) p))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3, $4)"
        ghcjs_dom_dom_window_post_message ::
        JSRef DOMWindow ->
          JSRef SerializedScriptValue ->
            JSRef MessagePort -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.postMessage Mozilla Window.postMessage documentation> 
domWindowPostMessage ::
                     (IsDOMWindow self, IsSerializedScriptValue message,
                      IsMessagePort messagePort, ToJSString targetOrigin) =>
                       self -> Maybe message -> Maybe messagePort -> targetOrigin -> IO ()
domWindowPostMessage self message messagePort targetOrigin
  = ghcjs_dom_dom_window_post_message
      (unDOMWindow (toDOMWindow self))
      (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
         message)
      (maybe jsNull (unMessagePort . toMessagePort) messagePort)
      (toJSString targetOrigin)
 
foreign import javascript unsafe
        "$1[\"requestAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_request_animation_frame ::
        JSRef DOMWindow -> JSRef RequestAnimationFrameCallback -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.requestAnimationFrame Mozilla Window.requestAnimationFrame documentation> 
domWindowRequestAnimationFrame ::
                               (IsDOMWindow self, IsRequestAnimationFrameCallback callback) =>
                                 self -> Maybe callback -> IO Int
domWindowRequestAnimationFrame self callback
  = ghcjs_dom_dom_window_request_animation_frame
      (unDOMWindow (toDOMWindow self))
      (maybe jsNull
         (unRequestAnimationFrameCallback . toRequestAnimationFrameCallback)
         callback)
 
foreign import javascript unsafe "$1[\"cancelAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_cancel_animation_frame ::
        JSRef DOMWindow -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.cancelAnimationFrame Mozilla Window.cancelAnimationFrame documentation> 
domWindowCancelAnimationFrame ::
                              (IsDOMWindow self) => self -> Int -> IO ()
domWindowCancelAnimationFrame self id
  = ghcjs_dom_dom_window_cancel_animation_frame
      (unDOMWindow (toDOMWindow self))
      id
 
foreign import javascript unsafe
        "$1[\"webkitRequestAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_webkit_request_animation_frame ::
        JSRef DOMWindow -> JSRef RequestAnimationFrameCallback -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitRequestAnimationFrame Mozilla Window.webkitRequestAnimationFrame documentation> 
domWindowWebkitRequestAnimationFrame ::
                                     (IsDOMWindow self, IsRequestAnimationFrameCallback callback) =>
                                       self -> Maybe callback -> IO Int
domWindowWebkitRequestAnimationFrame self callback
  = ghcjs_dom_dom_window_webkit_request_animation_frame
      (unDOMWindow (toDOMWindow self))
      (maybe jsNull
         (unRequestAnimationFrameCallback . toRequestAnimationFrameCallback)
         callback)
 
foreign import javascript unsafe
        "$1[\"webkitCancelAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_webkit_cancel_animation_frame ::
        JSRef DOMWindow -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelAnimationFrame Mozilla Window.webkitCancelAnimationFrame documentation> 
domWindowWebkitCancelAnimationFrame ::
                                    (IsDOMWindow self) => self -> Int -> IO ()
domWindowWebkitCancelAnimationFrame self id
  = ghcjs_dom_dom_window_webkit_cancel_animation_frame
      (unDOMWindow (toDOMWindow self))
      id
 
foreign import javascript unsafe
        "$1[\"webkitCancelRequestAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_webkit_cancel_request_animation_frame ::
        JSRef DOMWindow -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelRequestAnimationFrame Mozilla Window.webkitCancelRequestAnimationFrame documentation> 
domWindowWebkitCancelRequestAnimationFrame ::
                                           (IsDOMWindow self) => self -> Int -> IO ()
domWindowWebkitCancelRequestAnimationFrame self id
  = ghcjs_dom_dom_window_webkit_cancel_request_animation_frame
      (unDOMWindow (toDOMWindow self))
      id
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_window_dispatch_event ::
        JSRef DOMWindow -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.dispatchEvent Mozilla Window.dispatchEvent documentation> 
domWindowDispatchEvent ::
                       (IsDOMWindow self, IsEvent evt) => self -> Maybe evt -> IO Bool
domWindowDispatchEvent self evt
  = ghcjs_dom_dom_window_dispatch_event
      (unDOMWindow (toDOMWindow self))
      (maybe jsNull (unEvent . toEvent) evt)
 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        ghcjs_dom_dom_window_capture_events :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.captureEvents Mozilla Window.captureEvents documentation> 
domWindowCaptureEvents :: (IsDOMWindow self) => self -> IO ()
domWindowCaptureEvents self
  = ghcjs_dom_dom_window_capture_events
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        ghcjs_dom_dom_window_release_events :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.releaseEvents Mozilla Window.releaseEvents documentation> 
domWindowReleaseEvents :: (IsDOMWindow self) => self -> IO ()
domWindowReleaseEvents self
  = ghcjs_dom_dom_window_release_events
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"webkitIndexedDB\"]"
        ghcjs_dom_dom_window_get_webkit_indexed_db ::
        JSRef DOMWindow -> IO (JSRef IDBFactory)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitIndexedDB Mozilla Window.webkitIndexedDB documentation> 
domWindowGetWebkitIndexedDB ::
                            (IsDOMWindow self) => self -> IO (Maybe IDBFactory)
domWindowGetWebkitIndexedDB self
  = (ghcjs_dom_dom_window_get_webkit_indexed_db
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"indexedDB\"]"
        ghcjs_dom_dom_window_get_indexed_db ::
        JSRef DOMWindow -> IO (JSRef IDBFactory)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.indexedDB Mozilla Window.indexedDB documentation> 
domWindowGetIndexedDB ::
                      (IsDOMWindow self) => self -> IO (Maybe IDBFactory)
domWindowGetIndexedDB self
  = (ghcjs_dom_dom_window_get_indexed_db
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"webkitStorageInfo\"]"
        ghcjs_dom_dom_window_get_webkit_storage_info ::
        JSRef DOMWindow -> IO (JSRef StorageInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitStorageInfo Mozilla Window.webkitStorageInfo documentation> 
domWindowGetWebkitStorageInfo ::
                              (IsDOMWindow self) => self -> IO (Maybe StorageInfo)
domWindowGetWebkitStorageInfo self
  = (ghcjs_dom_dom_window_get_webkit_storage_info
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"speechSynthesis\"]"
        ghcjs_dom_dom_window_get_speech_synthesis ::
        JSRef DOMWindow -> IO (JSRef SpeechSynthesis)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.speechSynthesis Mozilla Window.speechSynthesis documentation> 
domWindowGetSpeechSynthesis ::
                            (IsDOMWindow self) => self -> IO (Maybe SpeechSynthesis)
domWindowGetSpeechSynthesis self
  = (ghcjs_dom_dom_window_get_speech_synthesis
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"screen\"]"
        ghcjs_dom_dom_window_get_screen ::
        JSRef DOMWindow -> IO (JSRef DOMScreen)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screen Mozilla Window.screen documentation> 
domWindowGetScreen ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMScreen)
domWindowGetScreen self
  = (ghcjs_dom_dom_window_get_screen
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"history\"]"
        ghcjs_dom_dom_window_get_history ::
        JSRef DOMWindow -> IO (JSRef History)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.history Mozilla Window.history documentation> 
domWindowGetHistory ::
                    (IsDOMWindow self) => self -> IO (Maybe History)
domWindowGetHistory self
  = (ghcjs_dom_dom_window_get_history
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"locationbar\"]"
        ghcjs_dom_dom_window_get_locationbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.locationbar Mozilla Window.locationbar documentation> 
domWindowGetLocationbar ::
                        (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetLocationbar self
  = (ghcjs_dom_dom_window_get_locationbar
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"menubar\"]"
        ghcjs_dom_dom_window_get_menubar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.menubar Mozilla Window.menubar documentation> 
domWindowGetMenubar ::
                    (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetMenubar self
  = (ghcjs_dom_dom_window_get_menubar
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"personalbar\"]"
        ghcjs_dom_dom_window_get_personalbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.personalbar Mozilla Window.personalbar documentation> 
domWindowGetPersonalbar ::
                        (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetPersonalbar self
  = (ghcjs_dom_dom_window_get_personalbar
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"scrollbars\"]"
        ghcjs_dom_dom_window_get_scrollbars ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollbars Mozilla Window.scrollbars documentation> 
domWindowGetScrollbars ::
                       (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetScrollbars self
  = (ghcjs_dom_dom_window_get_scrollbars
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"statusbar\"]"
        ghcjs_dom_dom_window_get_statusbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.statusbar Mozilla Window.statusbar documentation> 
domWindowGetStatusbar ::
                      (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetStatusbar self
  = (ghcjs_dom_dom_window_get_statusbar
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"toolbar\"]"
        ghcjs_dom_dom_window_get_toolbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.toolbar Mozilla Window.toolbar documentation> 
domWindowGetToolbar ::
                    (IsDOMWindow self) => self -> IO (Maybe BarProp)
domWindowGetToolbar self
  = (ghcjs_dom_dom_window_get_toolbar
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"navigator\"]"
        ghcjs_dom_dom_window_get_navigator ::
        JSRef DOMWindow -> IO (JSRef Navigator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.navigator Mozilla Window.navigator documentation> 
domWindowGetNavigator ::
                      (IsDOMWindow self) => self -> IO (Maybe Navigator)
domWindowGetNavigator self
  = (ghcjs_dom_dom_window_get_navigator
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"clientInformation\"]"
        ghcjs_dom_dom_window_get_client_information ::
        JSRef DOMWindow -> IO (JSRef Navigator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.clientInformation Mozilla Window.clientInformation documentation> 
domWindowGetClientInformation ::
                              (IsDOMWindow self) => self -> IO (Maybe Navigator)
domWindowGetClientInformation self
  = (ghcjs_dom_dom_window_get_client_information
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"crypto\"]"
        ghcjs_dom_dom_window_get_crypto ::
        JSRef DOMWindow -> IO (JSRef Crypto)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.crypto Mozilla Window.crypto documentation> 
domWindowGetCrypto ::
                   (IsDOMWindow self) => self -> IO (Maybe Crypto)
domWindowGetCrypto self
  = (ghcjs_dom_dom_window_get_crypto
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"location\"] = $2;"
        ghcjs_dom_dom_window_set_location ::
        JSRef DOMWindow -> JSRef Location -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.location Mozilla Window.location documentation> 
domWindowSetLocation ::
                     (IsDOMWindow self, IsLocation val) => self -> Maybe val -> IO ()
domWindowSetLocation self val
  = ghcjs_dom_dom_window_set_location
      (unDOMWindow (toDOMWindow self))
      (maybe jsNull (unLocation . toLocation) val)
 
foreign import javascript unsafe "$1[\"location\"]"
        ghcjs_dom_dom_window_get_location ::
        JSRef DOMWindow -> IO (JSRef Location)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.location Mozilla Window.location documentation> 
domWindowGetLocation ::
                     (IsDOMWindow self) => self -> IO (Maybe Location)
domWindowGetLocation self
  = (ghcjs_dom_dom_window_get_location
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"event\"]"
        ghcjs_dom_dom_window_get_event ::
        JSRef DOMWindow -> IO (JSRef Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.event Mozilla Window.event documentation> 
domWindowGetEvent :: (IsDOMWindow self) => self -> IO (Maybe Event)
domWindowGetEvent self
  = (ghcjs_dom_dom_window_get_event (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"frameElement\"]"
        ghcjs_dom_dom_window_get_frame_element ::
        JSRef DOMWindow -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
domWindowGetFrameElement ::
                         (IsDOMWindow self) => self -> IO (Maybe Element)
domWindowGetFrameElement self
  = (ghcjs_dom_dom_window_get_frame_element
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"offscreenBuffering\"] ? 1 : 0)"
        ghcjs_dom_dom_window_get_offscreen_buffering ::
        JSRef DOMWindow -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.offscreenBuffering Mozilla Window.offscreenBuffering documentation> 
domWindowGetOffscreenBuffering ::
                               (IsDOMWindow self) => self -> IO Bool
domWindowGetOffscreenBuffering self
  = ghcjs_dom_dom_window_get_offscreen_buffering
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"outerHeight\"]"
        ghcjs_dom_dom_window_get_outer_height :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerHeight Mozilla Window.outerHeight documentation> 
domWindowGetOuterHeight :: (IsDOMWindow self) => self -> IO Int
domWindowGetOuterHeight self
  = ghcjs_dom_dom_window_get_outer_height
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"outerWidth\"]"
        ghcjs_dom_dom_window_get_outer_width :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerWidth Mozilla Window.outerWidth documentation> 
domWindowGetOuterWidth :: (IsDOMWindow self) => self -> IO Int
domWindowGetOuterWidth self
  = ghcjs_dom_dom_window_get_outer_width
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"innerHeight\"]"
        ghcjs_dom_dom_window_get_inner_height :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerHeight Mozilla Window.innerHeight documentation> 
domWindowGetInnerHeight :: (IsDOMWindow self) => self -> IO Int
domWindowGetInnerHeight self
  = ghcjs_dom_dom_window_get_inner_height
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"innerWidth\"]"
        ghcjs_dom_dom_window_get_inner_width :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerWidth Mozilla Window.innerWidth documentation> 
domWindowGetInnerWidth :: (IsDOMWindow self) => self -> IO Int
domWindowGetInnerWidth self
  = ghcjs_dom_dom_window_get_inner_width
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"screenX\"]"
        ghcjs_dom_dom_window_get_screen_x :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenX Mozilla Window.screenX documentation> 
domWindowGetScreenX :: (IsDOMWindow self) => self -> IO Int
domWindowGetScreenX self
  = ghcjs_dom_dom_window_get_screen_x
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"screenY\"]"
        ghcjs_dom_dom_window_get_screen_y :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenY Mozilla Window.screenY documentation> 
domWindowGetScreenY :: (IsDOMWindow self) => self -> IO Int
domWindowGetScreenY self
  = ghcjs_dom_dom_window_get_screen_y
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"screenLeft\"]"
        ghcjs_dom_dom_window_get_screen_left :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenLeft Mozilla Window.screenLeft documentation> 
domWindowGetScreenLeft :: (IsDOMWindow self) => self -> IO Int
domWindowGetScreenLeft self
  = ghcjs_dom_dom_window_get_screen_left
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"screenTop\"]"
        ghcjs_dom_dom_window_get_screen_top :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenTop Mozilla Window.screenTop documentation> 
domWindowGetScreenTop :: (IsDOMWindow self) => self -> IO Int
domWindowGetScreenTop self
  = ghcjs_dom_dom_window_get_screen_top
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"scrollX\"]"
        ghcjs_dom_dom_window_get_scroll_x :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollX Mozilla Window.scrollX documentation> 
domWindowGetScrollX :: (IsDOMWindow self) => self -> IO Int
domWindowGetScrollX self
  = ghcjs_dom_dom_window_get_scroll_x
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"scrollY\"]"
        ghcjs_dom_dom_window_get_scroll_y :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollY Mozilla Window.scrollY documentation> 
domWindowGetScrollY :: (IsDOMWindow self) => self -> IO Int
domWindowGetScrollY self
  = ghcjs_dom_dom_window_get_scroll_y
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"pageXOffset\"]"
        ghcjs_dom_dom_window_get_page_x_offset :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageXOffset Mozilla Window.pageXOffset documentation> 
domWindowGetPageXOffset :: (IsDOMWindow self) => self -> IO Int
domWindowGetPageXOffset self
  = ghcjs_dom_dom_window_get_page_x_offset
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"pageYOffset\"]"
        ghcjs_dom_dom_window_get_page_y_offset :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageYOffset Mozilla Window.pageYOffset documentation> 
domWindowGetPageYOffset :: (IsDOMWindow self) => self -> IO Int
domWindowGetPageYOffset self
  = ghcjs_dom_dom_window_get_page_y_offset
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "($1[\"closed\"] ? 1 : 0)"
        ghcjs_dom_dom_window_get_closed :: JSRef DOMWindow -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.closed Mozilla Window.closed documentation> 
domWindowGetClosed :: (IsDOMWindow self) => self -> IO Bool
domWindowGetClosed self
  = ghcjs_dom_dom_window_get_closed (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_window_get_length :: JSRef DOMWindow -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.length Mozilla Window.length documentation> 
domWindowGetLength :: (IsDOMWindow self) => self -> IO Word
domWindowGetLength self
  = ghcjs_dom_dom_window_get_length (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_dom_window_set_name ::
        JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
domWindowSetName ::
                 (IsDOMWindow self, ToJSString val) => self -> val -> IO ()
domWindowSetName self val
  = ghcjs_dom_dom_window_set_name (unDOMWindow (toDOMWindow self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_dom_window_get_name :: JSRef DOMWindow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
domWindowGetName ::
                 (IsDOMWindow self, FromJSString result) => self -> IO result
domWindowGetName self
  = fromJSString <$>
      (ghcjs_dom_dom_window_get_name (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"status\"] = $2;"
        ghcjs_dom_dom_window_set_status ::
        JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
domWindowSetStatus ::
                   (IsDOMWindow self, ToJSString val) => self -> val -> IO ()
domWindowSetStatus self val
  = ghcjs_dom_dom_window_set_status (unDOMWindow (toDOMWindow self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"status\"]"
        ghcjs_dom_dom_window_get_status :: JSRef DOMWindow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
domWindowGetStatus ::
                   (IsDOMWindow self, FromJSString result) => self -> IO result
domWindowGetStatus self
  = fromJSString <$>
      (ghcjs_dom_dom_window_get_status (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"defaultStatus\"] = $2;"
        ghcjs_dom_dom_window_set_default_status ::
        JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
domWindowSetDefaultStatus ::
                          (IsDOMWindow self, ToJSString val) => self -> val -> IO ()
domWindowSetDefaultStatus self val
  = ghcjs_dom_dom_window_set_default_status
      (unDOMWindow (toDOMWindow self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"defaultStatus\"]"
        ghcjs_dom_dom_window_get_default_status ::
        JSRef DOMWindow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
domWindowGetDefaultStatus ::
                          (IsDOMWindow self, FromJSString result) => self -> IO result
domWindowGetDefaultStatus self
  = fromJSString <$>
      (ghcjs_dom_dom_window_get_default_status
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"self\"]"
        ghcjs_dom_dom_window_get_self ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.self Mozilla Window.self documentation> 
domWindowGetSelf ::
                 (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetSelf self
  = (ghcjs_dom_dom_window_get_self (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"window\"]"
        ghcjs_dom_dom_window_get_window ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.window Mozilla Window.window documentation> 
domWindowGetWindow ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetWindow self
  = (ghcjs_dom_dom_window_get_window
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"frames\"]"
        ghcjs_dom_dom_window_get_frames ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frames Mozilla Window.frames documentation> 
domWindowGetFrames ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetFrames self
  = (ghcjs_dom_dom_window_get_frames
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"opener\"]"
        ghcjs_dom_dom_window_get_opener ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
domWindowGetOpener ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetOpener self
  = (ghcjs_dom_dom_window_get_opener
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"parent\"]"
        ghcjs_dom_dom_window_get_parent ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
domWindowGetParent ::
                   (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetParent self
  = (ghcjs_dom_dom_window_get_parent
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"top\"]"
        ghcjs_dom_dom_window_get_top ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
domWindowGetTop ::
                (IsDOMWindow self) => self -> IO (Maybe DOMWindow)
domWindowGetTop self
  = (ghcjs_dom_dom_window_get_top (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"document\"]"
        ghcjs_dom_dom_window_get_document ::
        JSRef DOMWindow -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.document Mozilla Window.document documentation> 
domWindowGetDocument ::
                     (IsDOMWindow self) => self -> IO (Maybe Document)
domWindowGetDocument self
  = (ghcjs_dom_dom_window_get_document
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        ghcjs_dom_dom_window_get_style_media ::
        JSRef DOMWindow -> IO (JSRef StyleMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.styleMedia Mozilla Window.styleMedia documentation> 
domWindowGetStyleMedia ::
                       (IsDOMWindow self) => self -> IO (Maybe StyleMedia)
domWindowGetStyleMedia self
  = (ghcjs_dom_dom_window_get_style_media
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"devicePixelRatio\"]"
        ghcjs_dom_dom_window_get_device_pixel_ratio ::
        JSRef DOMWindow -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.devicePixelRatio Mozilla Window.devicePixelRatio documentation> 
domWindowGetDevicePixelRatio ::
                             (IsDOMWindow self) => self -> IO Double
domWindowGetDevicePixelRatio self
  = ghcjs_dom_dom_window_get_device_pixel_ratio
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"applicationCache\"]"
        ghcjs_dom_dom_window_get_application_cache ::
        JSRef DOMWindow -> IO (JSRef DOMApplicationCache)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.applicationCache Mozilla Window.applicationCache documentation> 
domWindowGetApplicationCache ::
                             (IsDOMWindow self) => self -> IO (Maybe DOMApplicationCache)
domWindowGetApplicationCache self
  = (ghcjs_dom_dom_window_get_application_cache
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"sessionStorage\"]"
        ghcjs_dom_dom_window_get_session_storage ::
        JSRef DOMWindow -> IO (JSRef Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.sessionStorage Mozilla Window.sessionStorage documentation> 
domWindowGetSessionStorage ::
                           (IsDOMWindow self) => self -> IO (Maybe Storage)
domWindowGetSessionStorage self
  = (ghcjs_dom_dom_window_get_session_storage
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"localStorage\"]"
        ghcjs_dom_dom_window_get_local_storage ::
        JSRef DOMWindow -> IO (JSRef Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.localStorage Mozilla Window.localStorage documentation> 
domWindowGetLocalStorage ::
                         (IsDOMWindow self) => self -> IO (Maybe Storage)
domWindowGetLocalStorage self
  = (ghcjs_dom_dom_window_get_local_storage
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"orientation\"]"
        ghcjs_dom_dom_window_get_orientation :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.orientation Mozilla Window.orientation documentation> 
domWindowGetOrientation :: (IsDOMWindow self) => self -> IO Int
domWindowGetOrientation self
  = ghcjs_dom_dom_window_get_orientation
      (unDOMWindow (toDOMWindow self))
 
foreign import javascript unsafe "$1[\"performance\"]"
        ghcjs_dom_dom_window_get_performance ::
        JSRef DOMWindow -> IO (JSRef Performance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.performance Mozilla Window.performance documentation> 
domWindowGetPerformance ::
                        (IsDOMWindow self) => self -> IO (Maybe Performance)
domWindowGetPerformance self
  = (ghcjs_dom_dom_window_get_performance
       (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"CSS\"]"
        ghcjs_dom_dom_window_get_css ::
        JSRef DOMWindow -> IO (JSRef DOMWindowCSS)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.css Mozilla Window.css documentation> 
domWindowGetCSS ::
                (IsDOMWindow self) => self -> IO (Maybe DOMWindowCSS)
domWindowGetCSS self
  = (ghcjs_dom_dom_window_get_css (unDOMWindow (toDOMWindow self)))
      >>= fromJSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onabort Mozilla Window.onabort documentation> 
domWindowOnabort ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnabort = (connect "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onbeforeunload Mozilla Window.onbeforeunload documentation> 
domWindowOnbeforeunload ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnbeforeunload = (connect "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onblur Mozilla Window.onblur documentation> 
domWindowOnblur ::
                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnblur = (connect "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oncanplay Mozilla Window.oncanplay documentation> 
domWindowOncanplay ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOncanplay = (connect "canplay")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oncanplaythrough Mozilla Window.oncanplaythrough documentation> 
domWindowOncanplaythrough ::
                          (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOncanplaythrough = (connect "canplaythrough")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onchange Mozilla Window.onchange documentation> 
domWindowOnchange ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnchange = (connect "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onclick Mozilla Window.onclick documentation> 
domWindowOnclick ::
                 (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnclick = (connect "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oncontextmenu Mozilla Window.oncontextmenu documentation> 
domWindowOncontextmenu ::
                       (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOncontextmenu = (connect "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondblclick Mozilla Window.ondblclick documentation> 
domWindowOndblclick ::
                    (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndblclick = (connect "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondrag Mozilla Window.ondrag documentation> 
domWindowOndrag ::
                (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndrag = (connect "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragend Mozilla Window.ondragend documentation> 
domWindowOndragend ::
                   (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragend = (connect "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragenter Mozilla Window.ondragenter documentation> 
domWindowOndragenter ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragenter = (connect "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragleave Mozilla Window.ondragleave documentation> 
domWindowOndragleave ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragleave = (connect "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragover Mozilla Window.ondragover documentation> 
domWindowOndragover ::
                    (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragover = (connect "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragstart Mozilla Window.ondragstart documentation> 
domWindowOndragstart ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndragstart = (connect "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondrop Mozilla Window.ondrop documentation> 
domWindowOndrop ::
                (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOndrop = (connect "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondurationchange Mozilla Window.ondurationchange documentation> 
domWindowOndurationchange ::
                          (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOndurationchange = (connect "durationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onemptied Mozilla Window.onemptied documentation> 
domWindowOnemptied ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnemptied = (connect "emptied")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onended Mozilla Window.onended documentation> 
domWindowOnended ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnended = (connect "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onerror Mozilla Window.onerror documentation> 
domWindowOnerror ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onfocus Mozilla Window.onfocus documentation> 
domWindowOnfocus ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnfocus = (connect "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onhashchange Mozilla Window.onhashchange documentation> 
domWindowOnhashchange ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnhashchange = (connect "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oninput Mozilla Window.oninput documentation> 
domWindowOninput ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOninput = (connect "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oninvalid Mozilla Window.oninvalid documentation> 
domWindowOninvalid ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOninvalid = (connect "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onkeydown Mozilla Window.onkeydown documentation> 
domWindowOnkeydown ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnkeydown = (connect "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onkeypress Mozilla Window.onkeypress documentation> 
domWindowOnkeypress ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnkeypress = (connect "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onkeyup Mozilla Window.onkeyup documentation> 
domWindowOnkeyup ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnkeyup = (connect "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onload Mozilla Window.onload documentation> 
domWindowOnload ::
                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnload = (connect "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onloadeddata Mozilla Window.onloadeddata documentation> 
domWindowOnloadeddata ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnloadeddata = (connect "loadeddata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onloadedmetadata Mozilla Window.onloadedmetadata documentation> 
domWindowOnloadedmetadata ::
                          (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnloadedmetadata = (connect "loadedmetadata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onloadstart Mozilla Window.onloadstart documentation> 
domWindowOnloadstart ::
                     (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnloadstart = (connect "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmessage Mozilla Window.onmessage documentation> 
domWindowOnmessage ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnmessage = (connect "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmousedown Mozilla Window.onmousedown documentation> 
domWindowOnmousedown ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmousedown = (connect "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseenter Mozilla Window.onmouseenter documentation> 
domWindowOnmouseenter ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnmouseenter = (connect "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseleave Mozilla Window.onmouseleave documentation> 
domWindowOnmouseleave ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnmouseleave = (connect "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmousemove Mozilla Window.onmousemove documentation> 
domWindowOnmousemove ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmousemove = (connect "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseout Mozilla Window.onmouseout documentation> 
domWindowOnmouseout ::
                    (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseout = (connect "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseover Mozilla Window.onmouseover documentation> 
domWindowOnmouseover ::
                     (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseover = (connect "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseup Mozilla Window.onmouseup documentation> 
domWindowOnmouseup ::
                   (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmouseup = (connect "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmousewheel Mozilla Window.onmousewheel documentation> 
domWindowOnmousewheel ::
                      (IsDOMWindow self) => Signal self (EventM MouseEvent self ())
domWindowOnmousewheel = (connect "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onoffline Mozilla Window.onoffline documentation> 
domWindowOnoffline ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnoffline = (connect "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ononline Mozilla Window.ononline documentation> 
domWindowOnonline ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnonline = (connect "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onpagehide Mozilla Window.onpagehide documentation> 
domWindowOnpagehide ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnpagehide = (connect "pagehide")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onpageshow Mozilla Window.onpageshow documentation> 
domWindowOnpageshow ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnpageshow = (connect "pageshow")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onpause Mozilla Window.onpause documentation> 
domWindowOnpause ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnpause = (connect "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onplay Mozilla Window.onplay documentation> 
domWindowOnplay ::
                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnplay = (connect "play")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onplaying Mozilla Window.onplaying documentation> 
domWindowOnplaying ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnplaying = (connect "playing")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onpopstate Mozilla Window.onpopstate documentation> 
domWindowOnpopstate ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnpopstate = (connect "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onprogress Mozilla Window.onprogress documentation> 
domWindowOnprogress ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnprogress = (connect "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onratechange Mozilla Window.onratechange documentation> 
domWindowOnratechange ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnratechange = (connect "ratechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onresize Mozilla Window.onresize documentation> 
domWindowOnresize ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnresize = (connect "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onscroll Mozilla Window.onscroll documentation> 
domWindowOnscroll ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnscroll = (connect "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onseeked Mozilla Window.onseeked documentation> 
domWindowOnseeked ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnseeked = (connect "seeked")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onseeking Mozilla Window.onseeking documentation> 
domWindowOnseeking ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnseeking = (connect "seeking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onselect Mozilla Window.onselect documentation> 
domWindowOnselect ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnselect = (connect "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onstalled Mozilla Window.onstalled documentation> 
domWindowOnstalled ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnstalled = (connect "stalled")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onstorage Mozilla Window.onstorage documentation> 
domWindowOnstorage ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnstorage = (connect "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onsubmit Mozilla Window.onsubmit documentation> 
domWindowOnsubmit ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnsubmit = (connect "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onsuspend Mozilla Window.onsuspend documentation> 
domWindowOnsuspend ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnsuspend = (connect "suspend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontimeupdate Mozilla Window.ontimeupdate documentation> 
domWindowOntimeupdate ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntimeupdate = (connect "timeupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onunload Mozilla Window.onunload documentation> 
domWindowOnunload ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnunload = (connect "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onvolumechange Mozilla Window.onvolumechange documentation> 
domWindowOnvolumechange ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnvolumechange = (connect "volumechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwaiting Mozilla Window.onwaiting documentation> 
domWindowOnwaiting ::
                   (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwaiting = (connect "waiting")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwheel Mozilla Window.onwheel documentation> 
domWindowOnwheel ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwheel = (connect "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onreset Mozilla Window.onreset documentation> 
domWindowOnreset ::
                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnreset = (connect "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onsearch Mozilla Window.onsearch documentation> 
domWindowOnsearch ::
                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnsearch = (connect "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationend Mozilla Window.onwebkitanimationend documentation> 
domWindowOnwebkitanimationend ::
                              (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationend = (connect "webkitanimationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationiteration Mozilla Window.onwebkitanimationiteration documentation> 
domWindowOnwebkitanimationiteration ::
                                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationiteration
  = (connect "webkitanimationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationstart Mozilla Window.onwebkitanimationstart documentation> 
domWindowOnwebkitanimationstart ::
                                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitanimationstart = (connect "webkitanimationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onanimationend Mozilla Window.onanimationend documentation> 
domWindowOnanimationend ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnanimationend = (connect "animationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onanimationiteration Mozilla Window.onanimationiteration documentation> 
domWindowOnanimationiteration ::
                              (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnanimationiteration = (connect "animationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onanimationstart Mozilla Window.onanimationstart documentation> 
domWindowOnanimationstart ::
                          (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnanimationstart = (connect "animationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkittransitionend Mozilla Window.onwebkittransitionend documentation> 
domWindowOnwebkittransitionend ::
                               (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkittransitionend = (connect "webkittransitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontransitionend Mozilla Window.ontransitionend documentation> 
domWindowOntransitionend ::
                         (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntransitionend = (connect "transitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onorientationchange Mozilla Window.onorientationchange documentation> 
domWindowOnorientationchange ::
                             (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnorientationchange = (connect "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontouchstart Mozilla Window.ontouchstart documentation> 
domWindowOntouchstart ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntouchstart = (connect "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontouchmove Mozilla Window.ontouchmove documentation> 
domWindowOntouchmove ::
                     (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntouchmove = (connect "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontouchend Mozilla Window.ontouchend documentation> 
domWindowOntouchend ::
                    (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntouchend = (connect "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontouchcancel Mozilla Window.ontouchcancel documentation> 
domWindowOntouchcancel ::
                       (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOntouchcancel = (connect "touchcancel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongesturestart Mozilla Window.ongesturestart documentation> 
domWindowOngesturestart ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOngesturestart = (connect "gesturestart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongesturechange Mozilla Window.ongesturechange documentation> 
domWindowOngesturechange ::
                         (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOngesturechange = (connect "gesturechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongestureend Mozilla Window.ongestureend documentation> 
domWindowOngestureend ::
                      (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOngestureend = (connect "gestureend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondevicemotion Mozilla Window.ondevicemotion documentation> 
domWindowOndevicemotion ::
                        (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOndevicemotion = (connect "devicemotion")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondeviceorientation Mozilla Window.ondeviceorientation documentation> 
domWindowOndeviceorientation ::
                             (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOndeviceorientation = (connect "deviceorientation")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitdeviceproximity Mozilla Window.onwebkitdeviceproximity documentation> 
domWindowOnwebkitdeviceproximity ::
                                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitdeviceproximity
  = (connect "webkitdeviceproximity")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitwillrevealbottom Mozilla Window.onwebkitwillrevealbottom documentation> 
domWindowOnwebkitwillrevealbottom ::
                                  (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitwillrevealbottom
  = (connect "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitwillrevealleft Mozilla Window.onwebkitwillrevealleft documentation> 
domWindowOnwebkitwillrevealleft ::
                                (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitwillrevealleft = (connect "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitwillrevealright Mozilla Window.onwebkitwillrevealright documentation> 
domWindowOnwebkitwillrevealright ::
                                 (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitwillrevealright
  = (connect "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitwillrevealtop Mozilla Window.onwebkitwillrevealtop documentation> 
domWindowOnwebkitwillrevealtop ::
                               (IsDOMWindow self) => Signal self (EventM UIEvent self ())
domWindowOnwebkitwillrevealtop = (connect "webkitwillrevealtop")
#else
module GHCJS.DOM.DOMWindow (
  module Graphics.UI.Gtk.WebKit.DOM.DOMWindow
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMWindow
#endif
