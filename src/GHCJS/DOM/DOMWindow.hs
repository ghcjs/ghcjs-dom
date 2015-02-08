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
        domWindowGetCSS, domWindowAbort, domWindowBeforeUnload,
        domWindowBlurEvent, domWindowCanPlay, domWindowCanPlayThrough,
        domWindowChange, domWindowClick, domWindowContextMenu,
        domWindowDblClick, domWindowDrag, domWindowDragEnd,
        domWindowDragEnter, domWindowDragLeave, domWindowDragOver,
        domWindowDragStart, domWindowDrop, domWindowDurationChange,
        domWindowEmptied, domWindowEnded, domWindowError,
        domWindowFocusEvent, domWindowHashChange, domWindowInput,
        domWindowInvalid, domWindowKeyDown, domWindowKeyPress,
        domWindowKeyUp, domWindowLoad, domWindowLoadedData,
        domWindowLoadedMetadata, domWindowLoadStart, domWindowMessage,
        domWindowMouseDown, domWindowMouseEnter, domWindowMouseLeave,
        domWindowMouseMove, domWindowMouseOut, domWindowMouseOver,
        domWindowMouseUp, domWindowMouseWheel, domWindowOffline,
        domWindowOnline, domWindowPageHide, domWindowPageShow,
        domWindowPause, domWindowPlay, domWindowPlaying, domWindowPopState,
        domWindowProgress, domWindowRateChange, domWindowResize,
        domWindowScrollEvent, domWindowSeeked, domWindowSeeking,
        domWindowSelect, domWindowStalled, domWindowStorage,
        domWindowSubmit, domWindowSuspend, domWindowTimeUpdate,
        domWindowUnload, domWindowVolumeChange, domWindowWaiting,
        domWindowWheel, domWindowReset, domWindowSearch,
        domWindowWebKitAnimationEnd, domWindowWebKitAnimationIteration,
        domWindowWebKitAnimationStart, domWindowAnimationEnd,
        domWindowAnimationIteration, domWindowAnimationStart,
        domWindowWebKitTransitionEnd, domWindowTransitionEnd,
        domWindowOrientationChange, domWindowTouchStart,
        domWindowTouchMove, domWindowTouchEnd, domWindowTouchCancel,
        domWindowGestureStart, domWindowGestureChange, domWindowGestureEnd,
        domWindowDeviceMotion, domWindowDeviceOrientation,
        domWindowWebKitDeviceProximity, domWindowWebKitWillRevealBottom,
        domWindowWebKitWillRevealLeft, domWindowWebKitWillRevealRight,
        domWindowWebKitWillRevealTop, DOMWindow, IsDOMWindow,
        castToDOMWindow, gTypeDOMWindow, toDOMWindow)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
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
                      (MonadIO m, IsDOMWindow self, ToJSString name, ToJSString version,
                       ToJSString displayName, IsDatabaseCallback creationCallback) =>
                        self ->
                          name ->
                            version ->
                              displayName -> Word -> Maybe creationCallback -> m (Maybe Database)
domWindowOpenDatabase self name version displayName estimatedSize
  creationCallback
  = liftIO
      ((ghcjs_dom_dom_window_open_database
          (unDOMWindow (toDOMWindow self))
          (toJSString name)
          (toJSString version)
          (toJSString displayName)
          estimatedSize
          (maybe jsNull (unDatabaseCallback . toDatabaseCallback)
             creationCallback))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getSelection\"]()"
        ghcjs_dom_dom_window_get_selection ::
        JSRef DOMWindow -> IO (JSRef DOMSelection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.selection Mozilla Window.selection documentation> 
domWindowGetSelection ::
                      (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMSelection)
domWindowGetSelection self
  = liftIO
      ((ghcjs_dom_dom_window_get_selection
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"focus\"]()"
        ghcjs_dom_dom_window_focus :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.focus Mozilla Window.focus documentation> 
domWindowFocus :: (MonadIO m, IsDOMWindow self) => self -> m ()
domWindowFocus self
  = liftIO
      (ghcjs_dom_dom_window_focus (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"blur\"]()"
        ghcjs_dom_dom_window_blur :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.blur Mozilla Window.blur documentation> 
domWindowBlur :: (MonadIO m, IsDOMWindow self) => self -> m ()
domWindowBlur self
  = liftIO
      (ghcjs_dom_dom_window_blur (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_dom_window_close :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.close Mozilla Window.close documentation> 
domWindowClose :: (MonadIO m, IsDOMWindow self) => self -> m ()
domWindowClose self
  = liftIO
      (ghcjs_dom_dom_window_close (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"print\"]()"
        ghcjs_dom_dom_window_print :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.print Mozilla Window.print documentation> 
domWindowPrint :: (MonadIO m, IsDOMWindow self) => self -> m ()
domWindowPrint self
  = liftIO
      (ghcjs_dom_dom_window_print (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"stop\"]()"
        ghcjs_dom_dom_window_stop :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.stop Mozilla Window.stop documentation> 
domWindowStop :: (MonadIO m, IsDOMWindow self) => self -> m ()
domWindowStop self
  = liftIO
      (ghcjs_dom_dom_window_stop (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"open\"]($2, $3, $4)"
        ghcjs_dom_dom_window_open ::
        JSRef DOMWindow ->
          JSString -> JSString -> JSString -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
domWindowOpen ::
              (MonadIO m, IsDOMWindow self, ToJSString url, ToJSString name,
               ToJSString options) =>
                self -> url -> name -> options -> m (Maybe DOMWindow)
domWindowOpen self url name options
  = liftIO
      ((ghcjs_dom_dom_window_open (unDOMWindow (toDOMWindow self))
          (toJSString url)
          (toJSString name)
          (toJSString options))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"showModalDialog\"]($2, $3,\n$4)"
        ghcjs_dom_dom_window_show_modal_dialog ::
        JSRef DOMWindow -> JSString -> JSRef a -> JSString -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.showModalDialog Mozilla Window.showModalDialog documentation> 
domWindowShowModalDialog ::
                         (MonadIO m, IsDOMWindow self, ToJSString url,
                          ToJSString featureArgs) =>
                           self -> url -> JSRef a -> featureArgs -> m (JSRef a)
domWindowShowModalDialog self url dialogArgs featureArgs
  = liftIO
      (ghcjs_dom_dom_window_show_modal_dialog
         (unDOMWindow (toDOMWindow self))
         (toJSString url)
         dialogArgs
         (toJSString featureArgs))
 
foreign import javascript unsafe "$1[\"alert\"]($2)"
        ghcjs_dom_dom_window_alert :: JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.alert Mozilla Window.alert documentation> 
domWindowAlert ::
               (MonadIO m, IsDOMWindow self, ToJSString message) =>
                 self -> message -> m ()
domWindowAlert self message
  = liftIO
      (ghcjs_dom_dom_window_alert (unDOMWindow (toDOMWindow self))
         (toJSString message))
 
foreign import javascript unsafe "($1[\"confirm\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_window_confirm ::
        JSRef DOMWindow -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.confirm Mozilla Window.confirm documentation> 
domWindowConfirm ::
                 (MonadIO m, IsDOMWindow self, ToJSString message) =>
                   self -> message -> m Bool
domWindowConfirm self message
  = liftIO
      (ghcjs_dom_dom_window_confirm (unDOMWindow (toDOMWindow self))
         (toJSString message))
 
foreign import javascript unsafe "$1[\"prompt\"]($2, $3)"
        ghcjs_dom_dom_window_prompt ::
        JSRef DOMWindow -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
domWindowPrompt ::
                (MonadIO m, IsDOMWindow self, ToJSString message,
                 ToJSString defaultValue, FromJSString result) =>
                  self -> message -> defaultValue -> m result
domWindowPrompt self message defaultValue
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_dom_window_prompt (unDOMWindow (toDOMWindow self))
            (toJSString message)
            (toJSString defaultValue)))
 
foreign import javascript unsafe
        "($1[\"find\"]($2, $3, $4, $5, $6,\n$7, $8) ? 1 : 0)"
        ghcjs_dom_dom_window_find ::
        JSRef DOMWindow ->
          JSString -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.find Mozilla Window.find documentation> 
domWindowFind ::
              (MonadIO m, IsDOMWindow self, ToJSString string) =>
                self ->
                  string -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> m Bool
domWindowFind self string caseSensitive backwards wrap wholeWord
  searchInFrames showDialog
  = liftIO
      (ghcjs_dom_dom_window_find (unDOMWindow (toDOMWindow self))
         (toJSString string)
         caseSensitive
         backwards
         wrap
         wholeWord
         searchInFrames
         showDialog)
 
foreign import javascript unsafe "$1[\"scrollBy\"]($2, $3)"
        ghcjs_dom_dom_window_scroll_by ::
        JSRef DOMWindow -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollBy Mozilla Window.scrollBy documentation> 
domWindowScrollBy ::
                  (MonadIO m, IsDOMWindow self) => self -> Int -> Int -> m ()
domWindowScrollBy self x y
  = liftIO
      (ghcjs_dom_dom_window_scroll_by (unDOMWindow (toDOMWindow self)) x
         y)
 
foreign import javascript unsafe "$1[\"scrollTo\"]($2, $3)"
        ghcjs_dom_dom_window_scroll_to ::
        JSRef DOMWindow -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollTo Mozilla Window.scrollTo documentation> 
domWindowScrollTo ::
                  (MonadIO m, IsDOMWindow self) => self -> Int -> Int -> m ()
domWindowScrollTo self x y
  = liftIO
      (ghcjs_dom_dom_window_scroll_to (unDOMWindow (toDOMWindow self)) x
         y)
 
foreign import javascript unsafe "$1[\"scroll\"]($2, $3)"
        ghcjs_dom_dom_window_scroll ::
        JSRef DOMWindow -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scroll Mozilla Window.scroll documentation> 
domWindowScroll ::
                (MonadIO m, IsDOMWindow self) => self -> Int -> Int -> m ()
domWindowScroll self x y
  = liftIO
      (ghcjs_dom_dom_window_scroll (unDOMWindow (toDOMWindow self)) x y)
 
foreign import javascript unsafe "$1[\"moveBy\"]($2, $3)"
        ghcjs_dom_dom_window_move_by ::
        JSRef DOMWindow -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveBy Mozilla Window.moveBy documentation> 
domWindowMoveBy ::
                (MonadIO m, IsDOMWindow self) => self -> Float -> Float -> m ()
domWindowMoveBy self x y
  = liftIO
      (ghcjs_dom_dom_window_move_by (unDOMWindow (toDOMWindow self)) x y)
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)"
        ghcjs_dom_dom_window_move_to ::
        JSRef DOMWindow -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveTo Mozilla Window.moveTo documentation> 
domWindowMoveTo ::
                (MonadIO m, IsDOMWindow self) => self -> Float -> Float -> m ()
domWindowMoveTo self x y
  = liftIO
      (ghcjs_dom_dom_window_move_to (unDOMWindow (toDOMWindow self)) x y)
 
foreign import javascript unsafe "$1[\"resizeBy\"]($2, $3)"
        ghcjs_dom_dom_window_resize_by ::
        JSRef DOMWindow -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeBy Mozilla Window.resizeBy documentation> 
domWindowResizeBy ::
                  (MonadIO m, IsDOMWindow self) => self -> Float -> Float -> m ()
domWindowResizeBy self x y
  = liftIO
      (ghcjs_dom_dom_window_resize_by (unDOMWindow (toDOMWindow self)) x
         y)
 
foreign import javascript unsafe "$1[\"resizeTo\"]($2, $3)"
        ghcjs_dom_dom_window_resize_to ::
        JSRef DOMWindow -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeTo Mozilla Window.resizeTo documentation> 
domWindowResizeTo ::
                  (MonadIO m, IsDOMWindow self) => self -> Float -> Float -> m ()
domWindowResizeTo self width height
  = liftIO
      (ghcjs_dom_dom_window_resize_to (unDOMWindow (toDOMWindow self))
         width
         height)
 
foreign import javascript unsafe "$1[\"matchMedia\"]($2)"
        ghcjs_dom_dom_window_match_media ::
        JSRef DOMWindow -> JSString -> IO (JSRef MediaQueryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchMedia Mozilla Window.matchMedia documentation> 
domWindowMatchMedia ::
                    (MonadIO m, IsDOMWindow self, ToJSString query) =>
                      self -> query -> m (Maybe MediaQueryList)
domWindowMatchMedia self query
  = liftIO
      ((ghcjs_dom_dom_window_match_media (unDOMWindow (toDOMWindow self))
          (toJSString query))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getComputedStyle\"]($2, $3)"
        ghcjs_dom_dom_window_get_computed_style ::
        JSRef DOMWindow ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.computedStyle Mozilla Window.computedStyle documentation> 
domWindowGetComputedStyle ::
                          (MonadIO m, IsDOMWindow self, IsElement element,
                           ToJSString pseudoElement) =>
                            self ->
                              Maybe element -> pseudoElement -> m (Maybe CSSStyleDeclaration)
domWindowGetComputedStyle self element pseudoElement
  = liftIO
      ((ghcjs_dom_dom_window_get_computed_style
          (unDOMWindow (toDOMWindow self))
          (maybe jsNull (unElement . toElement) element)
          (toJSString pseudoElement))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromPageToNode\"]($2,\n$3)"
        ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node ::
        JSRef DOMWindow ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromPageToNode Mozilla Window.webkitConvertPointFromPageToNode documentation> 
domWindowWebkitConvertPointFromPageToNode ::
                                          (MonadIO m, IsDOMWindow self, IsNode node,
                                           IsWebKitPoint p) =>
                                            self -> Maybe node -> Maybe p -> m (Maybe WebKitPoint)
domWindowWebkitConvertPointFromPageToNode self node p
  = liftIO
      ((ghcjs_dom_dom_window_webkit_convert_point_from_page_to_node
          (unDOMWindow (toDOMWindow self))
          (maybe jsNull (unNode . toNode) node)
          (maybe jsNull (unWebKitPoint . toWebKitPoint) p))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromNodeToPage\"]($2,\n$3)"
        ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page ::
        JSRef DOMWindow ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromNodeToPage Mozilla Window.webkitConvertPointFromNodeToPage documentation> 
domWindowWebkitConvertPointFromNodeToPage ::
                                          (MonadIO m, IsDOMWindow self, IsNode node,
                                           IsWebKitPoint p) =>
                                            self -> Maybe node -> Maybe p -> m (Maybe WebKitPoint)
domWindowWebkitConvertPointFromNodeToPage self node p
  = liftIO
      ((ghcjs_dom_dom_window_webkit_convert_point_from_node_to_page
          (unDOMWindow (toDOMWindow self))
          (maybe jsNull (unNode . toNode) node)
          (maybe jsNull (unWebKitPoint . toWebKitPoint) p))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3, $4)"
        ghcjs_dom_dom_window_post_message ::
        JSRef DOMWindow ->
          JSRef SerializedScriptValue ->
            JSRef MessagePort -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.postMessage Mozilla Window.postMessage documentation> 
domWindowPostMessage ::
                     (MonadIO m, IsDOMWindow self, IsSerializedScriptValue message,
                      IsMessagePort messagePort, ToJSString targetOrigin) =>
                       self -> Maybe message -> Maybe messagePort -> targetOrigin -> m ()
domWindowPostMessage self message messagePort targetOrigin
  = liftIO
      (ghcjs_dom_dom_window_post_message (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
            message)
         (maybe jsNull (unMessagePort . toMessagePort) messagePort)
         (toJSString targetOrigin))
 
foreign import javascript unsafe
        "$1[\"requestAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_request_animation_frame ::
        JSRef DOMWindow -> JSRef RequestAnimationFrameCallback -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.requestAnimationFrame Mozilla Window.requestAnimationFrame documentation> 
domWindowRequestAnimationFrame ::
                               (MonadIO m, IsDOMWindow self,
                                IsRequestAnimationFrameCallback callback) =>
                                 self -> Maybe callback -> m Int
domWindowRequestAnimationFrame self callback
  = liftIO
      (ghcjs_dom_dom_window_request_animation_frame
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull
            (unRequestAnimationFrameCallback . toRequestAnimationFrameCallback)
            callback))
 
foreign import javascript unsafe "$1[\"cancelAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_cancel_animation_frame ::
        JSRef DOMWindow -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.cancelAnimationFrame Mozilla Window.cancelAnimationFrame documentation> 
domWindowCancelAnimationFrame ::
                              (MonadIO m, IsDOMWindow self) => self -> Int -> m ()
domWindowCancelAnimationFrame self id
  = liftIO
      (ghcjs_dom_dom_window_cancel_animation_frame
         (unDOMWindow (toDOMWindow self))
         id)
 
foreign import javascript unsafe
        "$1[\"webkitRequestAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_webkit_request_animation_frame ::
        JSRef DOMWindow -> JSRef RequestAnimationFrameCallback -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitRequestAnimationFrame Mozilla Window.webkitRequestAnimationFrame documentation> 
domWindowWebkitRequestAnimationFrame ::
                                     (MonadIO m, IsDOMWindow self,
                                      IsRequestAnimationFrameCallback callback) =>
                                       self -> Maybe callback -> m Int
domWindowWebkitRequestAnimationFrame self callback
  = liftIO
      (ghcjs_dom_dom_window_webkit_request_animation_frame
         (unDOMWindow (toDOMWindow self))
         (maybe jsNull
            (unRequestAnimationFrameCallback . toRequestAnimationFrameCallback)
            callback))
 
foreign import javascript unsafe
        "$1[\"webkitCancelAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_webkit_cancel_animation_frame ::
        JSRef DOMWindow -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelAnimationFrame Mozilla Window.webkitCancelAnimationFrame documentation> 
domWindowWebkitCancelAnimationFrame ::
                                    (MonadIO m, IsDOMWindow self) => self -> Int -> m ()
domWindowWebkitCancelAnimationFrame self id
  = liftIO
      (ghcjs_dom_dom_window_webkit_cancel_animation_frame
         (unDOMWindow (toDOMWindow self))
         id)
 
foreign import javascript unsafe
        "$1[\"webkitCancelRequestAnimationFrame\"]($2)"
        ghcjs_dom_dom_window_webkit_cancel_request_animation_frame ::
        JSRef DOMWindow -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelRequestAnimationFrame Mozilla Window.webkitCancelRequestAnimationFrame documentation> 
domWindowWebkitCancelRequestAnimationFrame ::
                                           (MonadIO m, IsDOMWindow self) => self -> Int -> m ()
domWindowWebkitCancelRequestAnimationFrame self id
  = liftIO
      (ghcjs_dom_dom_window_webkit_cancel_request_animation_frame
         (unDOMWindow (toDOMWindow self))
         id)
 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        ghcjs_dom_dom_window_capture_events :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.captureEvents Mozilla Window.captureEvents documentation> 
domWindowCaptureEvents ::
                       (MonadIO m, IsDOMWindow self) => self -> m ()
domWindowCaptureEvents self
  = liftIO
      (ghcjs_dom_dom_window_capture_events
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        ghcjs_dom_dom_window_release_events :: JSRef DOMWindow -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.releaseEvents Mozilla Window.releaseEvents documentation> 
domWindowReleaseEvents ::
                       (MonadIO m, IsDOMWindow self) => self -> m ()
domWindowReleaseEvents self
  = liftIO
      (ghcjs_dom_dom_window_release_events
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"webkitIndexedDB\"]"
        ghcjs_dom_dom_window_get_webkit_indexed_db ::
        JSRef DOMWindow -> IO (JSRef IDBFactory)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitIndexedDB Mozilla Window.webkitIndexedDB documentation> 
domWindowGetWebkitIndexedDB ::
                            (MonadIO m, IsDOMWindow self) => self -> m (Maybe IDBFactory)
domWindowGetWebkitIndexedDB self
  = liftIO
      ((ghcjs_dom_dom_window_get_webkit_indexed_db
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"indexedDB\"]"
        ghcjs_dom_dom_window_get_indexed_db ::
        JSRef DOMWindow -> IO (JSRef IDBFactory)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.indexedDB Mozilla Window.indexedDB documentation> 
domWindowGetIndexedDB ::
                      (MonadIO m, IsDOMWindow self) => self -> m (Maybe IDBFactory)
domWindowGetIndexedDB self
  = liftIO
      ((ghcjs_dom_dom_window_get_indexed_db
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitStorageInfo\"]"
        ghcjs_dom_dom_window_get_webkit_storage_info ::
        JSRef DOMWindow -> IO (JSRef StorageInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitStorageInfo Mozilla Window.webkitStorageInfo documentation> 
domWindowGetWebkitStorageInfo ::
                              (MonadIO m, IsDOMWindow self) => self -> m (Maybe StorageInfo)
domWindowGetWebkitStorageInfo self
  = liftIO
      ((ghcjs_dom_dom_window_get_webkit_storage_info
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"speechSynthesis\"]"
        ghcjs_dom_dom_window_get_speech_synthesis ::
        JSRef DOMWindow -> IO (JSRef SpeechSynthesis)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.speechSynthesis Mozilla Window.speechSynthesis documentation> 
domWindowGetSpeechSynthesis ::
                            (MonadIO m, IsDOMWindow self) => self -> m (Maybe SpeechSynthesis)
domWindowGetSpeechSynthesis self
  = liftIO
      ((ghcjs_dom_dom_window_get_speech_synthesis
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"screen\"]"
        ghcjs_dom_dom_window_get_screen ::
        JSRef DOMWindow -> IO (JSRef DOMScreen)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screen Mozilla Window.screen documentation> 
domWindowGetScreen ::
                   (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMScreen)
domWindowGetScreen self
  = liftIO
      ((ghcjs_dom_dom_window_get_screen (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"history\"]"
        ghcjs_dom_dom_window_get_history ::
        JSRef DOMWindow -> IO (JSRef History)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.history Mozilla Window.history documentation> 
domWindowGetHistory ::
                    (MonadIO m, IsDOMWindow self) => self -> m (Maybe History)
domWindowGetHistory self
  = liftIO
      ((ghcjs_dom_dom_window_get_history
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"locationbar\"]"
        ghcjs_dom_dom_window_get_locationbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.locationbar Mozilla Window.locationbar documentation> 
domWindowGetLocationbar ::
                        (MonadIO m, IsDOMWindow self) => self -> m (Maybe BarProp)
domWindowGetLocationbar self
  = liftIO
      ((ghcjs_dom_dom_window_get_locationbar
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"menubar\"]"
        ghcjs_dom_dom_window_get_menubar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.menubar Mozilla Window.menubar documentation> 
domWindowGetMenubar ::
                    (MonadIO m, IsDOMWindow self) => self -> m (Maybe BarProp)
domWindowGetMenubar self
  = liftIO
      ((ghcjs_dom_dom_window_get_menubar
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"personalbar\"]"
        ghcjs_dom_dom_window_get_personalbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.personalbar Mozilla Window.personalbar documentation> 
domWindowGetPersonalbar ::
                        (MonadIO m, IsDOMWindow self) => self -> m (Maybe BarProp)
domWindowGetPersonalbar self
  = liftIO
      ((ghcjs_dom_dom_window_get_personalbar
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scrollbars\"]"
        ghcjs_dom_dom_window_get_scrollbars ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollbars Mozilla Window.scrollbars documentation> 
domWindowGetScrollbars ::
                       (MonadIO m, IsDOMWindow self) => self -> m (Maybe BarProp)
domWindowGetScrollbars self
  = liftIO
      ((ghcjs_dom_dom_window_get_scrollbars
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"statusbar\"]"
        ghcjs_dom_dom_window_get_statusbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.statusbar Mozilla Window.statusbar documentation> 
domWindowGetStatusbar ::
                      (MonadIO m, IsDOMWindow self) => self -> m (Maybe BarProp)
domWindowGetStatusbar self
  = liftIO
      ((ghcjs_dom_dom_window_get_statusbar
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"toolbar\"]"
        ghcjs_dom_dom_window_get_toolbar ::
        JSRef DOMWindow -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.toolbar Mozilla Window.toolbar documentation> 
domWindowGetToolbar ::
                    (MonadIO m, IsDOMWindow self) => self -> m (Maybe BarProp)
domWindowGetToolbar self
  = liftIO
      ((ghcjs_dom_dom_window_get_toolbar
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"navigator\"]"
        ghcjs_dom_dom_window_get_navigator ::
        JSRef DOMWindow -> IO (JSRef Navigator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.navigator Mozilla Window.navigator documentation> 
domWindowGetNavigator ::
                      (MonadIO m, IsDOMWindow self) => self -> m (Maybe Navigator)
domWindowGetNavigator self
  = liftIO
      ((ghcjs_dom_dom_window_get_navigator
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"clientInformation\"]"
        ghcjs_dom_dom_window_get_client_information ::
        JSRef DOMWindow -> IO (JSRef Navigator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.clientInformation Mozilla Window.clientInformation documentation> 
domWindowGetClientInformation ::
                              (MonadIO m, IsDOMWindow self) => self -> m (Maybe Navigator)
domWindowGetClientInformation self
  = liftIO
      ((ghcjs_dom_dom_window_get_client_information
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"crypto\"]"
        ghcjs_dom_dom_window_get_crypto ::
        JSRef DOMWindow -> IO (JSRef Crypto)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.crypto Mozilla Window.crypto documentation> 
domWindowGetCrypto ::
                   (MonadIO m, IsDOMWindow self) => self -> m (Maybe Crypto)
domWindowGetCrypto self
  = liftIO
      ((ghcjs_dom_dom_window_get_crypto (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"location\"] = $2;"
        ghcjs_dom_dom_window_set_location ::
        JSRef DOMWindow -> JSRef Location -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.location Mozilla Window.location documentation> 
domWindowSetLocation ::
                     (MonadIO m, IsDOMWindow self, IsLocation val) =>
                       self -> Maybe val -> m ()
domWindowSetLocation self val
  = liftIO
      (ghcjs_dom_dom_window_set_location (unDOMWindow (toDOMWindow self))
         (maybe jsNull (unLocation . toLocation) val))
 
foreign import javascript unsafe "$1[\"location\"]"
        ghcjs_dom_dom_window_get_location ::
        JSRef DOMWindow -> IO (JSRef Location)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.location Mozilla Window.location documentation> 
domWindowGetLocation ::
                     (MonadIO m, IsDOMWindow self) => self -> m (Maybe Location)
domWindowGetLocation self
  = liftIO
      ((ghcjs_dom_dom_window_get_location
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"event\"]"
        ghcjs_dom_dom_window_get_event ::
        JSRef DOMWindow -> IO (JSRef Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.event Mozilla Window.event documentation> 
domWindowGetEvent ::
                  (MonadIO m, IsDOMWindow self) => self -> m (Maybe Event)
domWindowGetEvent self
  = liftIO
      ((ghcjs_dom_dom_window_get_event (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"frameElement\"]"
        ghcjs_dom_dom_window_get_frame_element ::
        JSRef DOMWindow -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
domWindowGetFrameElement ::
                         (MonadIO m, IsDOMWindow self) => self -> m (Maybe Element)
domWindowGetFrameElement self
  = liftIO
      ((ghcjs_dom_dom_window_get_frame_element
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"offscreenBuffering\"] ? 1 : 0)"
        ghcjs_dom_dom_window_get_offscreen_buffering ::
        JSRef DOMWindow -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.offscreenBuffering Mozilla Window.offscreenBuffering documentation> 
domWindowGetOffscreenBuffering ::
                               (MonadIO m, IsDOMWindow self) => self -> m Bool
domWindowGetOffscreenBuffering self
  = liftIO
      (ghcjs_dom_dom_window_get_offscreen_buffering
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"outerHeight\"]"
        ghcjs_dom_dom_window_get_outer_height :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerHeight Mozilla Window.outerHeight documentation> 
domWindowGetOuterHeight ::
                        (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetOuterHeight self
  = liftIO
      (ghcjs_dom_dom_window_get_outer_height
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"outerWidth\"]"
        ghcjs_dom_dom_window_get_outer_width :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerWidth Mozilla Window.outerWidth documentation> 
domWindowGetOuterWidth ::
                       (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetOuterWidth self
  = liftIO
      (ghcjs_dom_dom_window_get_outer_width
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"innerHeight\"]"
        ghcjs_dom_dom_window_get_inner_height :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerHeight Mozilla Window.innerHeight documentation> 
domWindowGetInnerHeight ::
                        (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetInnerHeight self
  = liftIO
      (ghcjs_dom_dom_window_get_inner_height
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"innerWidth\"]"
        ghcjs_dom_dom_window_get_inner_width :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerWidth Mozilla Window.innerWidth documentation> 
domWindowGetInnerWidth ::
                       (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetInnerWidth self
  = liftIO
      (ghcjs_dom_dom_window_get_inner_width
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"screenX\"]"
        ghcjs_dom_dom_window_get_screen_x :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenX Mozilla Window.screenX documentation> 
domWindowGetScreenX ::
                    (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetScreenX self
  = liftIO
      (ghcjs_dom_dom_window_get_screen_x
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"screenY\"]"
        ghcjs_dom_dom_window_get_screen_y :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenY Mozilla Window.screenY documentation> 
domWindowGetScreenY ::
                    (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetScreenY self
  = liftIO
      (ghcjs_dom_dom_window_get_screen_y
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"screenLeft\"]"
        ghcjs_dom_dom_window_get_screen_left :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenLeft Mozilla Window.screenLeft documentation> 
domWindowGetScreenLeft ::
                       (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetScreenLeft self
  = liftIO
      (ghcjs_dom_dom_window_get_screen_left
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"screenTop\"]"
        ghcjs_dom_dom_window_get_screen_top :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenTop Mozilla Window.screenTop documentation> 
domWindowGetScreenTop ::
                      (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetScreenTop self
  = liftIO
      (ghcjs_dom_dom_window_get_screen_top
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"scrollX\"]"
        ghcjs_dom_dom_window_get_scroll_x :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollX Mozilla Window.scrollX documentation> 
domWindowGetScrollX ::
                    (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetScrollX self
  = liftIO
      (ghcjs_dom_dom_window_get_scroll_x
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"scrollY\"]"
        ghcjs_dom_dom_window_get_scroll_y :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollY Mozilla Window.scrollY documentation> 
domWindowGetScrollY ::
                    (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetScrollY self
  = liftIO
      (ghcjs_dom_dom_window_get_scroll_y
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"pageXOffset\"]"
        ghcjs_dom_dom_window_get_page_x_offset :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageXOffset Mozilla Window.pageXOffset documentation> 
domWindowGetPageXOffset ::
                        (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetPageXOffset self
  = liftIO
      (ghcjs_dom_dom_window_get_page_x_offset
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"pageYOffset\"]"
        ghcjs_dom_dom_window_get_page_y_offset :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageYOffset Mozilla Window.pageYOffset documentation> 
domWindowGetPageYOffset ::
                        (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetPageYOffset self
  = liftIO
      (ghcjs_dom_dom_window_get_page_y_offset
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "($1[\"closed\"] ? 1 : 0)"
        ghcjs_dom_dom_window_get_closed :: JSRef DOMWindow -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.closed Mozilla Window.closed documentation> 
domWindowGetClosed ::
                   (MonadIO m, IsDOMWindow self) => self -> m Bool
domWindowGetClosed self
  = liftIO
      (ghcjs_dom_dom_window_get_closed (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_window_get_length :: JSRef DOMWindow -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.length Mozilla Window.length documentation> 
domWindowGetLength ::
                   (MonadIO m, IsDOMWindow self) => self -> m Word
domWindowGetLength self
  = liftIO
      (ghcjs_dom_dom_window_get_length (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_dom_window_set_name ::
        JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
domWindowSetName ::
                 (MonadIO m, IsDOMWindow self, ToJSString val) =>
                   self -> val -> m ()
domWindowSetName self val
  = liftIO
      (ghcjs_dom_dom_window_set_name (unDOMWindow (toDOMWindow self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_dom_window_get_name :: JSRef DOMWindow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
domWindowGetName ::
                 (MonadIO m, IsDOMWindow self, FromJSString result) =>
                   self -> m result
domWindowGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_dom_window_get_name (unDOMWindow (toDOMWindow self))))
 
foreign import javascript unsafe "$1[\"status\"] = $2;"
        ghcjs_dom_dom_window_set_status ::
        JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
domWindowSetStatus ::
                   (MonadIO m, IsDOMWindow self, ToJSString val) =>
                     self -> val -> m ()
domWindowSetStatus self val
  = liftIO
      (ghcjs_dom_dom_window_set_status (unDOMWindow (toDOMWindow self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"status\"]"
        ghcjs_dom_dom_window_get_status :: JSRef DOMWindow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
domWindowGetStatus ::
                   (MonadIO m, IsDOMWindow self, FromJSString result) =>
                     self -> m result
domWindowGetStatus self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_dom_window_get_status (unDOMWindow (toDOMWindow self))))
 
foreign import javascript unsafe "$1[\"defaultStatus\"] = $2;"
        ghcjs_dom_dom_window_set_default_status ::
        JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
domWindowSetDefaultStatus ::
                          (MonadIO m, IsDOMWindow self, ToJSString val) =>
                            self -> val -> m ()
domWindowSetDefaultStatus self val
  = liftIO
      (ghcjs_dom_dom_window_set_default_status
         (unDOMWindow (toDOMWindow self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"defaultStatus\"]"
        ghcjs_dom_dom_window_get_default_status ::
        JSRef DOMWindow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
domWindowGetDefaultStatus ::
                          (MonadIO m, IsDOMWindow self, FromJSString result) =>
                            self -> m result
domWindowGetDefaultStatus self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_dom_window_get_default_status
            (unDOMWindow (toDOMWindow self))))
 
foreign import javascript unsafe "$1[\"self\"]"
        ghcjs_dom_dom_window_get_self ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.self Mozilla Window.self documentation> 
domWindowGetSelf ::
                 (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMWindow)
domWindowGetSelf self
  = liftIO
      ((ghcjs_dom_dom_window_get_self (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"window\"]"
        ghcjs_dom_dom_window_get_window ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.window Mozilla Window.window documentation> 
domWindowGetWindow ::
                   (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMWindow)
domWindowGetWindow self
  = liftIO
      ((ghcjs_dom_dom_window_get_window (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"frames\"]"
        ghcjs_dom_dom_window_get_frames ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frames Mozilla Window.frames documentation> 
domWindowGetFrames ::
                   (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMWindow)
domWindowGetFrames self
  = liftIO
      ((ghcjs_dom_dom_window_get_frames (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"opener\"]"
        ghcjs_dom_dom_window_get_opener ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
domWindowGetOpener ::
                   (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMWindow)
domWindowGetOpener self
  = liftIO
      ((ghcjs_dom_dom_window_get_opener (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"parent\"]"
        ghcjs_dom_dom_window_get_parent ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
domWindowGetParent ::
                   (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMWindow)
domWindowGetParent self
  = liftIO
      ((ghcjs_dom_dom_window_get_parent (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"top\"]"
        ghcjs_dom_dom_window_get_top ::
        JSRef DOMWindow -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
domWindowGetTop ::
                (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMWindow)
domWindowGetTop self
  = liftIO
      ((ghcjs_dom_dom_window_get_top (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"document\"]"
        ghcjs_dom_dom_window_get_document ::
        JSRef DOMWindow -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.document Mozilla Window.document documentation> 
domWindowGetDocument ::
                     (MonadIO m, IsDOMWindow self) => self -> m (Maybe Document)
domWindowGetDocument self
  = liftIO
      ((ghcjs_dom_dom_window_get_document
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        ghcjs_dom_dom_window_get_style_media ::
        JSRef DOMWindow -> IO (JSRef StyleMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.styleMedia Mozilla Window.styleMedia documentation> 
domWindowGetStyleMedia ::
                       (MonadIO m, IsDOMWindow self) => self -> m (Maybe StyleMedia)
domWindowGetStyleMedia self
  = liftIO
      ((ghcjs_dom_dom_window_get_style_media
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"devicePixelRatio\"]"
        ghcjs_dom_dom_window_get_device_pixel_ratio ::
        JSRef DOMWindow -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.devicePixelRatio Mozilla Window.devicePixelRatio documentation> 
domWindowGetDevicePixelRatio ::
                             (MonadIO m, IsDOMWindow self) => self -> m Double
domWindowGetDevicePixelRatio self
  = liftIO
      (ghcjs_dom_dom_window_get_device_pixel_ratio
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"applicationCache\"]"
        ghcjs_dom_dom_window_get_application_cache ::
        JSRef DOMWindow -> IO (JSRef DOMApplicationCache)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.applicationCache Mozilla Window.applicationCache documentation> 
domWindowGetApplicationCache ::
                             (MonadIO m, IsDOMWindow self) =>
                               self -> m (Maybe DOMApplicationCache)
domWindowGetApplicationCache self
  = liftIO
      ((ghcjs_dom_dom_window_get_application_cache
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"sessionStorage\"]"
        ghcjs_dom_dom_window_get_session_storage ::
        JSRef DOMWindow -> IO (JSRef Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.sessionStorage Mozilla Window.sessionStorage documentation> 
domWindowGetSessionStorage ::
                           (MonadIO m, IsDOMWindow self) => self -> m (Maybe Storage)
domWindowGetSessionStorage self
  = liftIO
      ((ghcjs_dom_dom_window_get_session_storage
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"localStorage\"]"
        ghcjs_dom_dom_window_get_local_storage ::
        JSRef DOMWindow -> IO (JSRef Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.localStorage Mozilla Window.localStorage documentation> 
domWindowGetLocalStorage ::
                         (MonadIO m, IsDOMWindow self) => self -> m (Maybe Storage)
domWindowGetLocalStorage self
  = liftIO
      ((ghcjs_dom_dom_window_get_local_storage
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"orientation\"]"
        ghcjs_dom_dom_window_get_orientation :: JSRef DOMWindow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.orientation Mozilla Window.orientation documentation> 
domWindowGetOrientation ::
                        (MonadIO m, IsDOMWindow self) => self -> m Int
domWindowGetOrientation self
  = liftIO
      (ghcjs_dom_dom_window_get_orientation
         (unDOMWindow (toDOMWindow self)))
 
foreign import javascript unsafe "$1[\"performance\"]"
        ghcjs_dom_dom_window_get_performance ::
        JSRef DOMWindow -> IO (JSRef Performance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.performance Mozilla Window.performance documentation> 
domWindowGetPerformance ::
                        (MonadIO m, IsDOMWindow self) => self -> m (Maybe Performance)
domWindowGetPerformance self
  = liftIO
      ((ghcjs_dom_dom_window_get_performance
          (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"CSS\"]"
        ghcjs_dom_dom_window_get_css ::
        JSRef DOMWindow -> IO (JSRef DOMWindowCSS)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.css Mozilla Window.css documentation> 
domWindowGetCSS ::
                (MonadIO m, IsDOMWindow self) => self -> m (Maybe DOMWindowCSS)
domWindowGetCSS self
  = liftIO
      ((ghcjs_dom_dom_window_get_css (unDOMWindow (toDOMWindow self)))
         >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.abort Mozilla Window.abort documentation> 
domWindowAbort ::
               (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowAbort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.beforeUnload Mozilla Window.beforeUnload documentation> 
domWindowBeforeUnload ::
                      (IsDOMWindow self, IsEventTarget self) =>
                        EventName self BeforeUnloadEvent
domWindowBeforeUnload = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.blurEvent Mozilla Window.blurEvent documentation> 
domWindowBlurEvent ::
                   (IsDOMWindow self, IsEventTarget self) => EventName self FocusEvent
domWindowBlurEvent = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.canPlay Mozilla Window.canPlay documentation> 
domWindowCanPlay ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowCanPlay = unsafeEventName (toJSString "canplay")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.canPlayThrough Mozilla Window.canPlayThrough documentation> 
domWindowCanPlayThrough ::
                        (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowCanPlayThrough
  = unsafeEventName (toJSString "canplaythrough")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.change Mozilla Window.change documentation> 
domWindowChange ::
                (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowChange = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.click Mozilla Window.click documentation> 
domWindowClick ::
               (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowClick = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.contextMenu Mozilla Window.contextMenu documentation> 
domWindowContextMenu ::
                     (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowContextMenu = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.dblClick Mozilla Window.dblClick documentation> 
domWindowDblClick ::
                  (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowDblClick = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.drag Mozilla Window.drag documentation> 
domWindowDrag ::
              (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowDrag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.dragEnd Mozilla Window.dragEnd documentation> 
domWindowDragEnd ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowDragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.dragEnter Mozilla Window.dragEnter documentation> 
domWindowDragEnter ::
                   (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowDragEnter = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.dragLeave Mozilla Window.dragLeave documentation> 
domWindowDragLeave ::
                   (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowDragLeave = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.dragOver Mozilla Window.dragOver documentation> 
domWindowDragOver ::
                  (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowDragOver = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.dragStart Mozilla Window.dragStart documentation> 
domWindowDragStart ::
                   (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowDragStart = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.drop Mozilla Window.drop documentation> 
domWindowDrop ::
              (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowDrop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.durationChange Mozilla Window.durationChange documentation> 
domWindowDurationChange ::
                        (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowDurationChange
  = unsafeEventName (toJSString "durationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.emptied Mozilla Window.emptied documentation> 
domWindowEmptied ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowEmptied = unsafeEventName (toJSString "emptied")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ended Mozilla Window.ended documentation> 
domWindowEnded ::
               (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowEnded = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.error Mozilla Window.error documentation> 
domWindowError ::
               (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.focusEvent Mozilla Window.focusEvent documentation> 
domWindowFocusEvent ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self FocusEvent
domWindowFocusEvent = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.hashChange Mozilla Window.hashChange documentation> 
domWindowHashChange ::
                    (IsDOMWindow self, IsEventTarget self) =>
                      EventName self HashChangeEvent
domWindowHashChange = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.input Mozilla Window.input documentation> 
domWindowInput ::
               (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowInput = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.invalid Mozilla Window.invalid documentation> 
domWindowInvalid ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowInvalid = unsafeEventName (toJSString "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.keyDown Mozilla Window.keyDown documentation> 
domWindowKeyDown ::
                 (IsDOMWindow self, IsEventTarget self) =>
                   EventName self KeyboardEvent
domWindowKeyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.keyPress Mozilla Window.keyPress documentation> 
domWindowKeyPress ::
                  (IsDOMWindow self, IsEventTarget self) =>
                    EventName self KeyboardEvent
domWindowKeyPress = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.keyUp Mozilla Window.keyUp documentation> 
domWindowKeyUp ::
               (IsDOMWindow self, IsEventTarget self) =>
                 EventName self KeyboardEvent
domWindowKeyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.load Mozilla Window.load documentation> 
domWindowLoad ::
              (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowLoad = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.loadedData Mozilla Window.loadedData documentation> 
domWindowLoadedData ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowLoadedData = unsafeEventName (toJSString "loadeddata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.loadedMetadata Mozilla Window.loadedMetadata documentation> 
domWindowLoadedMetadata ::
                        (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowLoadedMetadata
  = unsafeEventName (toJSString "loadedmetadata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.loadStart Mozilla Window.loadStart documentation> 
domWindowLoadStart ::
                   (IsDOMWindow self, IsEventTarget self) =>
                     EventName self ProgressEvent
domWindowLoadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.message Mozilla Window.message documentation> 
domWindowMessage ::
                 (IsDOMWindow self, IsEventTarget self) =>
                   EventName self MessageEvent
domWindowMessage = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.mouseDown Mozilla Window.mouseDown documentation> 
domWindowMouseDown ::
                   (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowMouseDown = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.mouseEnter Mozilla Window.mouseEnter documentation> 
domWindowMouseEnter ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowMouseEnter = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.mouseLeave Mozilla Window.mouseLeave documentation> 
domWindowMouseLeave ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowMouseLeave = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.mouseMove Mozilla Window.mouseMove documentation> 
domWindowMouseMove ::
                   (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowMouseMove = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.mouseOut Mozilla Window.mouseOut documentation> 
domWindowMouseOut ::
                  (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowMouseOut = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.mouseOver Mozilla Window.mouseOver documentation> 
domWindowMouseOver ::
                   (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowMouseOver = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.mouseUp Mozilla Window.mouseUp documentation> 
domWindowMouseUp ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowMouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.mouseWheel Mozilla Window.mouseWheel documentation> 
domWindowMouseWheel ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self MouseEvent
domWindowMouseWheel = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.offline Mozilla Window.offline documentation> 
domWindowOffline ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowOffline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.online Mozilla Window.online documentation> 
domWindowOnline ::
                (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowOnline = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageHide Mozilla Window.pageHide documentation> 
domWindowPageHide ::
                  (IsDOMWindow self, IsEventTarget self) =>
                    EventName self PageTransitionEvent
domWindowPageHide = unsafeEventName (toJSString "pagehide")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageShow Mozilla Window.pageShow documentation> 
domWindowPageShow ::
                  (IsDOMWindow self, IsEventTarget self) =>
                    EventName self PageTransitionEvent
domWindowPageShow = unsafeEventName (toJSString "pageshow")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pause Mozilla Window.pause documentation> 
domWindowPause ::
               (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowPause = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.play Mozilla Window.play documentation> 
domWindowPlay ::
              (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowPlay = unsafeEventName (toJSString "play")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.playing Mozilla Window.playing documentation> 
domWindowPlaying ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowPlaying = unsafeEventName (toJSString "playing")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.popState Mozilla Window.popState documentation> 
domWindowPopState ::
                  (IsDOMWindow self, IsEventTarget self) =>
                    EventName self PopStateEvent
domWindowPopState = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.progress Mozilla Window.progress documentation> 
domWindowProgress ::
                  (IsDOMWindow self, IsEventTarget self) =>
                    EventName self ProgressEvent
domWindowProgress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.rateChange Mozilla Window.rateChange documentation> 
domWindowRateChange ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowRateChange = unsafeEventName (toJSString "ratechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resize Mozilla Window.resize documentation> 
domWindowResize ::
                (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowResize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollEvent Mozilla Window.scrollEvent documentation> 
domWindowScrollEvent ::
                     (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowScrollEvent = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.seeked Mozilla Window.seeked documentation> 
domWindowSeeked ::
                (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowSeeked = unsafeEventName (toJSString "seeked")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.seeking Mozilla Window.seeking documentation> 
domWindowSeeking ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowSeeking = unsafeEventName (toJSString "seeking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.select Mozilla Window.select documentation> 
domWindowSelect ::
                (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowSelect = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.stalled Mozilla Window.stalled documentation> 
domWindowStalled ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowStalled = unsafeEventName (toJSString "stalled")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.storage Mozilla Window.storage documentation> 
domWindowStorage ::
                 (IsDOMWindow self, IsEventTarget self) =>
                   EventName self StorageEvent
domWindowStorage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.submit Mozilla Window.submit documentation> 
domWindowSubmit ::
                (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowSubmit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.suspend Mozilla Window.suspend documentation> 
domWindowSuspend ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowSuspend = unsafeEventName (toJSString "suspend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.timeUpdate Mozilla Window.timeUpdate documentation> 
domWindowTimeUpdate ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowTimeUpdate = unsafeEventName (toJSString "timeupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.unload Mozilla Window.unload documentation> 
domWindowUnload ::
                (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowUnload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.volumeChange Mozilla Window.volumeChange documentation> 
domWindowVolumeChange ::
                      (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowVolumeChange = unsafeEventName (toJSString "volumechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.waiting Mozilla Window.waiting documentation> 
domWindowWaiting ::
                 (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowWaiting = unsafeEventName (toJSString "waiting")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.wheel Mozilla Window.wheel documentation> 
domWindowWheel ::
               (IsDOMWindow self, IsEventTarget self) => EventName self WheelEvent
domWindowWheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.reset Mozilla Window.reset documentation> 
domWindowReset ::
               (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowReset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.search Mozilla Window.search documentation> 
domWindowSearch ::
                (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowSearch = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitAnimationEnd Mozilla Window.webKitAnimationEnd documentation> 
domWindowWebKitAnimationEnd ::
                            (IsDOMWindow self, IsEventTarget self) =>
                              EventName self AnimationEvent
domWindowWebKitAnimationEnd
  = unsafeEventName (toJSString "webkitanimationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitAnimationIteration Mozilla Window.webKitAnimationIteration documentation> 
domWindowWebKitAnimationIteration ::
                                  (IsDOMWindow self, IsEventTarget self) =>
                                    EventName self AnimationEvent
domWindowWebKitAnimationIteration
  = unsafeEventName (toJSString "webkitanimationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitAnimationStart Mozilla Window.webKitAnimationStart documentation> 
domWindowWebKitAnimationStart ::
                              (IsDOMWindow self, IsEventTarget self) =>
                                EventName self AnimationEvent
domWindowWebKitAnimationStart
  = unsafeEventName (toJSString "webkitanimationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.animationEnd Mozilla Window.animationEnd documentation> 
domWindowAnimationEnd ::
                      (IsDOMWindow self, IsEventTarget self) =>
                        EventName self AnimationEvent
domWindowAnimationEnd = unsafeEventName (toJSString "animationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.animationIteration Mozilla Window.animationIteration documentation> 
domWindowAnimationIteration ::
                            (IsDOMWindow self, IsEventTarget self) =>
                              EventName self AnimationEvent
domWindowAnimationIteration
  = unsafeEventName (toJSString "animationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.animationStart Mozilla Window.animationStart documentation> 
domWindowAnimationStart ::
                        (IsDOMWindow self, IsEventTarget self) =>
                          EventName self AnimationEvent
domWindowAnimationStart
  = unsafeEventName (toJSString "animationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitTransitionEnd Mozilla Window.webKitTransitionEnd documentation> 
domWindowWebKitTransitionEnd ::
                             (IsDOMWindow self, IsEventTarget self) =>
                               EventName self TransitionEvent
domWindowWebKitTransitionEnd
  = unsafeEventName (toJSString "webkittransitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.transitionEnd Mozilla Window.transitionEnd documentation> 
domWindowTransitionEnd ::
                       (IsDOMWindow self, IsEventTarget self) =>
                         EventName self TransitionEvent
domWindowTransitionEnd
  = unsafeEventName (toJSString "transitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.orientationChange Mozilla Window.orientationChange documentation> 
domWindowOrientationChange ::
                           (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowOrientationChange
  = unsafeEventName (toJSString "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.touchStart Mozilla Window.touchStart documentation> 
domWindowTouchStart ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self TouchEvent
domWindowTouchStart = unsafeEventName (toJSString "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.touchMove Mozilla Window.touchMove documentation> 
domWindowTouchMove ::
                   (IsDOMWindow self, IsEventTarget self) => EventName self TouchEvent
domWindowTouchMove = unsafeEventName (toJSString "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.touchEnd Mozilla Window.touchEnd documentation> 
domWindowTouchEnd ::
                  (IsDOMWindow self, IsEventTarget self) => EventName self TouchEvent
domWindowTouchEnd = unsafeEventName (toJSString "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.touchCancel Mozilla Window.touchCancel documentation> 
domWindowTouchCancel ::
                     (IsDOMWindow self, IsEventTarget self) => EventName self TouchEvent
domWindowTouchCancel = unsafeEventName (toJSString "touchcancel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.gestureStart Mozilla Window.gestureStart documentation> 
domWindowGestureStart ::
                      (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowGestureStart = unsafeEventName (toJSString "gesturestart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.gestureChange Mozilla Window.gestureChange documentation> 
domWindowGestureChange ::
                       (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowGestureChange
  = unsafeEventName (toJSString "gesturechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.gestureEnd Mozilla Window.gestureEnd documentation> 
domWindowGestureEnd ::
                    (IsDOMWindow self, IsEventTarget self) => EventName self UIEvent
domWindowGestureEnd = unsafeEventName (toJSString "gestureend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.deviceMotion Mozilla Window.deviceMotion documentation> 
domWindowDeviceMotion ::
                      (IsDOMWindow self, IsEventTarget self) =>
                        EventName self DeviceMotionEvent
domWindowDeviceMotion = unsafeEventName (toJSString "devicemotion")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.deviceOrientation Mozilla Window.deviceOrientation documentation> 
domWindowDeviceOrientation ::
                           (IsDOMWindow self, IsEventTarget self) =>
                             EventName self DeviceOrientationEvent
domWindowDeviceOrientation
  = unsafeEventName (toJSString "deviceorientation")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitDeviceProximity Mozilla Window.webKitDeviceProximity documentation> 
domWindowWebKitDeviceProximity ::
                               (IsDOMWindow self, IsEventTarget self) =>
                                 EventName self DeviceProximityEvent
domWindowWebKitDeviceProximity
  = unsafeEventName (toJSString "webkitdeviceproximity")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitWillRevealBottom Mozilla Window.webKitWillRevealBottom documentation> 
domWindowWebKitWillRevealBottom ::
                                (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowWebKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitWillRevealLeft Mozilla Window.webKitWillRevealLeft documentation> 
domWindowWebKitWillRevealLeft ::
                              (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowWebKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitWillRevealRight Mozilla Window.webKitWillRevealRight documentation> 
domWindowWebKitWillRevealRight ::
                               (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowWebKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webKitWillRevealTop Mozilla Window.webKitWillRevealTop documentation> 
domWindowWebKitWillRevealTop ::
                             (IsDOMWindow self, IsEventTarget self) => EventName self Event
domWindowWebKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")
#else
module GHCJS.DOM.DOMWindow (
  module Graphics.UI.Gtk.WebKit.DOM.DOMWindow
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMWindow
#endif
