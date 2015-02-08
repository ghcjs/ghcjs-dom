{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBodyElement
       (ghcjs_dom_html_body_element_set_a_link, htmlBodyElementSetALink,
        ghcjs_dom_html_body_element_get_a_link, htmlBodyElementGetALink,
        ghcjs_dom_html_body_element_set_background,
        htmlBodyElementSetBackground,
        ghcjs_dom_html_body_element_get_background,
        htmlBodyElementGetBackground,
        ghcjs_dom_html_body_element_set_bg_color,
        htmlBodyElementSetBgColor,
        ghcjs_dom_html_body_element_get_bg_color,
        htmlBodyElementGetBgColor, ghcjs_dom_html_body_element_set_link,
        htmlBodyElementSetLink, ghcjs_dom_html_body_element_get_link,
        htmlBodyElementGetLink, ghcjs_dom_html_body_element_set_text,
        htmlBodyElementSetText, ghcjs_dom_html_body_element_get_text,
        htmlBodyElementGetText, ghcjs_dom_html_body_element_set_v_link,
        htmlBodyElementSetVLink, ghcjs_dom_html_body_element_get_v_link,
        htmlBodyElementGetVLink, htmlBodyElementBeforeUnload,
        htmlBodyElementHashChange, htmlBodyElementMessage,
        htmlBodyElementOffline, htmlBodyElementOnline,
        htmlBodyElementPopState, htmlBodyElementResize,
        htmlBodyElementStorage, htmlBodyElementUnload,
        htmlBodyElementOrientationChange, htmlBodyElementBlur,
        htmlBodyElementError, htmlBodyElementFocus, htmlBodyElementLoad,
        HTMLBodyElement, IsHTMLBodyElement, castToHTMLBodyElement,
        gTypeHTMLBodyElement, toHTMLBodyElement)
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

 
foreign import javascript unsafe "$1[\"aLink\"] = $2;"
        ghcjs_dom_html_body_element_set_a_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
htmlBodyElementSetALink ::
                        (MonadIO m, IsHTMLBodyElement self, ToJSString val) =>
                          self -> val -> m ()
htmlBodyElementSetALink self val
  = liftIO
      (ghcjs_dom_html_body_element_set_a_link
         (unHTMLBodyElement (toHTMLBodyElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"aLink\"]"
        ghcjs_dom_html_body_element_get_a_link ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
htmlBodyElementGetALink ::
                        (MonadIO m, IsHTMLBodyElement self, FromJSString result) =>
                          self -> m result
htmlBodyElementGetALink self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_body_element_get_a_link
            (unHTMLBodyElement (toHTMLBodyElement self))))
 
foreign import javascript unsafe "$1[\"background\"] = $2;"
        ghcjs_dom_html_body_element_set_background ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
htmlBodyElementSetBackground ::
                             (MonadIO m, IsHTMLBodyElement self, ToJSString val) =>
                               self -> val -> m ()
htmlBodyElementSetBackground self val
  = liftIO
      (ghcjs_dom_html_body_element_set_background
         (unHTMLBodyElement (toHTMLBodyElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"background\"]"
        ghcjs_dom_html_body_element_get_background ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
htmlBodyElementGetBackground ::
                             (MonadIO m, IsHTMLBodyElement self, FromJSString result) =>
                               self -> m result
htmlBodyElementGetBackground self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_body_element_get_background
            (unHTMLBodyElement (toHTMLBodyElement self))))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_body_element_set_bg_color ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
htmlBodyElementSetBgColor ::
                          (MonadIO m, IsHTMLBodyElement self, ToJSString val) =>
                            self -> val -> m ()
htmlBodyElementSetBgColor self val
  = liftIO
      (ghcjs_dom_html_body_element_set_bg_color
         (unHTMLBodyElement (toHTMLBodyElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_body_element_get_bg_color ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
htmlBodyElementGetBgColor ::
                          (MonadIO m, IsHTMLBodyElement self, FromJSString result) =>
                            self -> m result
htmlBodyElementGetBgColor self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_body_element_get_bg_color
            (unHTMLBodyElement (toHTMLBodyElement self))))
 
foreign import javascript unsafe "$1[\"link\"] = $2;"
        ghcjs_dom_html_body_element_set_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
htmlBodyElementSetLink ::
                       (MonadIO m, IsHTMLBodyElement self, ToJSString val) =>
                         self -> val -> m ()
htmlBodyElementSetLink self val
  = liftIO
      (ghcjs_dom_html_body_element_set_link
         (unHTMLBodyElement (toHTMLBodyElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"link\"]"
        ghcjs_dom_html_body_element_get_link ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
htmlBodyElementGetLink ::
                       (MonadIO m, IsHTMLBodyElement self, FromJSString result) =>
                         self -> m result
htmlBodyElementGetLink self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_body_element_get_link
            (unHTMLBodyElement (toHTMLBodyElement self))))
 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_body_element_set_text ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
htmlBodyElementSetText ::
                       (MonadIO m, IsHTMLBodyElement self, ToJSString val) =>
                         self -> val -> m ()
htmlBodyElementSetText self val
  = liftIO
      (ghcjs_dom_html_body_element_set_text
         (unHTMLBodyElement (toHTMLBodyElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_body_element_get_text ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
htmlBodyElementGetText ::
                       (MonadIO m, IsHTMLBodyElement self, FromJSString result) =>
                         self -> m result
htmlBodyElementGetText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_body_element_get_text
            (unHTMLBodyElement (toHTMLBodyElement self))))
 
foreign import javascript unsafe "$1[\"vLink\"] = $2;"
        ghcjs_dom_html_body_element_set_v_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
htmlBodyElementSetVLink ::
                        (MonadIO m, IsHTMLBodyElement self, ToJSString val) =>
                          self -> val -> m ()
htmlBodyElementSetVLink self val
  = liftIO
      (ghcjs_dom_html_body_element_set_v_link
         (unHTMLBodyElement (toHTMLBodyElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"vLink\"]"
        ghcjs_dom_html_body_element_get_v_link ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
htmlBodyElementGetVLink ::
                        (MonadIO m, IsHTMLBodyElement self, FromJSString result) =>
                          self -> m result
htmlBodyElementGetVLink self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_body_element_get_v_link
            (unHTMLBodyElement (toHTMLBodyElement self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.beforeUnload Mozilla HTMLBodyElement.beforeUnload documentation> 
htmlBodyElementBeforeUnload ::
                            (IsHTMLBodyElement self, IsEventTarget self) =>
                              EventName self BeforeUnloadEvent
htmlBodyElementBeforeUnload
  = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.hashChange Mozilla HTMLBodyElement.hashChange documentation> 
htmlBodyElementHashChange ::
                          (IsHTMLBodyElement self, IsEventTarget self) =>
                            EventName self HashChangeEvent
htmlBodyElementHashChange
  = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.message Mozilla HTMLBodyElement.message documentation> 
htmlBodyElementMessage ::
                       (IsHTMLBodyElement self, IsEventTarget self) =>
                         EventName self MessageEvent
htmlBodyElementMessage = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.offline Mozilla HTMLBodyElement.offline documentation> 
htmlBodyElementOffline ::
                       (IsHTMLBodyElement self, IsEventTarget self) =>
                         EventName self Event
htmlBodyElementOffline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.online Mozilla HTMLBodyElement.online documentation> 
htmlBodyElementOnline ::
                      (IsHTMLBodyElement self, IsEventTarget self) =>
                        EventName self Event
htmlBodyElementOnline = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.popState Mozilla HTMLBodyElement.popState documentation> 
htmlBodyElementPopState ::
                        (IsHTMLBodyElement self, IsEventTarget self) =>
                          EventName self PopStateEvent
htmlBodyElementPopState = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.resize Mozilla HTMLBodyElement.resize documentation> 
htmlBodyElementResize ::
                      (IsHTMLBodyElement self, IsEventTarget self) =>
                        EventName self UIEvent
htmlBodyElementResize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.storage Mozilla HTMLBodyElement.storage documentation> 
htmlBodyElementStorage ::
                       (IsHTMLBodyElement self, IsEventTarget self) =>
                         EventName self StorageEvent
htmlBodyElementStorage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.unload Mozilla HTMLBodyElement.unload documentation> 
htmlBodyElementUnload ::
                      (IsHTMLBodyElement self, IsEventTarget self) =>
                        EventName self UIEvent
htmlBodyElementUnload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.orientationChange Mozilla HTMLBodyElement.orientationChange documentation> 
htmlBodyElementOrientationChange ::
                                 (IsHTMLBodyElement self, IsEventTarget self) =>
                                   EventName self Event
htmlBodyElementOrientationChange
  = unsafeEventName (toJSString "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.blur Mozilla HTMLBodyElement.blur documentation> 
htmlBodyElementBlur ::
                    (IsHTMLBodyElement self, IsEventTarget self) =>
                      EventName self FocusEvent
htmlBodyElementBlur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.error Mozilla HTMLBodyElement.error documentation> 
htmlBodyElementError ::
                     (IsHTMLBodyElement self, IsEventTarget self) =>
                       EventName self UIEvent
htmlBodyElementError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.focus Mozilla HTMLBodyElement.focus documentation> 
htmlBodyElementFocus ::
                     (IsHTMLBodyElement self, IsEventTarget self) =>
                       EventName self FocusEvent
htmlBodyElementFocus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.load Mozilla HTMLBodyElement.load documentation> 
htmlBodyElementLoad ::
                    (IsHTMLBodyElement self, IsEventTarget self) =>
                      EventName self UIEvent
htmlBodyElementLoad = unsafeEventName (toJSString "load")
#else
module GHCJS.DOM.HTMLBodyElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
#endif
