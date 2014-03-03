{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLHttpRequest
       (ghcjs_dom_xml_http_request_set_request_header,
        xmlHttpRequestSetRequestHeader, ghcjs_dom_xml_http_request_abort,
        xmlHttpRequestAbort,
        ghcjs_dom_xml_http_request_get_all_response_headers,
        xmlHttpRequestGetAllResponseHeaders,
        ghcjs_dom_xml_http_request_get_response_header,
        xmlHttpRequestGetResponseHeader,
        ghcjs_dom_xml_http_request_override_mime_type,
        xmlHttpRequestOverrideMimeType,
        ghcjs_dom_xml_http_request_dispatch_event,
        xmlHttpRequestDispatchEvent, cUNSENT, cOPENED, cHEADERS_RECEIVED,
        cLOADING, cDONE, xmlHttpRequestOnabort, xmlHttpRequestOnerror,
        xmlHttpRequestOnload, xmlHttpRequestOnloadend,
        xmlHttpRequestOnloadstart, xmlHttpRequestOnprogress,
        xmlHttpRequestOntimeout, xmlHttpRequestOnreadystatechange,
        ghcjs_dom_xml_http_request_set_timeout, xmlHttpRequestSetTimeout,
        ghcjs_dom_xml_http_request_get_timeout, xmlHttpRequestGetTimeout,
        ghcjs_dom_xml_http_request_get_ready_state,
        xmlHttpRequestGetReadyState,
        ghcjs_dom_xml_http_request_set_with_credentials,
        xmlHttpRequestSetWithCredentials,
        ghcjs_dom_xml_http_request_get_with_credentials,
        xmlHttpRequestGetWithCredentials,
        ghcjs_dom_xml_http_request_get_upload, xmlHttpRequestGetUpload,
        ghcjs_dom_xml_http_request_get_response_xml,
        xmlHttpRequestGetResponseXML,
        ghcjs_dom_xml_http_request_set_response_type,
        xmlHttpRequestSetResponseType,
        ghcjs_dom_xml_http_request_get_response_type,
        xmlHttpRequestGetResponseType,
        ghcjs_dom_xml_http_request_get_status, xmlHttpRequestGetStatus,
        ghcjs_dom_xml_http_request_get_status_text,
        xmlHttpRequestGetStatusText, XMLHttpRequest, IsXMLHttpRequest,
        castToXMLHttpRequest, gTypeXMLHttpRequest, toXMLHttpRequest)
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setRequestHeader\"]($2, $3)"
        ghcjs_dom_xml_http_request_set_request_header ::
        JSRef XMLHttpRequest -> JSString -> JSString -> IO ()
#else 
ghcjs_dom_xml_http_request_set_request_header ::
                                                JSRef XMLHttpRequest ->
                                                  JSString -> JSString -> IO ()
ghcjs_dom_xml_http_request_set_request_header = undefined
#endif
 
xmlHttpRequestSetRequestHeader ::
                               (IsXMLHttpRequest self, ToJSString header, ToJSString value) =>
                                 self -> header -> value -> IO ()
xmlHttpRequestSetRequestHeader self header value
  = ghcjs_dom_xml_http_request_set_request_header
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString header)
      (toJSString value)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_xml_http_request_abort :: JSRef XMLHttpRequest -> IO ()
#else 
ghcjs_dom_xml_http_request_abort :: JSRef XMLHttpRequest -> IO ()
ghcjs_dom_xml_http_request_abort = undefined
#endif
 
xmlHttpRequestAbort :: (IsXMLHttpRequest self) => self -> IO ()
xmlHttpRequestAbort self
  = ghcjs_dom_xml_http_request_abort
      (unXMLHttpRequest (toXMLHttpRequest self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getAllResponseHeaders\"]()"
        ghcjs_dom_xml_http_request_get_all_response_headers ::
        JSRef XMLHttpRequest -> IO JSString
#else 
ghcjs_dom_xml_http_request_get_all_response_headers ::
                                                      JSRef XMLHttpRequest -> IO JSString
ghcjs_dom_xml_http_request_get_all_response_headers = undefined
#endif
 
xmlHttpRequestGetAllResponseHeaders ::
                                    (IsXMLHttpRequest self, FromJSString result) =>
                                      self -> IO result
xmlHttpRequestGetAllResponseHeaders self
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_all_response_headers
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getResponseHeader\"]($2)"
        ghcjs_dom_xml_http_request_get_response_header ::
        JSRef XMLHttpRequest -> JSString -> IO JSString
#else 
ghcjs_dom_xml_http_request_get_response_header ::
                                                 JSRef XMLHttpRequest -> JSString -> IO JSString
ghcjs_dom_xml_http_request_get_response_header = undefined
#endif
 
xmlHttpRequestGetResponseHeader ::
                                (IsXMLHttpRequest self, ToJSString header, FromJSString result) =>
                                  self -> header -> IO result
xmlHttpRequestGetResponseHeader self header
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_response_header
         (unXMLHttpRequest (toXMLHttpRequest self))
         (toJSString header))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"overrideMimeType\"]($2)"
        ghcjs_dom_xml_http_request_override_mime_type ::
        JSRef XMLHttpRequest -> JSString -> IO ()
#else 
ghcjs_dom_xml_http_request_override_mime_type ::
                                                JSRef XMLHttpRequest -> JSString -> IO ()
ghcjs_dom_xml_http_request_override_mime_type = undefined
#endif
 
xmlHttpRequestOverrideMimeType ::
                               (IsXMLHttpRequest self, ToJSString override) =>
                                 self -> override -> IO ()
xmlHttpRequestOverrideMimeType self override
  = ghcjs_dom_xml_http_request_override_mime_type
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString override)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_xml_http_request_dispatch_event ::
        JSRef XMLHttpRequest -> JSRef Event -> IO Bool
#else 
ghcjs_dom_xml_http_request_dispatch_event ::
                                            JSRef XMLHttpRequest -> JSRef Event -> IO Bool
ghcjs_dom_xml_http_request_dispatch_event = undefined
#endif
 
xmlHttpRequestDispatchEvent ::
                            (IsXMLHttpRequest self, IsEvent evt) =>
                              self -> Maybe evt -> IO Bool
xmlHttpRequestDispatchEvent self evt
  = ghcjs_dom_xml_http_request_dispatch_event
      (unXMLHttpRequest (toXMLHttpRequest self))
      (maybe jsNull (unEvent . toEvent) evt)
cUNSENT = 0
cOPENED = 1
cHEADERS_RECEIVED = 2
cLOADING = 3
cDONE = 4
 
xmlHttpRequestOnabort ::
                      (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnabort = (connect "abort")
 
xmlHttpRequestOnerror ::
                      (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnerror = (connect "error")
 
xmlHttpRequestOnload ::
                     (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnload = (connect "load")
 
xmlHttpRequestOnloadend ::
                        (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnloadend = (connect "loadend")
 
xmlHttpRequestOnloadstart ::
                          (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnloadstart = (connect "loadstart")
 
xmlHttpRequestOnprogress ::
                         (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnprogress = (connect "progress")
 
xmlHttpRequestOntimeout ::
                        (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOntimeout = (connect "timeout")
 
xmlHttpRequestOnreadystatechange ::
                                 (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnreadystatechange = (connect "readystatechange")


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"timeout\"] = $2;"
        ghcjs_dom_xml_http_request_set_timeout ::
        JSRef XMLHttpRequest -> Word -> IO ()
#else 
ghcjs_dom_xml_http_request_set_timeout ::
                                         JSRef XMLHttpRequest -> Word -> IO ()
ghcjs_dom_xml_http_request_set_timeout = undefined
#endif
 
xmlHttpRequestSetTimeout ::
                         (IsXMLHttpRequest self) => self -> Word -> IO ()
xmlHttpRequestSetTimeout self val
  = ghcjs_dom_xml_http_request_set_timeout
      (unXMLHttpRequest (toXMLHttpRequest self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"timeout\"]"
        ghcjs_dom_xml_http_request_get_timeout ::
        JSRef XMLHttpRequest -> IO Word
#else 
ghcjs_dom_xml_http_request_get_timeout ::
                                         JSRef XMLHttpRequest -> IO Word
ghcjs_dom_xml_http_request_get_timeout = undefined
#endif
 
xmlHttpRequestGetTimeout ::
                         (IsXMLHttpRequest self) => self -> IO Word
xmlHttpRequestGetTimeout self
  = ghcjs_dom_xml_http_request_get_timeout
      (unXMLHttpRequest (toXMLHttpRequest self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_xml_http_request_get_ready_state ::
        JSRef XMLHttpRequest -> IO Word
#else 
ghcjs_dom_xml_http_request_get_ready_state ::
                                             JSRef XMLHttpRequest -> IO Word
ghcjs_dom_xml_http_request_get_ready_state = undefined
#endif
 
xmlHttpRequestGetReadyState ::
                            (IsXMLHttpRequest self) => self -> IO Word
xmlHttpRequestGetReadyState self
  = ghcjs_dom_xml_http_request_get_ready_state
      (unXMLHttpRequest (toXMLHttpRequest self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"withCredentials\"] = $2;"
        ghcjs_dom_xml_http_request_set_with_credentials ::
        JSRef XMLHttpRequest -> Bool -> IO ()
#else 
ghcjs_dom_xml_http_request_set_with_credentials ::
                                                  JSRef XMLHttpRequest -> Bool -> IO ()
ghcjs_dom_xml_http_request_set_with_credentials = undefined
#endif
 
xmlHttpRequestSetWithCredentials ::
                                 (IsXMLHttpRequest self) => self -> Bool -> IO ()
xmlHttpRequestSetWithCredentials self val
  = ghcjs_dom_xml_http_request_set_with_credentials
      (unXMLHttpRequest (toXMLHttpRequest self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)"
        ghcjs_dom_xml_http_request_get_with_credentials ::
        JSRef XMLHttpRequest -> IO Bool
#else 
ghcjs_dom_xml_http_request_get_with_credentials ::
                                                  JSRef XMLHttpRequest -> IO Bool
ghcjs_dom_xml_http_request_get_with_credentials = undefined
#endif
 
xmlHttpRequestGetWithCredentials ::
                                 (IsXMLHttpRequest self) => self -> IO Bool
xmlHttpRequestGetWithCredentials self
  = ghcjs_dom_xml_http_request_get_with_credentials
      (unXMLHttpRequest (toXMLHttpRequest self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"upload\"]"
        ghcjs_dom_xml_http_request_get_upload ::
        JSRef XMLHttpRequest -> IO JSString
#else 
ghcjs_dom_xml_http_request_get_upload ::
                                        JSRef XMLHttpRequest -> IO JSString
ghcjs_dom_xml_http_request_get_upload = undefined
#endif
 
xmlHttpRequestGetUpload ::
                        (IsXMLHttpRequest self, FromJSString result) => self -> IO result
xmlHttpRequestGetUpload self
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_upload
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"responseXML\"]"
        ghcjs_dom_xml_http_request_get_response_xml ::
        JSRef XMLHttpRequest -> IO (JSRef Document)
#else 
ghcjs_dom_xml_http_request_get_response_xml ::
                                              JSRef XMLHttpRequest -> IO (JSRef Document)
ghcjs_dom_xml_http_request_get_response_xml = undefined
#endif
 
xmlHttpRequestGetResponseXML ::
                             (IsXMLHttpRequest self) => self -> IO (Maybe Document)
xmlHttpRequestGetResponseXML self
  = fmap Document . maybeJSNull <$>
      (ghcjs_dom_xml_http_request_get_response_xml
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"responseType\"] = $2;"
        ghcjs_dom_xml_http_request_set_response_type ::
        JSRef XMLHttpRequest -> JSRef XMLHttpRequestResponseType -> IO ()
#else 
ghcjs_dom_xml_http_request_set_response_type ::
                                               JSRef XMLHttpRequest ->
                                                 JSRef XMLHttpRequestResponseType -> IO ()
ghcjs_dom_xml_http_request_set_response_type = undefined
#endif
 
xmlHttpRequestSetResponseType ::
                              (IsXMLHttpRequest self, IsXMLHttpRequestResponseType val) =>
                                self -> Maybe val -> IO ()
xmlHttpRequestSetResponseType self val
  = ghcjs_dom_xml_http_request_set_response_type
      (unXMLHttpRequest (toXMLHttpRequest self))
      (maybe jsNull
         (unXMLHttpRequestResponseType . toXMLHttpRequestResponseType)
         val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"responseType\"]"
        ghcjs_dom_xml_http_request_get_response_type ::
        JSRef XMLHttpRequest -> IO (JSRef XMLHttpRequestResponseType)
#else 
ghcjs_dom_xml_http_request_get_response_type ::
                                               JSRef XMLHttpRequest ->
                                                 IO (JSRef XMLHttpRequestResponseType)
ghcjs_dom_xml_http_request_get_response_type = undefined
#endif
 
xmlHttpRequestGetResponseType ::
                              (IsXMLHttpRequest self) =>
                                self -> IO (Maybe XMLHttpRequestResponseType)
xmlHttpRequestGetResponseType self
  = fmap XMLHttpRequestResponseType . maybeJSNull <$>
      (ghcjs_dom_xml_http_request_get_response_type
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"status\"]"
        ghcjs_dom_xml_http_request_get_status ::
        JSRef XMLHttpRequest -> IO Word
#else 
ghcjs_dom_xml_http_request_get_status ::
                                        JSRef XMLHttpRequest -> IO Word
ghcjs_dom_xml_http_request_get_status = undefined
#endif
 
xmlHttpRequestGetStatus ::
                        (IsXMLHttpRequest self) => self -> IO Word
xmlHttpRequestGetStatus self
  = ghcjs_dom_xml_http_request_get_status
      (unXMLHttpRequest (toXMLHttpRequest self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"statusText\"]"
        ghcjs_dom_xml_http_request_get_status_text ::
        JSRef XMLHttpRequest -> IO JSString
#else 
ghcjs_dom_xml_http_request_get_status_text ::
                                             JSRef XMLHttpRequest -> IO JSString
ghcjs_dom_xml_http_request_get_status_text = undefined
#endif
 
xmlHttpRequestGetStatusText ::
                            (IsXMLHttpRequest self, FromJSString result) => self -> IO result
xmlHttpRequestGetStatusText self
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_status_text
         (unXMLHttpRequest (toXMLHttpRequest self)))
#else
module GHCJS.DOM.XMLHttpRequest (
  module Graphics.UI.Gtk.WebKit.DOM.XMLHttpRequest
  ) where
import Graphics.UI.Gtk.WebKit.DOM.XMLHttpRequest
#endif
