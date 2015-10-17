{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.XMLHttpRequest
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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "new window[\"XMLHttpRequest\"]()"
        js_newXMLHttpRequest :: IO XMLHttpRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation> 
newXMLHttpRequest :: (MonadIO m) => m XMLHttpRequest
newXMLHttpRequest = liftIO (js_newXMLHttpRequest)
 
foreign import javascript unsafe "$1[\"open\"]($2, $3, $4, $5, $6)"
        js_open ::
        XMLHttpRequest ->
          JSString -> JSString -> Bool -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
open ::
     (MonadIO m, ToJSString method, ToJSString url, ToJSString user,
      ToJSString password) =>
       XMLHttpRequest -> method -> url -> Bool -> user -> password -> m ()
open self method url async user password
  = liftIO
      (js_open (self) (toJSString method) (toJSString url) async
         (toJSString user)
         (toJSString password))
 
foreign import javascript unsafe "$1[\"setRequestHeader\"]($2, $3)"
        js_setRequestHeader ::
        XMLHttpRequest -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.setRequestHeader Mozilla XMLHttpRequest.setRequestHeader documentation> 
setRequestHeader ::
                 (MonadIO m, ToJSString header, ToJSString value) =>
                   XMLHttpRequest -> header -> value -> m ()
setRequestHeader self header value
  = liftIO
      (js_setRequestHeader (self) (toJSString header) (toJSString value))
 
foreign import javascript unsafe "$1[\"send\"]()" js_send ::
        XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.send Mozilla XMLHttpRequest.send documentation> 
send :: (MonadIO m) => XMLHttpRequest -> m ()
send self = liftIO (js_send (self))
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.abort Mozilla XMLHttpRequest.abort documentation> 
abort :: (MonadIO m) => XMLHttpRequest -> m ()
abort self = liftIO (js_abort (self))
 
foreign import javascript unsafe "$1[\"getAllResponseHeaders\"]()"
        js_getAllResponseHeaders ::
        XMLHttpRequest -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeaders ::
                      (MonadIO m, FromJSString result) =>
                        XMLHttpRequest -> m (Maybe result)
getAllResponseHeaders self
  = liftIO (fromMaybeJSString <$> (js_getAllResponseHeaders (self)))
 
foreign import javascript unsafe "$1[\"getResponseHeader\"]($2)"
        js_getResponseHeader ::
        XMLHttpRequest -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeader ::
                  (MonadIO m, ToJSString header, FromJSString result) =>
                    XMLHttpRequest -> header -> m (Maybe result)
getResponseHeader self header
  = liftIO
      (fromMaybeJSString <$>
         (js_getResponseHeader (self) (toJSString header)))
 
foreign import javascript unsafe "$1[\"overrideMimeType\"]($2)"
        js_overrideMimeType :: XMLHttpRequest -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.overrideMimeType Mozilla XMLHttpRequest.overrideMimeType documentation> 
overrideMimeType ::
                 (MonadIO m, ToJSString override) =>
                   XMLHttpRequest -> override -> m ()
overrideMimeType self override
  = liftIO (js_overrideMimeType (self) (toJSString override))
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
        js_setTimeout :: XMLHttpRequest -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
setTimeout :: (MonadIO m) => XMLHttpRequest -> Word -> m ()
setTimeout self val = liftIO (js_setTimeout (self) val)
 
foreign import javascript unsafe "$1[\"timeout\"]" js_getTimeout ::
        XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
getTimeout :: (MonadIO m) => XMLHttpRequest -> m Word
getTimeout self = liftIO (js_getTimeout (self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.readyState Mozilla XMLHttpRequest.readyState documentation> 
getReadyState :: (MonadIO m) => XMLHttpRequest -> m Word
getReadyState self = liftIO (js_getReadyState (self))
 
foreign import javascript unsafe "$1[\"withCredentials\"] = $2;"
        js_setWithCredentials :: XMLHttpRequest -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
setWithCredentials :: (MonadIO m) => XMLHttpRequest -> Bool -> m ()
setWithCredentials self val
  = liftIO (js_setWithCredentials (self) val)
 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)" js_getWithCredentials ::
        XMLHttpRequest -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
getWithCredentials :: (MonadIO m) => XMLHttpRequest -> m Bool
getWithCredentials self = liftIO (js_getWithCredentials (self))
 
foreign import javascript unsafe "$1[\"upload\"]" js_getUpload ::
        XMLHttpRequest -> IO (Nullable XMLHttpRequestUpload)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.upload Mozilla XMLHttpRequest.upload documentation> 
getUpload ::
          (MonadIO m) => XMLHttpRequest -> m (Maybe XMLHttpRequestUpload)
getUpload self = liftIO (nullableToMaybe <$> (js_getUpload (self)))
 
foreign import javascript unsafe "$1[\"responseText\"]"
        js_getResponseText :: XMLHttpRequest -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseText ::
                (MonadIO m, FromJSString result) =>
                  XMLHttpRequest -> m (Maybe result)
getResponseText self
  = liftIO (fromMaybeJSString <$> (js_getResponseText (self)))
 
foreign import javascript unsafe "$1[\"responseXML\"]"
        js_getResponseXML :: XMLHttpRequest -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
getResponseXML ::
               (MonadIO m) => XMLHttpRequest -> m (Maybe Document)
getResponseXML self
  = liftIO (nullableToMaybe <$> (js_getResponseXML (self)))
 
foreign import javascript unsafe "$1[\"responseType\"] = $2;"
        js_setResponseType :: XMLHttpRequest -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
setResponseType ::
                (MonadIO m) => XMLHttpRequest -> XMLHttpRequestResponseType -> m ()
setResponseType self val
  = liftIO (js_setResponseType (self) (pToJSVal val))
 
foreign import javascript unsafe "$1[\"responseType\"]"
        js_getResponseType :: XMLHttpRequest -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
getResponseType ::
                (MonadIO m) => XMLHttpRequest -> m XMLHttpRequestResponseType
getResponseType self
  = liftIO ((js_getResponseType (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"response\"]" js_getResponse
        :: XMLHttpRequest -> IO (Nullable GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.response Mozilla XMLHttpRequest.response documentation> 
getResponse :: (MonadIO m) => XMLHttpRequest -> m (Maybe GObject)
getResponse self
  = liftIO (nullableToMaybe <$> (js_getResponse (self)))
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.status Mozilla XMLHttpRequest.status documentation> 
getStatus :: (MonadIO m) => XMLHttpRequest -> m Word
getStatus self = liftIO (js_getStatus (self))
 
foreign import javascript unsafe "$1[\"statusText\"]"
        js_getStatusText :: XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.statusText Mozilla XMLHttpRequest.statusText documentation> 
getStatusText ::
              (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getStatusText self
  = liftIO (fromJSString <$> (js_getStatusText (self)))
 
foreign import javascript unsafe "$1[\"responseURL\"]"
        js_getResponseURL :: XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseURL Mozilla XMLHttpRequest.responseURL documentation> 
getResponseURL ::
               (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getResponseURL self
  = liftIO (fromJSString <$> (js_getResponseURL (self)))