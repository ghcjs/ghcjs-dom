{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFrameSetElement
       (ghcjs_dom_html_frame_set_element_set_cols,
        htmlFrameSetElementSetCols,
        ghcjs_dom_html_frame_set_element_get_cols,
        htmlFrameSetElementGetCols,
        ghcjs_dom_html_frame_set_element_set_rows,
        htmlFrameSetElementSetRows,
        ghcjs_dom_html_frame_set_element_get_rows,
        htmlFrameSetElementGetRows, htmlFrameSetElementBeforeUnload,
        htmlFrameSetElementHashChange, htmlFrameSetElementMessage,
        htmlFrameSetElementOffline, htmlFrameSetElementOnline,
        htmlFrameSetElementPopState, htmlFrameSetElementResize,
        htmlFrameSetElementStorage, htmlFrameSetElementUnload,
        htmlFrameSetElementOrientationChange, htmlFrameSetElementBlur,
        htmlFrameSetElementError, htmlFrameSetElementFocus,
        htmlFrameSetElementLoad, HTMLFrameSetElement,
        IsHTMLFrameSetElement, castToHTMLFrameSetElement,
        gTypeHTMLFrameSetElement, toHTMLFrameSetElement)
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

 
foreign import javascript unsafe "$1[\"cols\"] = $2;"
        ghcjs_dom_html_frame_set_element_set_cols ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
htmlFrameSetElementSetCols ::
                           (MonadIO m, IsHTMLFrameSetElement self, ToJSString val) =>
                             self -> val -> m ()
htmlFrameSetElementSetCols self val
  = liftIO
      (ghcjs_dom_html_frame_set_element_set_cols
         (unHTMLFrameSetElement (toHTMLFrameSetElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"cols\"]"
        ghcjs_dom_html_frame_set_element_get_cols ::
        JSRef HTMLFrameSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
htmlFrameSetElementGetCols ::
                           (MonadIO m, IsHTMLFrameSetElement self, FromJSString result) =>
                             self -> m result
htmlFrameSetElementGetCols self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_set_element_get_cols
            (unHTMLFrameSetElement (toHTMLFrameSetElement self))))
 
foreign import javascript unsafe "$1[\"rows\"] = $2;"
        ghcjs_dom_html_frame_set_element_set_rows ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
htmlFrameSetElementSetRows ::
                           (MonadIO m, IsHTMLFrameSetElement self, ToJSString val) =>
                             self -> val -> m ()
htmlFrameSetElementSetRows self val
  = liftIO
      (ghcjs_dom_html_frame_set_element_set_rows
         (unHTMLFrameSetElement (toHTMLFrameSetElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_frame_set_element_get_rows ::
        JSRef HTMLFrameSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
htmlFrameSetElementGetRows ::
                           (MonadIO m, IsHTMLFrameSetElement self, FromJSString result) =>
                             self -> m result
htmlFrameSetElementGetRows self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_set_element_get_rows
            (unHTMLFrameSetElement (toHTMLFrameSetElement self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.beforeUnload Mozilla HTMLFrameSetElement.beforeUnload documentation> 
htmlFrameSetElementBeforeUnload ::
                                (IsHTMLFrameSetElement self, IsEventTarget self) =>
                                  EventName self BeforeUnloadEvent
htmlFrameSetElementBeforeUnload
  = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.hashChange Mozilla HTMLFrameSetElement.hashChange documentation> 
htmlFrameSetElementHashChange ::
                              (IsHTMLFrameSetElement self, IsEventTarget self) =>
                                EventName self HashChangeEvent
htmlFrameSetElementHashChange
  = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.message Mozilla HTMLFrameSetElement.message documentation> 
htmlFrameSetElementMessage ::
                           (IsHTMLFrameSetElement self, IsEventTarget self) =>
                             EventName self MessageEvent
htmlFrameSetElementMessage = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.offline Mozilla HTMLFrameSetElement.offline documentation> 
htmlFrameSetElementOffline ::
                           (IsHTMLFrameSetElement self, IsEventTarget self) =>
                             EventName self Event
htmlFrameSetElementOffline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.online Mozilla HTMLFrameSetElement.online documentation> 
htmlFrameSetElementOnline ::
                          (IsHTMLFrameSetElement self, IsEventTarget self) =>
                            EventName self Event
htmlFrameSetElementOnline = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.popState Mozilla HTMLFrameSetElement.popState documentation> 
htmlFrameSetElementPopState ::
                            (IsHTMLFrameSetElement self, IsEventTarget self) =>
                              EventName self PopStateEvent
htmlFrameSetElementPopState
  = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.resize Mozilla HTMLFrameSetElement.resize documentation> 
htmlFrameSetElementResize ::
                          (IsHTMLFrameSetElement self, IsEventTarget self) =>
                            EventName self UIEvent
htmlFrameSetElementResize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.storage Mozilla HTMLFrameSetElement.storage documentation> 
htmlFrameSetElementStorage ::
                           (IsHTMLFrameSetElement self, IsEventTarget self) =>
                             EventName self StorageEvent
htmlFrameSetElementStorage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.unload Mozilla HTMLFrameSetElement.unload documentation> 
htmlFrameSetElementUnload ::
                          (IsHTMLFrameSetElement self, IsEventTarget self) =>
                            EventName self UIEvent
htmlFrameSetElementUnload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.orientationChange Mozilla HTMLFrameSetElement.orientationChange documentation> 
htmlFrameSetElementOrientationChange ::
                                     (IsHTMLFrameSetElement self, IsEventTarget self) =>
                                       EventName self Event
htmlFrameSetElementOrientationChange
  = unsafeEventName (toJSString "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.blur Mozilla HTMLFrameSetElement.blur documentation> 
htmlFrameSetElementBlur ::
                        (IsHTMLFrameSetElement self, IsEventTarget self) =>
                          EventName self FocusEvent
htmlFrameSetElementBlur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.error Mozilla HTMLFrameSetElement.error documentation> 
htmlFrameSetElementError ::
                         (IsHTMLFrameSetElement self, IsEventTarget self) =>
                           EventName self UIEvent
htmlFrameSetElementError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.focus Mozilla HTMLFrameSetElement.focus documentation> 
htmlFrameSetElementFocus ::
                         (IsHTMLFrameSetElement self, IsEventTarget self) =>
                           EventName self FocusEvent
htmlFrameSetElementFocus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.load Mozilla HTMLFrameSetElement.load documentation> 
htmlFrameSetElementLoad ::
                        (IsHTMLFrameSetElement self, IsEventTarget self) =>
                          EventName self UIEvent
htmlFrameSetElementLoad = unsafeEventName (toJSString "load")
#else
module GHCJS.DOM.HTMLFrameSetElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFrameSetElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFrameSetElement
#endif
