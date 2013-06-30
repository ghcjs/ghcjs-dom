{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.XMLHttpRequest
       (webkit_dom_xml_http_request_set_request_header,
        xmlHttpRequestSetRequestHeader, webkit_dom_xml_http_request_abort,
        xmlHttpRequestAbort,
        webkit_dom_xml_http_request_get_all_response_headers,
        xmlHttpRequestGetAllResponseHeaders,
        webkit_dom_xml_http_request_get_response_header,
        xmlHttpRequestGetResponseHeader,
        webkit_dom_xml_http_request_override_mime_type,
        xmlHttpRequestOverrideMimeType,
        webkit_dom_xml_http_request_dispatch_event,
        xmlHttpRequestDispatchEvent, cUNSENT, cOPENED, cHEADERS_RECEIVED,
        cLOADING, cDONE, xmlHttpRequestOnabort, xmlHttpRequestOnerror,
        xmlHttpRequestOnload, xmlHttpRequestOnloadend,
        xmlHttpRequestOnloadstart, xmlHttpRequestOnprogress,
        xmlHttpRequestOnreadystatechange,
        webkit_dom_xml_http_request_get_ready_state,
        xmlHttpRequestGetReadyState,
        webkit_dom_xml_http_request_set_with_credentials,
        xmlHttpRequestSetWithCredentials,
        webkit_dom_xml_http_request_get_with_credentials,
        xmlHttpRequestGetWithCredentials,
        webkit_dom_xml_http_request_get_upload, xmlHttpRequestGetUpload,
        webkit_dom_xml_http_request_get_response_xml,
        xmlHttpRequestGetResponseXML,
        webkit_dom_xml_http_request_set_response_type,
        xmlHttpRequestSetResponseType,
        webkit_dom_xml_http_request_get_response_type,
        xmlHttpRequestGetResponseType,
        webkit_dom_xml_http_request_get_status, xmlHttpRequestGetStatus,
        webkit_dom_xml_http_request_get_status_text,
        xmlHttpRequestGetStatusText)
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
foreign import javascript unsafe "$1[\"setRequestHeader\"]($2, $3)"
        webkit_dom_xml_http_request_set_request_header ::
        JSRef XMLHttpRequest -> JSString -> JSString -> IO ()
#else 
webkit_dom_xml_http_request_set_request_header ::
                                                 JSRef XMLHttpRequest ->
                                                   JSString -> JSString -> IO ()
webkit_dom_xml_http_request_set_request_header = undefined
#endif
 
xmlHttpRequestSetRequestHeader ::
                               (XMLHttpRequestClass self, ToJSString header, ToJSString value) =>
                                 self -> header -> value -> IO ()
xmlHttpRequestSetRequestHeader self header value
  = webkit_dom_xml_http_request_set_request_header
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString header)
      (toJSString value)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"abort\"]()"
        webkit_dom_xml_http_request_abort :: JSRef XMLHttpRequest -> IO ()
#else 
webkit_dom_xml_http_request_abort :: JSRef XMLHttpRequest -> IO ()
webkit_dom_xml_http_request_abort = undefined
#endif
 
xmlHttpRequestAbort :: (XMLHttpRequestClass self) => self -> IO ()
xmlHttpRequestAbort self
  = webkit_dom_xml_http_request_abort
      (unXMLHttpRequest (toXMLHttpRequest self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getAllResponseHeaders\"]()"
        webkit_dom_xml_http_request_get_all_response_headers ::
        JSRef XMLHttpRequest -> IO JSString
#else 
webkit_dom_xml_http_request_get_all_response_headers ::
                                                       JSRef XMLHttpRequest -> IO JSString
webkit_dom_xml_http_request_get_all_response_headers = undefined
#endif
 
xmlHttpRequestGetAllResponseHeaders ::
                                    (XMLHttpRequestClass self, FromJSString result) =>
                                      self -> IO result
xmlHttpRequestGetAllResponseHeaders self
  = fromJSString <$>
      (webkit_dom_xml_http_request_get_all_response_headers
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getResponseHeader\"]($2)"
        webkit_dom_xml_http_request_get_response_header ::
        JSRef XMLHttpRequest -> JSString -> IO JSString
#else 
webkit_dom_xml_http_request_get_response_header ::
                                                  JSRef XMLHttpRequest -> JSString -> IO JSString
webkit_dom_xml_http_request_get_response_header = undefined
#endif
 
xmlHttpRequestGetResponseHeader ::
                                (XMLHttpRequestClass self, ToJSString header,
                                 FromJSString result) =>
                                  self -> header -> IO result
xmlHttpRequestGetResponseHeader self header
  = fromJSString <$>
      (webkit_dom_xml_http_request_get_response_header
         (unXMLHttpRequest (toXMLHttpRequest self))
         (toJSString header))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"overrideMimeType\"]($2)"
        webkit_dom_xml_http_request_override_mime_type ::
        JSRef XMLHttpRequest -> JSString -> IO ()
#else 
webkit_dom_xml_http_request_override_mime_type ::
                                                 JSRef XMLHttpRequest -> JSString -> IO ()
webkit_dom_xml_http_request_override_mime_type = undefined
#endif
 
xmlHttpRequestOverrideMimeType ::
                               (XMLHttpRequestClass self, ToJSString override) =>
                                 self -> override -> IO ()
xmlHttpRequestOverrideMimeType self override
  = webkit_dom_xml_http_request_override_mime_type
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString override)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        webkit_dom_xml_http_request_dispatch_event ::
        JSRef XMLHttpRequest -> JSRef Event -> IO JSBool
#else 
webkit_dom_xml_http_request_dispatch_event ::
                                             JSRef XMLHttpRequest -> JSRef Event -> IO JSBool
webkit_dom_xml_http_request_dispatch_event = undefined
#endif
 
xmlHttpRequestDispatchEvent ::
                            (XMLHttpRequestClass self, EventClass evt) =>
                              self -> Maybe evt -> IO Bool
xmlHttpRequestDispatchEvent self evt
  = fromJSBool <$>
      (webkit_dom_xml_http_request_dispatch_event
         (unXMLHttpRequest (toXMLHttpRequest self))
         (maybe jsNull (unEvent . toEvent) evt))
cUNSENT = 0
cOPENED = 1
cHEADERS_RECEIVED = 2
cLOADING = 3
cDONE = 4
 
xmlHttpRequestOnabort ::
                      (XMLHttpRequestClass self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnabort = (connect "abort")
 
xmlHttpRequestOnerror ::
                      (XMLHttpRequestClass self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnerror = (connect "error")
 
xmlHttpRequestOnload ::
                     (XMLHttpRequestClass self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnload = (connect "load")
 
xmlHttpRequestOnloadend ::
                        (XMLHttpRequestClass self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnloadend = (connect "loadend")
 
xmlHttpRequestOnloadstart ::
                          (XMLHttpRequestClass self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnloadstart = (connect "loadstart")
 
xmlHttpRequestOnprogress ::
                         (XMLHttpRequestClass self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnprogress = (connect "progress")
 
xmlHttpRequestOnreadystatechange ::
                                 (XMLHttpRequestClass self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnreadystatechange = (connect "readystatechange")


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readyState\"]"
        webkit_dom_xml_http_request_get_ready_state ::
        JSRef XMLHttpRequest -> IO Word
#else 
webkit_dom_xml_http_request_get_ready_state ::
                                              JSRef XMLHttpRequest -> IO Word
webkit_dom_xml_http_request_get_ready_state = undefined
#endif
 
xmlHttpRequestGetReadyState ::
                            (XMLHttpRequestClass self) => self -> IO Word
xmlHttpRequestGetReadyState self
  = webkit_dom_xml_http_request_get_ready_state
      (unXMLHttpRequest (toXMLHttpRequest self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"withCredentials\"] = $2;"
        webkit_dom_xml_http_request_set_with_credentials ::
        JSRef XMLHttpRequest -> JSBool -> IO ()
#else 
webkit_dom_xml_http_request_set_with_credentials ::
                                                   JSRef XMLHttpRequest -> JSBool -> IO ()
webkit_dom_xml_http_request_set_with_credentials = undefined
#endif
 
xmlHttpRequestSetWithCredentials ::
                                 (XMLHttpRequestClass self) => self -> Bool -> IO ()
xmlHttpRequestSetWithCredentials self val
  = webkit_dom_xml_http_request_set_with_credentials
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)"
        webkit_dom_xml_http_request_get_with_credentials ::
        JSRef XMLHttpRequest -> IO JSBool
#else 
webkit_dom_xml_http_request_get_with_credentials ::
                                                   JSRef XMLHttpRequest -> IO JSBool
webkit_dom_xml_http_request_get_with_credentials = undefined
#endif
 
xmlHttpRequestGetWithCredentials ::
                                 (XMLHttpRequestClass self) => self -> IO Bool
xmlHttpRequestGetWithCredentials self
  = fromJSBool <$>
      (webkit_dom_xml_http_request_get_with_credentials
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"upload\"]"
        webkit_dom_xml_http_request_get_upload ::
        JSRef XMLHttpRequest -> IO (JSRef XMLHttpRequestUpload)
#else 
webkit_dom_xml_http_request_get_upload ::
                                         JSRef XMLHttpRequest -> IO (JSRef XMLHttpRequestUpload)
webkit_dom_xml_http_request_get_upload = undefined
#endif
 
xmlHttpRequestGetUpload ::
                        (XMLHttpRequestClass self) =>
                          self -> IO (Maybe XMLHttpRequestUpload)
xmlHttpRequestGetUpload self
  = fmap XMLHttpRequestUpload . maybeJSNull <$>
      (webkit_dom_xml_http_request_get_upload
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"responseXML\"]"
        webkit_dom_xml_http_request_get_response_xml ::
        JSRef XMLHttpRequest -> IO (JSRef Document)
#else 
webkit_dom_xml_http_request_get_response_xml ::
                                               JSRef XMLHttpRequest -> IO (JSRef Document)
webkit_dom_xml_http_request_get_response_xml = undefined
#endif
 
xmlHttpRequestGetResponseXML ::
                             (XMLHttpRequestClass self) => self -> IO (Maybe Document)
xmlHttpRequestGetResponseXML self
  = fmap Document . maybeJSNull <$>
      (webkit_dom_xml_http_request_get_response_xml
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"responseType\"] = $2;"
        webkit_dom_xml_http_request_set_response_type ::
        JSRef XMLHttpRequest -> JSString -> IO ()
#else 
webkit_dom_xml_http_request_set_response_type ::
                                                JSRef XMLHttpRequest -> JSString -> IO ()
webkit_dom_xml_http_request_set_response_type = undefined
#endif
 
xmlHttpRequestSetResponseType ::
                              (XMLHttpRequestClass self, ToJSString val) => self -> val -> IO ()
xmlHttpRequestSetResponseType self val
  = webkit_dom_xml_http_request_set_response_type
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"responseType\"]"
        webkit_dom_xml_http_request_get_response_type ::
        JSRef XMLHttpRequest -> IO JSString
#else 
webkit_dom_xml_http_request_get_response_type ::
                                                JSRef XMLHttpRequest -> IO JSString
webkit_dom_xml_http_request_get_response_type = undefined
#endif
 
xmlHttpRequestGetResponseType ::
                              (XMLHttpRequestClass self, FromJSString result) =>
                                self -> IO result
xmlHttpRequestGetResponseType self
  = fromJSString <$>
      (webkit_dom_xml_http_request_get_response_type
         (unXMLHttpRequest (toXMLHttpRequest self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"status\"]"
        webkit_dom_xml_http_request_get_status ::
        JSRef XMLHttpRequest -> IO Word
#else 
webkit_dom_xml_http_request_get_status ::
                                         JSRef XMLHttpRequest -> IO Word
webkit_dom_xml_http_request_get_status = undefined
#endif
 
xmlHttpRequestGetStatus ::
                        (XMLHttpRequestClass self) => self -> IO Word
xmlHttpRequestGetStatus self
  = webkit_dom_xml_http_request_get_status
      (unXMLHttpRequest (toXMLHttpRequest self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"statusText\"]"
        webkit_dom_xml_http_request_get_status_text ::
        JSRef XMLHttpRequest -> IO JSString
#else 
webkit_dom_xml_http_request_get_status_text ::
                                              JSRef XMLHttpRequest -> IO JSString
webkit_dom_xml_http_request_get_status_text = undefined
#endif
 
xmlHttpRequestGetStatusText ::
                            (XMLHttpRequestClass self, FromJSString result) =>
                              self -> IO result
xmlHttpRequestGetStatusText self
  = fromJSString <$>
      (webkit_dom_xml_http_request_get_status_text
         (unXMLHttpRequest (toXMLHttpRequest self)))