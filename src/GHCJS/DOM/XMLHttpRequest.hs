{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLHttpRequest
       (js_newXMLHttpRequest, newXMLHttpRequest, js_open, open,
        js_setRequestHeader, setRequestHeader, js_send, send, js_abort,
        abort, js_getAllResponseHeaders, getAllResponseHeaders,
        js_getResponseHeader, getResponseHeader, js_overrideMimeType,
        overrideMimeType, pattern UNSENT, pattern OPENED,
        pattern HEADERS_RECEIVED, pattern LOADING, pattern DONE,
        abortEvent, error, load, loadEnd, loadStart, progress, timeout,
        readyStateChange, js_setTimeout, setTimeout, js_getTimeout,
        getTimeout, js_getReadyState, getReadyState, js_setWithCredentials,
        setWithCredentials, js_getWithCredentials, getWithCredentials,
        js_getUpload, getUpload, js_getResponseText, getResponseText,
        js_getResponseXML, getResponseXML, js_setResponseType,
        setResponseType, js_getResponseType, getResponseType,
        js_getResponse, getResponse, js_getStatus, getStatus,
        js_getStatusText, getStatusText, js_getResponseURL, getResponseURL,
        XMLHttpRequest, castToXMLHttpRequest, gTypeXMLHttpRequest)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"XMLHttpRequest\"]()"
        js_newXMLHttpRequest :: IO (JSRef XMLHttpRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation> 
newXMLHttpRequest :: (MonadIO m) => m XMLHttpRequest
newXMLHttpRequest
  = liftIO (js_newXMLHttpRequest >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"open\"]($2, $3, $4, $5, $6)"
        js_open ::
        JSRef XMLHttpRequest ->
          JSString -> JSString -> Bool -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
open ::
     (MonadIO m, ToJSString method, ToJSString url, ToJSString user,
      ToJSString password) =>
       XMLHttpRequest -> method -> url -> Bool -> user -> password -> m ()
open self method url async user password
  = liftIO
      (js_open (unXMLHttpRequest self) (toJSString method)
         (toJSString url)
         async
         (toJSString user)
         (toJSString password))
 
foreign import javascript unsafe "$1[\"setRequestHeader\"]($2, $3)"
        js_setRequestHeader ::
        JSRef XMLHttpRequest -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.setRequestHeader Mozilla XMLHttpRequest.setRequestHeader documentation> 
setRequestHeader ::
                 (MonadIO m, ToJSString header, ToJSString value) =>
                   XMLHttpRequest -> header -> value -> m ()
setRequestHeader self header value
  = liftIO
      (js_setRequestHeader (unXMLHttpRequest self) (toJSString header)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"send\"]()" js_send ::
        JSRef XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.send Mozilla XMLHttpRequest.send documentation> 
send :: (MonadIO m) => XMLHttpRequest -> m ()
send self = liftIO (js_send (unXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        JSRef XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.abort Mozilla XMLHttpRequest.abort documentation> 
abort :: (MonadIO m) => XMLHttpRequest -> m ()
abort self = liftIO (js_abort (unXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"getAllResponseHeaders\"]()"
        js_getAllResponseHeaders :: JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeaders ::
                      (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getAllResponseHeaders self
  = liftIO
      (fromJSString <$>
         (js_getAllResponseHeaders (unXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"getResponseHeader\"]($2)"
        js_getResponseHeader ::
        JSRef XMLHttpRequest -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeader ::
                  (MonadIO m, ToJSString header, FromJSString result) =>
                    XMLHttpRequest -> header -> m result
getResponseHeader self header
  = liftIO
      (fromJSString <$>
         (js_getResponseHeader (unXMLHttpRequest self) (toJSString header)))
 
foreign import javascript unsafe "$1[\"overrideMimeType\"]($2)"
        js_overrideMimeType :: JSRef XMLHttpRequest -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.overrideMimeType Mozilla XMLHttpRequest.overrideMimeType documentation> 
overrideMimeType ::
                 (MonadIO m, ToJSString override) =>
                   XMLHttpRequest -> override -> m ()
overrideMimeType self override
  = liftIO
      (js_overrideMimeType (unXMLHttpRequest self) (toJSString override))
pattern UNSENT = 0
pattern OPENED = 1
pattern HEADERS_RECEIVED = 2
pattern LOADING = 3
pattern DONE = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onabort Mozilla XMLHttpRequest.onabort documentation> 
abortEvent :: EventName XMLHttpRequest XMLHttpRequestProgressEvent
abortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onerror Mozilla XMLHttpRequest.onerror documentation> 
error :: EventName XMLHttpRequest XMLHttpRequestProgressEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onload Mozilla XMLHttpRequest.onload documentation> 
load :: EventName XMLHttpRequest XMLHttpRequestProgressEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onloadend Mozilla XMLHttpRequest.onloadend documentation> 
loadEnd :: EventName XMLHttpRequest ProgressEvent
loadEnd = unsafeEventName (toJSString "loadend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onloadstart Mozilla XMLHttpRequest.onloadstart documentation> 
loadStart :: EventName XMLHttpRequest ProgressEvent
loadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onprogress Mozilla XMLHttpRequest.onprogress documentation> 
progress :: EventName XMLHttpRequest XMLHttpRequestProgressEvent
progress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.ontimeout Mozilla XMLHttpRequest.ontimeout documentation> 
timeout :: EventName XMLHttpRequest ProgressEvent
timeout = unsafeEventName (toJSString "timeout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onreadystatechange Mozilla XMLHttpRequest.onreadystatechange documentation> 
readyStateChange :: EventName XMLHttpRequest Event
readyStateChange = unsafeEventName (toJSString "readystatechange")
 
foreign import javascript unsafe "$1[\"timeout\"] = $2;"
        js_setTimeout :: JSRef XMLHttpRequest -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
setTimeout :: (MonadIO m) => XMLHttpRequest -> Word -> m ()
setTimeout self val
  = liftIO (js_setTimeout (unXMLHttpRequest self) val)
 
foreign import javascript unsafe "$1[\"timeout\"]" js_getTimeout ::
        JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
getTimeout :: (MonadIO m) => XMLHttpRequest -> m Word
getTimeout self = liftIO (js_getTimeout (unXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.readyState Mozilla XMLHttpRequest.readyState documentation> 
getReadyState :: (MonadIO m) => XMLHttpRequest -> m Word
getReadyState self
  = liftIO (js_getReadyState (unXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"withCredentials\"] = $2;"
        js_setWithCredentials :: JSRef XMLHttpRequest -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
setWithCredentials :: (MonadIO m) => XMLHttpRequest -> Bool -> m ()
setWithCredentials self val
  = liftIO (js_setWithCredentials (unXMLHttpRequest self) val)
 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)" js_getWithCredentials ::
        JSRef XMLHttpRequest -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
getWithCredentials :: (MonadIO m) => XMLHttpRequest -> m Bool
getWithCredentials self
  = liftIO (js_getWithCredentials (unXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"upload\"]" js_getUpload ::
        JSRef XMLHttpRequest -> IO (JSRef XMLHttpRequestUpload)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.upload Mozilla XMLHttpRequest.upload documentation> 
getUpload ::
          (MonadIO m) => XMLHttpRequest -> m (Maybe XMLHttpRequestUpload)
getUpload self
  = liftIO ((js_getUpload (unXMLHttpRequest self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"responseText\"]"
        js_getResponseText :: JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseText ::
                (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getResponseText self
  = liftIO
      (fromJSString <$> (js_getResponseText (unXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"responseXML\"]"
        js_getResponseXML :: JSRef XMLHttpRequest -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
getResponseXML ::
               (MonadIO m) => XMLHttpRequest -> m (Maybe Document)
getResponseXML self
  = liftIO
      ((js_getResponseXML (unXMLHttpRequest self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"responseType\"] = $2;"
        js_setResponseType ::
        JSRef XMLHttpRequest -> JSRef XMLHttpRequestResponseType -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
setResponseType ::
                (MonadIO m) => XMLHttpRequest -> XMLHttpRequestResponseType -> m ()
setResponseType self val
  = liftIO
      (js_setResponseType (unXMLHttpRequest self) (ptoJSRef val))
 
foreign import javascript unsafe "$1[\"responseType\"]"
        js_getResponseType ::
        JSRef XMLHttpRequest -> IO (JSRef XMLHttpRequestResponseType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
getResponseType ::
                (MonadIO m) => XMLHttpRequest -> m XMLHttpRequestResponseType
getResponseType self
  = liftIO
      ((js_getResponseType (unXMLHttpRequest self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"response\"]" js_getResponse
        :: JSRef XMLHttpRequest -> IO (JSRef GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.response Mozilla XMLHttpRequest.response documentation> 
getResponse :: (MonadIO m) => XMLHttpRequest -> m (Maybe GObject)
getResponse self
  = liftIO ((js_getResponse (unXMLHttpRequest self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        JSRef XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.status Mozilla XMLHttpRequest.status documentation> 
getStatus :: (MonadIO m) => XMLHttpRequest -> m Word
getStatus self = liftIO (js_getStatus (unXMLHttpRequest self))
 
foreign import javascript unsafe "$1[\"statusText\"]"
        js_getStatusText :: JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.statusText Mozilla XMLHttpRequest.statusText documentation> 
getStatusText ::
              (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getStatusText self
  = liftIO
      (fromJSString <$> (js_getStatusText (unXMLHttpRequest self)))
 
foreign import javascript unsafe "$1[\"responseURL\"]"
        js_getResponseURL :: JSRef XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseURL Mozilla XMLHttpRequest.responseURL documentation> 
getResponseURL ::
               (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getResponseURL self
  = liftIO
      (fromJSString <$> (js_getResponseURL (unXMLHttpRequest self)))
#else
module GHCJS.DOM.XMLHttpRequest (
  ) where
#endif
