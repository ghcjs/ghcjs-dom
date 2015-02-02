{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLHttpRequest
       (ghcjs_dom_xml_http_request_new, xmlHttpRequestNew,
        ghcjs_dom_xml_http_request_open, xmlHttpRequestOpen,
        ghcjs_dom_xml_http_request_set_request_header,
        xmlHttpRequestSetRequestHeader, ghcjs_dom_xml_http_request_send,
        xmlHttpRequestSend, ghcjs_dom_xml_http_request_abort,
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
        ghcjs_dom_xml_http_request_get_response_text,
        xmlHttpRequestGetResponseText,
        ghcjs_dom_xml_http_request_get_response_xml,
        xmlHttpRequestGetResponseXML,
        ghcjs_dom_xml_http_request_set_response_type,
        xmlHttpRequestSetResponseType,
        ghcjs_dom_xml_http_request_get_response_type,
        xmlHttpRequestGetResponseType,
        ghcjs_dom_xml_http_request_get_response, xmlHttpRequestGetResponse,
        ghcjs_dom_xml_http_request_get_status, xmlHttpRequestGetStatus,
        ghcjs_dom_xml_http_request_get_status_text,
        xmlHttpRequestGetStatusText,
        ghcjs_dom_xml_http_request_get_response_url,
        xmlHttpRequestGetResponseURL, XMLHttpRequest, IsXMLHttpRequest,
        castToXMLHttpRequest, gTypeXMLHttpRequest, toXMLHttpRequest)
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

 
foreign import javascript unsafe "new window[\"XMLHttpRequest\"]()"
        ghcjs_dom_xml_http_request_new :: IO (JSRef XMLHttpRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation> 
xmlHttpRequestNew :: IO XMLHttpRequest
xmlHttpRequestNew
  = ghcjs_dom_xml_http_request_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"open\"]($2, $3, $4, $5, $6)"
        ghcjs_dom_xml_http_request_open ::
        JSRef XMLHttpRequest ->
          JSString -> JSString -> Bool -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
xmlHttpRequestOpen ::
                   (IsXMLHttpRequest self, ToJSString method, ToJSString url,
                    ToJSString user, ToJSString password) =>
                     self -> method -> url -> Bool -> user -> password -> IO ()
xmlHttpRequestOpen self method url async user password
  = ghcjs_dom_xml_http_request_open
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString method)
      (toJSString url)
      async
      (toJSString user)
      (toJSString password)
 
foreign import javascript unsafe "$1[\"setRequestHeader\"]($2, $3)"
        ghcjs_dom_xml_http_request_set_request_header ::
        JSRef XMLHttpRequest -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.requestHeader Mozilla XMLHttpRequest.requestHeader documentation> 
xmlHttpRequestSetRequestHeader ::
                               (IsXMLHttpRequest self, ToJSString header, ToJSString value) =>
                                 self -> header -> value -> IO ()
xmlHttpRequestSetRequestHeader self header value
  = ghcjs_dom_xml_http_request_set_request_header
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString header)
      (toJSString value)
 
foreign import javascript unsafe "$1[\"send\"]()"
        ghcjs_dom_xml_http_request_send :: JSRef XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.send Mozilla XMLHttpRequest.send documentation> 
xmlHttpRequestSend :: (IsXMLHttpRequest self) => self -> IO ()
xmlHttpRequestSend self
  = ghcjs_dom_xml_http_request_send
      (unXMLHttpRequest (toXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_xml_http_request_abort :: JSRef XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.abort Mozilla XMLHttpRequest.abort documentation> 
xmlHttpRequestAbort :: (IsXMLHttpRequest self) => self -> IO ()
xmlHttpRequestAbort self
  = ghcjs_dom_xml_http_request_abort
      (unXMLHttpRequest (toXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"getAllResponseHeaders\"]()"
        ghcjs_dom_xml_http_request_get_all_response_headers ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.allResponseHeaders Mozilla XMLHttpRequest.allResponseHeaders documentation> 
xmlHttpRequestGetAllResponseHeaders ::
                                    (IsXMLHttpRequest self, FromJSString result) =>
                                      self -> IO result
xmlHttpRequestGetAllResponseHeaders self
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_all_response_headers
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"getResponseHeader\"]($2)"
        ghcjs_dom_xml_http_request_get_response_header ::
        JSRef XMLHttpRequest -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseHeader Mozilla XMLHttpRequest.responseHeader documentation> 
xmlHttpRequestGetResponseHeader ::
                                (IsXMLHttpRequest self, ToJSString header, FromJSString result) =>
                                  self -> header -> IO result
xmlHttpRequestGetResponseHeader self header
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_response_header
         (unXMLHttpRequest (toXMLHttpRequest self))
         (toJSString header))
 
foreign import javascript unsafe "$1[\"overrideMimeType\"]($2)"
        ghcjs_dom_xml_http_request_override_mime_type ::
        JSRef XMLHttpRequest -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.overrideMimeType Mozilla XMLHttpRequest.overrideMimeType documentation> 
xmlHttpRequestOverrideMimeType ::
                               (IsXMLHttpRequest self, ToJSString override) =>
                                 self -> override -> IO ()
xmlHttpRequestOverrideMimeType self override
  = ghcjs_dom_xml_http_request_override_mime_type
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString override)
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_xml_http_request_dispatch_event ::
        JSRef XMLHttpRequest -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.dispatchEvent Mozilla XMLHttpRequest.dispatchEvent documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onabort Mozilla XMLHttpRequest.onabort documentation> 
xmlHttpRequestOnabort ::
                      (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnabort = (connect "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onerror Mozilla XMLHttpRequest.onerror documentation> 
xmlHttpRequestOnerror ::
                      (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onload Mozilla XMLHttpRequest.onload documentation> 
xmlHttpRequestOnload ::
                     (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnload = (connect "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onloadend Mozilla XMLHttpRequest.onloadend documentation> 
xmlHttpRequestOnloadend ::
                        (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnloadend = (connect "loadend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onloadstart Mozilla XMLHttpRequest.onloadstart documentation> 
xmlHttpRequestOnloadstart ::
                          (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnloadstart = (connect "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onprogress Mozilla XMLHttpRequest.onprogress documentation> 
xmlHttpRequestOnprogress ::
                         (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnprogress = (connect "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.ontimeout Mozilla XMLHttpRequest.ontimeout documentation> 
xmlHttpRequestOntimeout ::
                        (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOntimeout = (connect "timeout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onreadystatechange Mozilla XMLHttpRequest.onreadystatechange documentation> 
xmlHttpRequestOnreadystatechange ::
                                 (IsXMLHttpRequest self) => Signal self (EventM UIEvent self ())
xmlHttpRequestOnreadystatechange = (connect "readystatechange")
 
foreign import javascript unsafe "$1[\"timeout\"] = $2;"
        ghcjs_dom_xml_http_request_set_timeout ::
        JSRef XMLHttpRequest -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
xmlHttpRequestSetTimeout ::
                         (IsXMLHttpRequest self) => self -> Word -> IO ()
xmlHttpRequestSetTimeout self val
  = ghcjs_dom_xml_http_request_set_timeout
      (unXMLHttpRequest (toXMLHttpRequest self))
      val
 
foreign import javascript unsafe "$1[\"timeout\"]"
        ghcjs_dom_xml_http_request_get_timeout ::
        JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
xmlHttpRequestGetTimeout ::
                         (IsXMLHttpRequest self) => self -> IO Word
xmlHttpRequestGetTimeout self
  = ghcjs_dom_xml_http_request_get_timeout
      (unXMLHttpRequest (toXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_xml_http_request_get_ready_state ::
        JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.readyState Mozilla XMLHttpRequest.readyState documentation> 
xmlHttpRequestGetReadyState ::
                            (IsXMLHttpRequest self) => self -> IO Word
xmlHttpRequestGetReadyState self
  = ghcjs_dom_xml_http_request_get_ready_state
      (unXMLHttpRequest (toXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"withCredentials\"] = $2;"
        ghcjs_dom_xml_http_request_set_with_credentials ::
        JSRef XMLHttpRequest -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
xmlHttpRequestSetWithCredentials ::
                                 (IsXMLHttpRequest self) => self -> Bool -> IO ()
xmlHttpRequestSetWithCredentials self val
  = ghcjs_dom_xml_http_request_set_with_credentials
      (unXMLHttpRequest (toXMLHttpRequest self))
      val
 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)"
        ghcjs_dom_xml_http_request_get_with_credentials ::
        JSRef XMLHttpRequest -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
xmlHttpRequestGetWithCredentials ::
                                 (IsXMLHttpRequest self) => self -> IO Bool
xmlHttpRequestGetWithCredentials self
  = ghcjs_dom_xml_http_request_get_with_credentials
      (unXMLHttpRequest (toXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"upload\"]"
        ghcjs_dom_xml_http_request_get_upload ::
        JSRef XMLHttpRequest -> IO (JSRef XMLHttpRequestUpload)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.upload Mozilla XMLHttpRequest.upload documentation> 
xmlHttpRequestGetUpload ::
                        (IsXMLHttpRequest self) => self -> IO (Maybe XMLHttpRequestUpload)
xmlHttpRequestGetUpload self
  = (ghcjs_dom_xml_http_request_get_upload
       (unXMLHttpRequest (toXMLHttpRequest self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"responseText\"]"
        ghcjs_dom_xml_http_request_get_response_text ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
xmlHttpRequestGetResponseText ::
                              (IsXMLHttpRequest self, FromJSString result) => self -> IO result
xmlHttpRequestGetResponseText self
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_response_text
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"responseXML\"]"
        ghcjs_dom_xml_http_request_get_response_xml ::
        JSRef XMLHttpRequest -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
xmlHttpRequestGetResponseXML ::
                             (IsXMLHttpRequest self) => self -> IO (Maybe Document)
xmlHttpRequestGetResponseXML self
  = (ghcjs_dom_xml_http_request_get_response_xml
       (unXMLHttpRequest (toXMLHttpRequest self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"responseType\"] = $2;"
        ghcjs_dom_xml_http_request_set_response_type ::
        JSRef XMLHttpRequest -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
xmlHttpRequestSetResponseType ::
                              (IsXMLHttpRequest self, ToJSString val) => self -> val -> IO ()
xmlHttpRequestSetResponseType self val
  = ghcjs_dom_xml_http_request_set_response_type
      (unXMLHttpRequest (toXMLHttpRequest self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"responseType\"]"
        ghcjs_dom_xml_http_request_get_response_type ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
xmlHttpRequestGetResponseType ::
                              (IsXMLHttpRequest self, FromJSString result) => self -> IO result
xmlHttpRequestGetResponseType self
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_response_type
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"response\"]"
        ghcjs_dom_xml_http_request_get_response ::
        JSRef XMLHttpRequest -> IO (JSRef GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.response Mozilla XMLHttpRequest.response documentation> 
xmlHttpRequestGetResponse ::
                          (IsXMLHttpRequest self) => self -> IO (JSRef GObject)
xmlHttpRequestGetResponse self
  = ghcjs_dom_xml_http_request_get_response
      (unXMLHttpRequest (toXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"status\"]"
        ghcjs_dom_xml_http_request_get_status ::
        JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.status Mozilla XMLHttpRequest.status documentation> 
xmlHttpRequestGetStatus ::
                        (IsXMLHttpRequest self) => self -> IO Word
xmlHttpRequestGetStatus self
  = ghcjs_dom_xml_http_request_get_status
      (unXMLHttpRequest (toXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"statusText\"]"
        ghcjs_dom_xml_http_request_get_status_text ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.statusText Mozilla XMLHttpRequest.statusText documentation> 
xmlHttpRequestGetStatusText ::
                            (IsXMLHttpRequest self, FromJSString result) => self -> IO result
xmlHttpRequestGetStatusText self
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_status_text
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"responseURL\"]"
        ghcjs_dom_xml_http_request_get_response_url ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseURL Mozilla XMLHttpRequest.responseURL documentation> 
xmlHttpRequestGetResponseURL ::
                             (IsXMLHttpRequest self, FromJSString result) => self -> IO result
xmlHttpRequestGetResponseURL self
  = fromJSString <$>
      (ghcjs_dom_xml_http_request_get_response_url
         (unXMLHttpRequest (toXMLHttpRequest self)))
#else
module GHCJS.DOM.XMLHttpRequest (
  ) where
#endif
