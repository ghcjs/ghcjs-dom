{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.InspectorFrontendHost
       (ghcjs_dom_inspector_frontend_host_loaded,
        inspectorFrontendHostLoaded,
        ghcjs_dom_inspector_frontend_host_close_window,
        inspectorFrontendHostCloseWindow,
        ghcjs_dom_inspector_frontend_host_bring_to_front,
        inspectorFrontendHostBringToFront,
        ghcjs_dom_inspector_frontend_host_set_zoom_factor,
        inspectorFrontendHostSetZoomFactor,
        ghcjs_dom_inspector_frontend_host_inspected_url_changed,
        inspectorFrontendHostInspectedURLChanged,
        ghcjs_dom_inspector_frontend_host_request_set_dock_side,
        inspectorFrontendHostRequestSetDockSide,
        ghcjs_dom_inspector_frontend_host_set_attached_window_height,
        inspectorFrontendHostSetAttachedWindowHeight,
        ghcjs_dom_inspector_frontend_host_set_attached_window_width,
        inspectorFrontendHostSetAttachedWindowWidth,
        ghcjs_dom_inspector_frontend_host_set_toolbar_height,
        inspectorFrontendHostSetToolbarHeight,
        ghcjs_dom_inspector_frontend_host_move_window_by,
        inspectorFrontendHostMoveWindowBy,
        ghcjs_dom_inspector_frontend_host_localized_strings_url,
        inspectorFrontendHostLocalizedStringsURL,
        ghcjs_dom_inspector_frontend_host_debuggable_type,
        inspectorFrontendHostDebuggableType,
        ghcjs_dom_inspector_frontend_host_copy_text,
        inspectorFrontendHostCopyText,
        ghcjs_dom_inspector_frontend_host_open_in_new_tab,
        inspectorFrontendHostOpenInNewTab,
        ghcjs_dom_inspector_frontend_host_can_save,
        inspectorFrontendHostCanSave,
        ghcjs_dom_inspector_frontend_host_save, inspectorFrontendHostSave,
        ghcjs_dom_inspector_frontend_host_append,
        inspectorFrontendHostAppend,
        ghcjs_dom_inspector_frontend_host_close,
        inspectorFrontendHostClose,
        ghcjs_dom_inspector_frontend_host_platform,
        inspectorFrontendHostPlatform,
        ghcjs_dom_inspector_frontend_host_port, inspectorFrontendHostPort,
        ghcjs_dom_inspector_frontend_host_show_context_menu,
        inspectorFrontendHostShowContextMenu,
        ghcjs_dom_inspector_frontend_host_dispatch_event_as_context_menu_event,
        inspectorFrontendHostDispatchEventAsContextMenuEvent,
        ghcjs_dom_inspector_frontend_host_send_message_to_backend,
        inspectorFrontendHostSendMessageToBackend,
        ghcjs_dom_inspector_frontend_host_unbuffered_log,
        inspectorFrontendHostUnbufferedLog,
        ghcjs_dom_inspector_frontend_host_is_under_test,
        inspectorFrontendHostIsUnderTest,
        ghcjs_dom_inspector_frontend_host_beep, inspectorFrontendHostBeep,
        ghcjs_dom_inspector_frontend_host_can_inspect_workers,
        inspectorFrontendHostCanInspectWorkers,
        ghcjs_dom_inspector_frontend_host_can_save_as,
        inspectorFrontendHostCanSaveAs, InspectorFrontendHost,
        IsInspectorFrontendHost, castToInspectorFrontendHost,
        gTypeInspectorFrontendHost, toInspectorFrontendHost)
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

 
foreign import javascript unsafe "$1[\"loaded\"]()"
        ghcjs_dom_inspector_frontend_host_loaded ::
        JSRef InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.loaded Mozilla InspectorFrontendHost.loaded documentation> 
inspectorFrontendHostLoaded ::
                            (IsInspectorFrontendHost self) => self -> IO ()
inspectorFrontendHostLoaded self
  = ghcjs_dom_inspector_frontend_host_loaded
      (unInspectorFrontendHost (toInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"closeWindow\"]()"
        ghcjs_dom_inspector_frontend_host_close_window ::
        JSRef InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.closeWindow Mozilla InspectorFrontendHost.closeWindow documentation> 
inspectorFrontendHostCloseWindow ::
                                 (IsInspectorFrontendHost self) => self -> IO ()
inspectorFrontendHostCloseWindow self
  = ghcjs_dom_inspector_frontend_host_close_window
      (unInspectorFrontendHost (toInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"bringToFront\"]()"
        ghcjs_dom_inspector_frontend_host_bring_to_front ::
        JSRef InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.bringToFront Mozilla InspectorFrontendHost.bringToFront documentation> 
inspectorFrontendHostBringToFront ::
                                  (IsInspectorFrontendHost self) => self -> IO ()
inspectorFrontendHostBringToFront self
  = ghcjs_dom_inspector_frontend_host_bring_to_front
      (unInspectorFrontendHost (toInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"setZoomFactor\"]($2)"
        ghcjs_dom_inspector_frontend_host_set_zoom_factor ::
        JSRef InspectorFrontendHost -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.zoomFactor Mozilla InspectorFrontendHost.zoomFactor documentation> 
inspectorFrontendHostSetZoomFactor ::
                                   (IsInspectorFrontendHost self) => self -> Float -> IO ()
inspectorFrontendHostSetZoomFactor self zoom
  = ghcjs_dom_inspector_frontend_host_set_zoom_factor
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      zoom
 
foreign import javascript unsafe "$1[\"inspectedURLChanged\"]($2)"
        ghcjs_dom_inspector_frontend_host_inspected_url_changed ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.inspectedURLChanged Mozilla InspectorFrontendHost.inspectedURLChanged documentation> 
inspectorFrontendHostInspectedURLChanged ::
                                         (IsInspectorFrontendHost self, ToJSString newURL) =>
                                           self -> newURL -> IO ()
inspectorFrontendHostInspectedURLChanged self newURL
  = ghcjs_dom_inspector_frontend_host_inspected_url_changed
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString newURL)
 
foreign import javascript unsafe "$1[\"requestSetDockSide\"]($2)"
        ghcjs_dom_inspector_frontend_host_request_set_dock_side ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.requestSetDockSide Mozilla InspectorFrontendHost.requestSetDockSide documentation> 
inspectorFrontendHostRequestSetDockSide ::
                                        (IsInspectorFrontendHost self, ToJSString side) =>
                                          self -> side -> IO ()
inspectorFrontendHostRequestSetDockSide self side
  = ghcjs_dom_inspector_frontend_host_request_set_dock_side
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString side)
 
foreign import javascript unsafe
        "$1[\"setAttachedWindowHeight\"]($2)"
        ghcjs_dom_inspector_frontend_host_set_attached_window_height ::
        JSRef InspectorFrontendHost -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.attachedWindowHeight Mozilla InspectorFrontendHost.attachedWindowHeight documentation> 
inspectorFrontendHostSetAttachedWindowHeight ::
                                             (IsInspectorFrontendHost self) => self -> Word -> IO ()
inspectorFrontendHostSetAttachedWindowHeight self height
  = ghcjs_dom_inspector_frontend_host_set_attached_window_height
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      height
 
foreign import javascript unsafe
        "$1[\"setAttachedWindowWidth\"]($2)"
        ghcjs_dom_inspector_frontend_host_set_attached_window_width ::
        JSRef InspectorFrontendHost -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.attachedWindowWidth Mozilla InspectorFrontendHost.attachedWindowWidth documentation> 
inspectorFrontendHostSetAttachedWindowWidth ::
                                            (IsInspectorFrontendHost self) => self -> Word -> IO ()
inspectorFrontendHostSetAttachedWindowWidth self width
  = ghcjs_dom_inspector_frontend_host_set_attached_window_width
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      width
 
foreign import javascript unsafe "$1[\"setToolbarHeight\"]($2)"
        ghcjs_dom_inspector_frontend_host_set_toolbar_height ::
        JSRef InspectorFrontendHost -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.toolbarHeight Mozilla InspectorFrontendHost.toolbarHeight documentation> 
inspectorFrontendHostSetToolbarHeight ::
                                      (IsInspectorFrontendHost self) => self -> Float -> IO ()
inspectorFrontendHostSetToolbarHeight self height
  = ghcjs_dom_inspector_frontend_host_set_toolbar_height
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      height
 
foreign import javascript unsafe "$1[\"moveWindowBy\"]($2, $3)"
        ghcjs_dom_inspector_frontend_host_move_window_by ::
        JSRef InspectorFrontendHost -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.moveWindowBy Mozilla InspectorFrontendHost.moveWindowBy documentation> 
inspectorFrontendHostMoveWindowBy ::
                                  (IsInspectorFrontendHost self) => self -> Float -> Float -> IO ()
inspectorFrontendHostMoveWindowBy self x y
  = ghcjs_dom_inspector_frontend_host_move_window_by
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      x
      y
 
foreign import javascript unsafe "$1[\"localizedStringsURL\"]()"
        ghcjs_dom_inspector_frontend_host_localized_strings_url ::
        JSRef InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.localizedStringsURL Mozilla InspectorFrontendHost.localizedStringsURL documentation> 
inspectorFrontendHostLocalizedStringsURL ::
                                         (IsInspectorFrontendHost self, FromJSString result) =>
                                           self -> IO result
inspectorFrontendHostLocalizedStringsURL self
  = fromJSString <$>
      (ghcjs_dom_inspector_frontend_host_localized_strings_url
         (unInspectorFrontendHost (toInspectorFrontendHost self)))
 
foreign import javascript unsafe "$1[\"debuggableType\"]()"
        ghcjs_dom_inspector_frontend_host_debuggable_type ::
        JSRef InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.debuggableType Mozilla InspectorFrontendHost.debuggableType documentation> 
inspectorFrontendHostDebuggableType ::
                                    (IsInspectorFrontendHost self, FromJSString result) =>
                                      self -> IO result
inspectorFrontendHostDebuggableType self
  = fromJSString <$>
      (ghcjs_dom_inspector_frontend_host_debuggable_type
         (unInspectorFrontendHost (toInspectorFrontendHost self)))
 
foreign import javascript unsafe "$1[\"copyText\"]($2)"
        ghcjs_dom_inspector_frontend_host_copy_text ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.copyText Mozilla InspectorFrontendHost.copyText documentation> 
inspectorFrontendHostCopyText ::
                              (IsInspectorFrontendHost self, ToJSString text) =>
                                self -> text -> IO ()
inspectorFrontendHostCopyText self text
  = ghcjs_dom_inspector_frontend_host_copy_text
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString text)
 
foreign import javascript unsafe "$1[\"openInNewTab\"]($2)"
        ghcjs_dom_inspector_frontend_host_open_in_new_tab ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.openInNewTab Mozilla InspectorFrontendHost.openInNewTab documentation> 
inspectorFrontendHostOpenInNewTab ::
                                  (IsInspectorFrontendHost self, ToJSString url) =>
                                    self -> url -> IO ()
inspectorFrontendHostOpenInNewTab self url
  = ghcjs_dom_inspector_frontend_host_open_in_new_tab
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString url)
 
foreign import javascript unsafe "($1[\"canSave\"]() ? 1 : 0)"
        ghcjs_dom_inspector_frontend_host_can_save ::
        JSRef InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSave Mozilla InspectorFrontendHost.canSave documentation> 
inspectorFrontendHostCanSave ::
                             (IsInspectorFrontendHost self) => self -> IO Bool
inspectorFrontendHostCanSave self
  = ghcjs_dom_inspector_frontend_host_can_save
      (unInspectorFrontendHost (toInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"save\"]($2, $3, $4, $5)"
        ghcjs_dom_inspector_frontend_host_save ::
        JSRef InspectorFrontendHost ->
          JSString -> JSString -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.save Mozilla InspectorFrontendHost.save documentation> 
inspectorFrontendHostSave ::
                          (IsInspectorFrontendHost self, ToJSString url,
                           ToJSString content) =>
                            self -> url -> content -> Bool -> Bool -> IO ()
inspectorFrontendHostSave self url content base64Encoded
  forceSaveAs
  = ghcjs_dom_inspector_frontend_host_save
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString url)
      (toJSString content)
      base64Encoded
      forceSaveAs
 
foreign import javascript unsafe "$1[\"append\"]($2, $3)"
        ghcjs_dom_inspector_frontend_host_append ::
        JSRef InspectorFrontendHost -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.append Mozilla InspectorFrontendHost.append documentation> 
inspectorFrontendHostAppend ::
                            (IsInspectorFrontendHost self, ToJSString url,
                             ToJSString content) =>
                              self -> url -> content -> IO ()
inspectorFrontendHostAppend self url content
  = ghcjs_dom_inspector_frontend_host_append
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString url)
      (toJSString content)
 
foreign import javascript unsafe "$1[\"close\"]($2)"
        ghcjs_dom_inspector_frontend_host_close ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.close Mozilla InspectorFrontendHost.close documentation> 
inspectorFrontendHostClose ::
                           (IsInspectorFrontendHost self, ToJSString url) =>
                             self -> url -> IO ()
inspectorFrontendHostClose self url
  = ghcjs_dom_inspector_frontend_host_close
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString url)
 
foreign import javascript unsafe "$1[\"platform\"]()"
        ghcjs_dom_inspector_frontend_host_platform ::
        JSRef InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.platform Mozilla InspectorFrontendHost.platform documentation> 
inspectorFrontendHostPlatform ::
                              (IsInspectorFrontendHost self, FromJSString result) =>
                                self -> IO result
inspectorFrontendHostPlatform self
  = fromJSString <$>
      (ghcjs_dom_inspector_frontend_host_platform
         (unInspectorFrontendHost (toInspectorFrontendHost self)))
 
foreign import javascript unsafe "$1[\"port\"]()"
        ghcjs_dom_inspector_frontend_host_port ::
        JSRef InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.port Mozilla InspectorFrontendHost.port documentation> 
inspectorFrontendHostPort ::
                          (IsInspectorFrontendHost self, FromJSString result) =>
                            self -> IO result
inspectorFrontendHostPort self
  = fromJSString <$>
      (ghcjs_dom_inspector_frontend_host_port
         (unInspectorFrontendHost (toInspectorFrontendHost self)))
 
foreign import javascript unsafe "$1[\"showContextMenu\"]($2, $3)"
        ghcjs_dom_inspector_frontend_host_show_context_menu ::
        JSRef InspectorFrontendHost -> JSRef MouseEvent -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.showContextMenu Mozilla InspectorFrontendHost.showContextMenu documentation> 
inspectorFrontendHostShowContextMenu ::
                                     (IsInspectorFrontendHost self, IsMouseEvent event) =>
                                       self -> Maybe event -> JSRef a -> IO ()
inspectorFrontendHostShowContextMenu self event items
  = ghcjs_dom_inspector_frontend_host_show_context_menu
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (maybe jsNull (unMouseEvent . toMouseEvent) event)
      items
 
foreign import javascript unsafe
        "$1[\"dispatchEventAsContextMenuEvent\"]($2)"
        ghcjs_dom_inspector_frontend_host_dispatch_event_as_context_menu_event
        :: JSRef InspectorFrontendHost -> JSRef Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.dispatchEventAsContextMenuEvent Mozilla InspectorFrontendHost.dispatchEventAsContextMenuEvent documentation> 
inspectorFrontendHostDispatchEventAsContextMenuEvent ::
                                                     (IsInspectorFrontendHost self,
                                                      IsEvent event) =>
                                                       self -> Maybe event -> IO ()
inspectorFrontendHostDispatchEventAsContextMenuEvent self event
  = ghcjs_dom_inspector_frontend_host_dispatch_event_as_context_menu_event
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "$1[\"sendMessageToBackend\"]($2)"
        ghcjs_dom_inspector_frontend_host_send_message_to_backend ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.sendMessageToBackend Mozilla InspectorFrontendHost.sendMessageToBackend documentation> 
inspectorFrontendHostSendMessageToBackend ::
                                          (IsInspectorFrontendHost self, ToJSString message) =>
                                            self -> message -> IO ()
inspectorFrontendHostSendMessageToBackend self message
  = ghcjs_dom_inspector_frontend_host_send_message_to_backend
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString message)
 
foreign import javascript unsafe "$1[\"unbufferedLog\"]($2)"
        ghcjs_dom_inspector_frontend_host_unbuffered_log ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.unbufferedLog Mozilla InspectorFrontendHost.unbufferedLog documentation> 
inspectorFrontendHostUnbufferedLog ::
                                   (IsInspectorFrontendHost self, ToJSString message) =>
                                     self -> message -> IO ()
inspectorFrontendHostUnbufferedLog self message
  = ghcjs_dom_inspector_frontend_host_unbuffered_log
      (unInspectorFrontendHost (toInspectorFrontendHost self))
      (toJSString message)
 
foreign import javascript unsafe "($1[\"isUnderTest\"]() ? 1 : 0)"
        ghcjs_dom_inspector_frontend_host_is_under_test ::
        JSRef InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.isUnderTest Mozilla InspectorFrontendHost.isUnderTest documentation> 
inspectorFrontendHostIsUnderTest ::
                                 (IsInspectorFrontendHost self) => self -> IO Bool
inspectorFrontendHostIsUnderTest self
  = ghcjs_dom_inspector_frontend_host_is_under_test
      (unInspectorFrontendHost (toInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"beep\"]()"
        ghcjs_dom_inspector_frontend_host_beep ::
        JSRef InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.beep Mozilla InspectorFrontendHost.beep documentation> 
inspectorFrontendHostBeep ::
                          (IsInspectorFrontendHost self) => self -> IO ()
inspectorFrontendHostBeep self
  = ghcjs_dom_inspector_frontend_host_beep
      (unInspectorFrontendHost (toInspectorFrontendHost self))
 
foreign import javascript unsafe
        "($1[\"canInspectWorkers\"]() ? 1 : 0)"
        ghcjs_dom_inspector_frontend_host_can_inspect_workers ::
        JSRef InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canInspectWorkers Mozilla InspectorFrontendHost.canInspectWorkers documentation> 
inspectorFrontendHostCanInspectWorkers ::
                                       (IsInspectorFrontendHost self) => self -> IO Bool
inspectorFrontendHostCanInspectWorkers self
  = ghcjs_dom_inspector_frontend_host_can_inspect_workers
      (unInspectorFrontendHost (toInspectorFrontendHost self))
 
foreign import javascript unsafe "($1[\"canSaveAs\"]() ? 1 : 0)"
        ghcjs_dom_inspector_frontend_host_can_save_as ::
        JSRef InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSaveAs Mozilla InspectorFrontendHost.canSaveAs documentation> 
inspectorFrontendHostCanSaveAs ::
                               (IsInspectorFrontendHost self) => self -> IO Bool
inspectorFrontendHostCanSaveAs self
  = ghcjs_dom_inspector_frontend_host_can_save_as
      (unInspectorFrontendHost (toInspectorFrontendHost self))
#else
module GHCJS.DOM.InspectorFrontendHost (
  ) where
#endif
