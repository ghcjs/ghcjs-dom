{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLHttpRequestUpload
       (ghcjs_dom_xml_http_request_upload_dispatch_event,
        xmlHttpRequestUploadDispatchEvent, xmlHttpRequestUploadOnabort,
        xmlHttpRequestUploadOnerror, xmlHttpRequestUploadOnload,
        xmlHttpRequestUploadOnloadend, xmlHttpRequestUploadOnloadstart,
        xmlHttpRequestUploadOnprogress, XMLHttpRequestUpload,
        IsXMLHttpRequestUpload, castToXMLHttpRequestUpload,
        gTypeXMLHttpRequestUpload, toXMLHttpRequestUpload)
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
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_xml_http_request_upload_dispatch_event ::
        JSRef XMLHttpRequestUpload -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.dispatchEvent Mozilla XMLHttpRequestUpload.dispatchEvent documentation> 
xmlHttpRequestUploadDispatchEvent ::
                                  (IsXMLHttpRequestUpload self, IsEvent evt) =>
                                    self -> Maybe evt -> IO Bool
xmlHttpRequestUploadDispatchEvent self evt
  = ghcjs_dom_xml_http_request_upload_dispatch_event
      (unXMLHttpRequestUpload (toXMLHttpRequestUpload self))
      (maybe jsNull (unEvent . toEvent) evt)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onabort Mozilla XMLHttpRequestUpload.onabort documentation> 
xmlHttpRequestUploadOnabort ::
                            (IsXMLHttpRequestUpload self) =>
                              Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnabort = (connect "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onerror Mozilla XMLHttpRequestUpload.onerror documentation> 
xmlHttpRequestUploadOnerror ::
                            (IsXMLHttpRequestUpload self) =>
                              Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onload Mozilla XMLHttpRequestUpload.onload documentation> 
xmlHttpRequestUploadOnload ::
                           (IsXMLHttpRequestUpload self) =>
                             Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnload = (connect "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onloadend Mozilla XMLHttpRequestUpload.onloadend documentation> 
xmlHttpRequestUploadOnloadend ::
                              (IsXMLHttpRequestUpload self) =>
                                Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnloadend = (connect "loadend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onloadstart Mozilla XMLHttpRequestUpload.onloadstart documentation> 
xmlHttpRequestUploadOnloadstart ::
                                (IsXMLHttpRequestUpload self) =>
                                  Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnloadstart = (connect "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onprogress Mozilla XMLHttpRequestUpload.onprogress documentation> 
xmlHttpRequestUploadOnprogress ::
                               (IsXMLHttpRequestUpload self) =>
                                 Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnprogress = (connect "progress")
#else
module GHCJS.DOM.XMLHttpRequestUpload (
  ) where
#endif
