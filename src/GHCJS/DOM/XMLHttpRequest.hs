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
        xmlHttpRequestOverrideMimeType, cUNSENT, cOPENED,
        cHEADERS_RECEIVED, cLOADING, cDONE, xmlHttpRequestAbortEvent,
        xmlHttpRequestError, xmlHttpRequestLoad, xmlHttpRequestLoadEnd,
        xmlHttpRequestLoadStart, xmlHttpRequestProgress,
        xmlHttpRequestTimeout, xmlHttpRequestReadyStateChange,
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
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"XMLHttpRequest\"]()"
        ghcjs_dom_xml_http_request_new :: IO (JSRef XMLHttpRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation> 
xmlHttpRequestNew :: (MonadIO m) => m XMLHttpRequest
xmlHttpRequestNew
  = liftIO (ghcjs_dom_xml_http_request_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"open\"]($2, $3, $4, $5, $6)"
        ghcjs_dom_xml_http_request_open ::
        JSRef XMLHttpRequest ->
          JSString -> JSString -> Bool -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
xmlHttpRequestOpen ::
                   (MonadIO m, IsXMLHttpRequest self, ToJSString method,
                    ToJSString url, ToJSString user, ToJSString password) =>
                     self -> method -> url -> Bool -> user -> password -> m ()
xmlHttpRequestOpen self method url async user password
  = liftIO
      (ghcjs_dom_xml_http_request_open
         (unXMLHttpRequest (toXMLHttpRequest self))
         (toJSString method)
         (toJSString url)
         async
         (toJSString user)
         (toJSString password))
 
foreign import javascript unsafe "$1[\"setRequestHeader\"]($2, $3)"
        ghcjs_dom_xml_http_request_set_request_header ::
        JSRef XMLHttpRequest -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.requestHeader Mozilla XMLHttpRequest.requestHeader documentation> 
xmlHttpRequestSetRequestHeader ::
                               (MonadIO m, IsXMLHttpRequest self, ToJSString header,
                                ToJSString value) =>
                                 self -> header -> value -> m ()
xmlHttpRequestSetRequestHeader self header value
  = liftIO
      (ghcjs_dom_xml_http_request_set_request_header
         (unXMLHttpRequest (toXMLHttpRequest self))
         (toJSString header)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"send\"]()"
        ghcjs_dom_xml_http_request_send :: JSRef XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.send Mozilla XMLHttpRequest.send documentation> 
xmlHttpRequestSend ::
                   (MonadIO m, IsXMLHttpRequest self) => self -> m ()
xmlHttpRequestSend self
  = liftIO
      (ghcjs_dom_xml_http_request_send
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_xml_http_request_abort :: JSRef XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.abort Mozilla XMLHttpRequest.abort documentation> 
xmlHttpRequestAbort ::
                    (MonadIO m, IsXMLHttpRequest self) => self -> m ()
xmlHttpRequestAbort self
  = liftIO
      (ghcjs_dom_xml_http_request_abort
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"getAllResponseHeaders\"]()"
        ghcjs_dom_xml_http_request_get_all_response_headers ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.allResponseHeaders Mozilla XMLHttpRequest.allResponseHeaders documentation> 
xmlHttpRequestGetAllResponseHeaders ::
                                    (MonadIO m, IsXMLHttpRequest self, FromJSString result) =>
                                      self -> m result
xmlHttpRequestGetAllResponseHeaders self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_xml_http_request_get_all_response_headers
            (unXMLHttpRequest (toXMLHttpRequest self))))
 
foreign import javascript unsafe "$1[\"getResponseHeader\"]($2)"
        ghcjs_dom_xml_http_request_get_response_header ::
        JSRef XMLHttpRequest -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseHeader Mozilla XMLHttpRequest.responseHeader documentation> 
xmlHttpRequestGetResponseHeader ::
                                (MonadIO m, IsXMLHttpRequest self, ToJSString header,
                                 FromJSString result) =>
                                  self -> header -> m result
xmlHttpRequestGetResponseHeader self header
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_xml_http_request_get_response_header
            (unXMLHttpRequest (toXMLHttpRequest self))
            (toJSString header)))
 
foreign import javascript unsafe "$1[\"overrideMimeType\"]($2)"
        ghcjs_dom_xml_http_request_override_mime_type ::
        JSRef XMLHttpRequest -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.overrideMimeType Mozilla XMLHttpRequest.overrideMimeType documentation> 
xmlHttpRequestOverrideMimeType ::
                               (MonadIO m, IsXMLHttpRequest self, ToJSString override) =>
                                 self -> override -> m ()
xmlHttpRequestOverrideMimeType self override
  = liftIO
      (ghcjs_dom_xml_http_request_override_mime_type
         (unXMLHttpRequest (toXMLHttpRequest self))
         (toJSString override))
cUNSENT = 0
cOPENED = 1
cHEADERS_RECEIVED = 2
cLOADING = 3
cDONE = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.abortEvent Mozilla XMLHttpRequest.abortEvent documentation> 
xmlHttpRequestAbortEvent ::
                         (IsXMLHttpRequest self, IsEventTarget self) =>
                           EventName self XMLHttpRequestProgressEvent
xmlHttpRequestAbortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.error Mozilla XMLHttpRequest.error documentation> 
xmlHttpRequestError ::
                    (IsXMLHttpRequest self, IsEventTarget self) =>
                      EventName self XMLHttpRequestProgressEvent
xmlHttpRequestError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.load Mozilla XMLHttpRequest.load documentation> 
xmlHttpRequestLoad ::
                   (IsXMLHttpRequest self, IsEventTarget self) =>
                     EventName self XMLHttpRequestProgressEvent
xmlHttpRequestLoad = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.loadEnd Mozilla XMLHttpRequest.loadEnd documentation> 
xmlHttpRequestLoadEnd ::
                      (IsXMLHttpRequest self, IsEventTarget self) =>
                        EventName self ProgressEvent
xmlHttpRequestLoadEnd = unsafeEventName (toJSString "loadend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.loadStart Mozilla XMLHttpRequest.loadStart documentation> 
xmlHttpRequestLoadStart ::
                        (IsXMLHttpRequest self, IsEventTarget self) =>
                          EventName self ProgressEvent
xmlHttpRequestLoadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.progress Mozilla XMLHttpRequest.progress documentation> 
xmlHttpRequestProgress ::
                       (IsXMLHttpRequest self, IsEventTarget self) =>
                         EventName self XMLHttpRequestProgressEvent
xmlHttpRequestProgress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
xmlHttpRequestTimeout ::
                      (IsXMLHttpRequest self, IsEventTarget self) =>
                        EventName self ProgressEvent
xmlHttpRequestTimeout = unsafeEventName (toJSString "timeout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.readyStateChange Mozilla XMLHttpRequest.readyStateChange documentation> 
xmlHttpRequestReadyStateChange ::
                               (IsXMLHttpRequest self, IsEventTarget self) => EventName self Event
xmlHttpRequestReadyStateChange
  = unsafeEventName (toJSString "readystatechange")
 
foreign import javascript unsafe "$1[\"timeout\"] = $2;"
        ghcjs_dom_xml_http_request_set_timeout ::
        JSRef XMLHttpRequest -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
xmlHttpRequestSetTimeout ::
                         (MonadIO m, IsXMLHttpRequest self) => self -> Word -> m ()
xmlHttpRequestSetTimeout self val
  = liftIO
      (ghcjs_dom_xml_http_request_set_timeout
         (unXMLHttpRequest (toXMLHttpRequest self))
         val)
 
foreign import javascript unsafe "$1[\"timeout\"]"
        ghcjs_dom_xml_http_request_get_timeout ::
        JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
xmlHttpRequestGetTimeout ::
                         (MonadIO m, IsXMLHttpRequest self) => self -> m Word
xmlHttpRequestGetTimeout self
  = liftIO
      (ghcjs_dom_xml_http_request_get_timeout
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_xml_http_request_get_ready_state ::
        JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.readyState Mozilla XMLHttpRequest.readyState documentation> 
xmlHttpRequestGetReadyState ::
                            (MonadIO m, IsXMLHttpRequest self) => self -> m Word
xmlHttpRequestGetReadyState self
  = liftIO
      (ghcjs_dom_xml_http_request_get_ready_state
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"withCredentials\"] = $2;"
        ghcjs_dom_xml_http_request_set_with_credentials ::
        JSRef XMLHttpRequest -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
xmlHttpRequestSetWithCredentials ::
                                 (MonadIO m, IsXMLHttpRequest self) => self -> Bool -> m ()
xmlHttpRequestSetWithCredentials self val
  = liftIO
      (ghcjs_dom_xml_http_request_set_with_credentials
         (unXMLHttpRequest (toXMLHttpRequest self))
         val)
 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)"
        ghcjs_dom_xml_http_request_get_with_credentials ::
        JSRef XMLHttpRequest -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
xmlHttpRequestGetWithCredentials ::
                                 (MonadIO m, IsXMLHttpRequest self) => self -> m Bool
xmlHttpRequestGetWithCredentials self
  = liftIO
      (ghcjs_dom_xml_http_request_get_with_credentials
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"upload\"]"
        ghcjs_dom_xml_http_request_get_upload ::
        JSRef XMLHttpRequest -> IO (JSRef XMLHttpRequestUpload)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.upload Mozilla XMLHttpRequest.upload documentation> 
xmlHttpRequestGetUpload ::
                        (MonadIO m, IsXMLHttpRequest self) =>
                          self -> m (Maybe XMLHttpRequestUpload)
xmlHttpRequestGetUpload self
  = liftIO
      ((ghcjs_dom_xml_http_request_get_upload
          (unXMLHttpRequest (toXMLHttpRequest self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"responseText\"]"
        ghcjs_dom_xml_http_request_get_response_text ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
xmlHttpRequestGetResponseText ::
                              (MonadIO m, IsXMLHttpRequest self, FromJSString result) =>
                                self -> m result
xmlHttpRequestGetResponseText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_xml_http_request_get_response_text
            (unXMLHttpRequest (toXMLHttpRequest self))))
 
foreign import javascript unsafe "$1[\"responseXML\"]"
        ghcjs_dom_xml_http_request_get_response_xml ::
        JSRef XMLHttpRequest -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
xmlHttpRequestGetResponseXML ::
                             (MonadIO m, IsXMLHttpRequest self) => self -> m (Maybe Document)
xmlHttpRequestGetResponseXML self
  = liftIO
      ((ghcjs_dom_xml_http_request_get_response_xml
          (unXMLHttpRequest (toXMLHttpRequest self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"responseType\"] = $2;"
        ghcjs_dom_xml_http_request_set_response_type ::
        JSRef XMLHttpRequest -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
xmlHttpRequestSetResponseType ::
                              (MonadIO m, IsXMLHttpRequest self, ToJSString val) =>
                                self -> val -> m ()
xmlHttpRequestSetResponseType self val
  = liftIO
      (ghcjs_dom_xml_http_request_set_response_type
         (unXMLHttpRequest (toXMLHttpRequest self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"responseType\"]"
        ghcjs_dom_xml_http_request_get_response_type ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
xmlHttpRequestGetResponseType ::
                              (MonadIO m, IsXMLHttpRequest self, FromJSString result) =>
                                self -> m result
xmlHttpRequestGetResponseType self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_xml_http_request_get_response_type
            (unXMLHttpRequest (toXMLHttpRequest self))))
 
foreign import javascript unsafe "$1[\"response\"]"
        ghcjs_dom_xml_http_request_get_response ::
        JSRef XMLHttpRequest -> IO (JSRef GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.response Mozilla XMLHttpRequest.response documentation> 
xmlHttpRequestGetResponse ::
                          (MonadIO m, IsXMLHttpRequest self) => self -> m (Maybe GObject)
xmlHttpRequestGetResponse self
  = liftIO
      ((ghcjs_dom_xml_http_request_get_response
          (unXMLHttpRequest (toXMLHttpRequest self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"status\"]"
        ghcjs_dom_xml_http_request_get_status ::
        JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.status Mozilla XMLHttpRequest.status documentation> 
xmlHttpRequestGetStatus ::
                        (MonadIO m, IsXMLHttpRequest self) => self -> m Word
xmlHttpRequestGetStatus self
  = liftIO
      (ghcjs_dom_xml_http_request_get_status
         (unXMLHttpRequest (toXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"statusText\"]"
        ghcjs_dom_xml_http_request_get_status_text ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.statusText Mozilla XMLHttpRequest.statusText documentation> 
xmlHttpRequestGetStatusText ::
                            (MonadIO m, IsXMLHttpRequest self, FromJSString result) =>
                              self -> m result
xmlHttpRequestGetStatusText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_xml_http_request_get_status_text
            (unXMLHttpRequest (toXMLHttpRequest self))))
 
foreign import javascript unsafe "$1[\"responseURL\"]"
        ghcjs_dom_xml_http_request_get_response_url ::
        JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseURL Mozilla XMLHttpRequest.responseURL documentation> 
xmlHttpRequestGetResponseURL ::
                             (MonadIO m, IsXMLHttpRequest self, FromJSString result) =>
                               self -> m result
xmlHttpRequestGetResponseURL self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_xml_http_request_get_response_url
            (unXMLHttpRequest (toXMLHttpRequest self))))
#else
module GHCJS.DOM.XMLHttpRequest (
  ) where
#endif
