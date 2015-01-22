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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_xml_http_request_upload_dispatch_event ::
        JSRef XMLHttpRequestUpload -> JSRef Event -> IO Bool
 
xmlHttpRequestUploadDispatchEvent ::
                                  (IsXMLHttpRequestUpload self, IsEvent evt) =>
                                    self -> Maybe evt -> IO Bool
xmlHttpRequestUploadDispatchEvent self evt
  = ghcjs_dom_xml_http_request_upload_dispatch_event
      (unXMLHttpRequestUpload (toXMLHttpRequestUpload self))
      (maybe jsNull (unEvent . toEvent) evt)
 
xmlHttpRequestUploadOnabort ::
                            (IsXMLHttpRequestUpload self) =>
                              Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnabort = (connect "abort")
 
xmlHttpRequestUploadOnerror ::
                            (IsXMLHttpRequestUpload self) =>
                              Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnerror = (connect "error")
 
xmlHttpRequestUploadOnload ::
                           (IsXMLHttpRequestUpload self) =>
                             Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnload = (connect "load")
 
xmlHttpRequestUploadOnloadend ::
                              (IsXMLHttpRequestUpload self) =>
                                Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnloadend = (connect "loadend")
 
xmlHttpRequestUploadOnloadstart ::
                                (IsXMLHttpRequestUpload self) =>
                                  Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnloadstart = (connect "loadstart")
 
xmlHttpRequestUploadOnprogress ::
                               (IsXMLHttpRequestUpload self) =>
                                 Signal self (EventM UIEvent self ())
xmlHttpRequestUploadOnprogress = (connect "progress")
#else
module GHCJS.DOM.XMLHttpRequestUpload (
  ) where
#endif
