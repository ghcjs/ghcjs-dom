{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XMLHttpRequest
       (js_newXMLHttpRequest, newXMLHttpRequest, js_openSimple,
        openSimple, js_open, open, js_setRequestHeader, setRequestHeader,
        js_send, send, js_abort, abort, js_getResponseHeader,
        getResponseHeader, getResponseHeader_, getResponseHeaderUnsafe,
        getResponseHeaderUnchecked, js_getAllResponseHeaders,
        getAllResponseHeaders, getAllResponseHeaders_, js_overrideMimeType,
        overrideMimeType, pattern UNSENT, pattern OPENED,
        pattern HEADERS_RECEIVED, pattern LOADING, pattern DONE,
        readyStateChange, js_getReadyState, getReadyState, js_setTimeout,
        setTimeout, js_getTimeout, getTimeout, js_setWithCredentials,
        setWithCredentials, js_getWithCredentials, getWithCredentials,
        js_getUpload, getUpload, js_getResponseURL, getResponseURL,
        js_getStatus, getStatus, js_getStatusText, getStatusText,
        js_setResponseType, setResponseType, js_getResponseType,
        getResponseType, js_getResponse, getResponse, js_getResponseText,
        getResponseText, getResponseTextUnsafe, getResponseTextUnchecked,
        js_getResponseXML, getResponseXML, getResponseXMLUnsafe,
        getResponseXMLUnchecked, XMLHttpRequest(..), gTypeXMLHttpRequest)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "new window[\"XMLHttpRequest\"]()"
        js_newXMLHttpRequest :: IO XMLHttpRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation> 
newXMLHttpRequest :: (MonadIO m) => m XMLHttpRequest
newXMLHttpRequest = liftIO (js_newXMLHttpRequest)
 
foreign import javascript safe "$1[\"open\"]($2, $3)" js_openSimple
        :: XMLHttpRequest -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
openSimple ::
           (MonadIO m, ToJSString method, ToJSString url) =>
             XMLHttpRequest -> method -> url -> m ()
openSimple self method url
  = liftIO (js_openSimple self (toJSString method) (toJSString url))
 
foreign import javascript safe "$1[\"open\"]($2, $3, $4, $5, $6)"
        js_open ::
        XMLHttpRequest ->
          JSString ->
            JSString -> Bool -> Optional JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.open Mozilla XMLHttpRequest.open documentation> 
open ::
     (MonadIO m, ToJSString method, ToJSString url, ToJSString user,
      ToJSString password) =>
       XMLHttpRequest ->
         method -> url -> Bool -> Maybe user -> Maybe password -> m ()
open self method url async user password
  = liftIO
      (js_open self (toJSString method) (toJSString url) async
         (toOptionalJSString user)
         (toOptionalJSString password))
 
foreign import javascript safe "$1[\"setRequestHeader\"]($2, $3)"
        js_setRequestHeader ::
        XMLHttpRequest -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.setRequestHeader Mozilla XMLHttpRequest.setRequestHeader documentation> 
setRequestHeader ::
                 (MonadIO m, ToJSString header, ToJSString value) =>
                   XMLHttpRequest -> header -> value -> m ()
setRequestHeader self header value
  = liftIO
      (js_setRequestHeader self (toJSString header) (toJSString value))
 
foreign import javascript safe "$1[\"send\"]($2)" js_send ::
        XMLHttpRequest -> Optional XMLHttpRequestBody -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.send Mozilla XMLHttpRequest.send documentation> 
send ::
     (MonadIO m, IsXMLHttpRequestBody body) =>
       XMLHttpRequest -> Maybe body -> m ()
send self body
  = liftIO
      (mapM toJSVal body >>=
         \ body' ->
           js_send self (maybeToOptional (fmap XMLHttpRequestBody body')))
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        XMLHttpRequest -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.abort Mozilla XMLHttpRequest.abort documentation> 
abort :: (MonadIO m) => XMLHttpRequest -> m ()
abort self = liftIO (js_abort self)
 
foreign import javascript unsafe "$1[\"getResponseHeader\"]($2)"
        js_getResponseHeader ::
        XMLHttpRequest -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeader ::
                  (MonadIO m, ToJSString name, FromJSString result) =>
                    XMLHttpRequest -> name -> m (Maybe result)
getResponseHeader self name
  = liftIO
      (fromMaybeJSString <$>
         (js_getResponseHeader self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeader_ ::
                   (MonadIO m, ToJSString name) => XMLHttpRequest -> name -> m ()
getResponseHeader_ self name
  = liftIO (void (js_getResponseHeader self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeaderUnsafe ::
                        (MonadIO m, ToJSString name, HasCallStack, FromJSString result) =>
                          XMLHttpRequest -> name -> m result
getResponseHeaderUnsafe self name
  = liftIO
      ((fromMaybeJSString <$>
          (js_getResponseHeader self (toJSString name)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getResponseHeader Mozilla XMLHttpRequest.getResponseHeader documentation> 
getResponseHeaderUnchecked ::
                           (MonadIO m, ToJSString name, FromJSString result) =>
                             XMLHttpRequest -> name -> m result
getResponseHeaderUnchecked self name
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getResponseHeader self (toJSString name)))
 
foreign import javascript unsafe "$1[\"getAllResponseHeaders\"]()"
        js_getAllResponseHeaders :: XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeaders ::
                      (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getAllResponseHeaders self
  = liftIO (fromJSString <$> (js_getAllResponseHeaders self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.getAllResponseHeaders Mozilla XMLHttpRequest.getAllResponseHeaders documentation> 
getAllResponseHeaders_ :: (MonadIO m) => XMLHttpRequest -> m ()
getAllResponseHeaders_ self
  = liftIO (void (js_getAllResponseHeaders self))
 
foreign import javascript safe "$1[\"overrideMimeType\"]($2)"
        js_overrideMimeType :: XMLHttpRequest -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.overrideMimeType Mozilla XMLHttpRequest.overrideMimeType documentation> 
overrideMimeType ::
                 (MonadIO m, ToJSString mime) => XMLHttpRequest -> mime -> m ()
overrideMimeType self mime
  = liftIO (js_overrideMimeType self (toJSString mime))
pattern UNSENT = 0
pattern OPENED = 1
pattern HEADERS_RECEIVED = 2
pattern LOADING = 3
pattern DONE = 4

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.onreadystatechange Mozilla XMLHttpRequest.onreadystatechange documentation> 
readyStateChange :: EventName XMLHttpRequest Event
readyStateChange
  = unsafeEventNameAsync (toJSString "readystatechange")
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.readyState Mozilla XMLHttpRequest.readyState documentation> 
getReadyState :: (MonadIO m) => XMLHttpRequest -> m Word
getReadyState self = liftIO (js_getReadyState self)
 
foreign import javascript safe "$1[\"timeout\"] = $2;"
        js_setTimeout :: XMLHttpRequest -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
setTimeout :: (MonadIO m) => XMLHttpRequest -> Word -> m ()
setTimeout self val = liftIO (js_setTimeout self val)
 
foreign import javascript unsafe "$1[\"timeout\"]" js_getTimeout ::
        XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.timeout Mozilla XMLHttpRequest.timeout documentation> 
getTimeout :: (MonadIO m) => XMLHttpRequest -> m Word
getTimeout self = liftIO (js_getTimeout self)
 
foreign import javascript safe "$1[\"withCredentials\"] = $2;"
        js_setWithCredentials :: XMLHttpRequest -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
setWithCredentials :: (MonadIO m) => XMLHttpRequest -> Bool -> m ()
setWithCredentials self val
  = liftIO (js_setWithCredentials self val)
 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)" js_getWithCredentials ::
        XMLHttpRequest -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.withCredentials Mozilla XMLHttpRequest.withCredentials documentation> 
getWithCredentials :: (MonadIO m) => XMLHttpRequest -> m Bool
getWithCredentials self = liftIO (js_getWithCredentials self)
 
foreign import javascript unsafe "$1[\"upload\"]" js_getUpload ::
        XMLHttpRequest -> IO XMLHttpRequestUpload

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.upload Mozilla XMLHttpRequest.upload documentation> 
getUpload ::
          (MonadIO m) => XMLHttpRequest -> m XMLHttpRequestUpload
getUpload self = liftIO (js_getUpload self)
 
foreign import javascript unsafe "$1[\"responseURL\"]"
        js_getResponseURL :: XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseURL Mozilla XMLHttpRequest.responseURL documentation> 
getResponseURL ::
               (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getResponseURL self
  = liftIO (fromJSString <$> (js_getResponseURL self))
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        XMLHttpRequest -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.status Mozilla XMLHttpRequest.status documentation> 
getStatus :: (MonadIO m) => XMLHttpRequest -> m Word
getStatus self = liftIO (js_getStatus self)
 
foreign import javascript unsafe "$1[\"statusText\"]"
        js_getStatusText :: XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.statusText Mozilla XMLHttpRequest.statusText documentation> 
getStatusText ::
              (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getStatusText self
  = liftIO (fromJSString <$> (js_getStatusText self))
 
foreign import javascript safe "$1[\"responseType\"] = $2;"
        js_setResponseType :: XMLHttpRequest -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
setResponseType ::
                (MonadIO m) => XMLHttpRequest -> XMLHttpRequestResponseType -> m ()
setResponseType self val
  = liftIO (js_setResponseType self (pToJSVal val))
 
foreign import javascript unsafe "$1[\"responseType\"]"
        js_getResponseType :: XMLHttpRequest -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseType Mozilla XMLHttpRequest.responseType documentation> 
getResponseType ::
                (MonadIO m) => XMLHttpRequest -> m XMLHttpRequestResponseType
getResponseType self
  = liftIO ((js_getResponseType self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"response\"]" js_getResponse
        :: XMLHttpRequest -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.response Mozilla XMLHttpRequest.response documentation> 
getResponse :: (MonadIO m) => XMLHttpRequest -> m JSVal
getResponse self = liftIO (js_getResponse self)
 
foreign import javascript safe "$1[\"responseText\"]"
        js_getResponseText :: XMLHttpRequest -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseText ::
                (MonadIO m, FromJSString result) =>
                  XMLHttpRequest -> m (Maybe result)
getResponseText self
  = liftIO (fromMaybeJSString <$> (js_getResponseText self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseTextUnsafe ::
                      (MonadIO m, HasCallStack, FromJSString result) =>
                        XMLHttpRequest -> m result
getResponseTextUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getResponseText self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseText Mozilla XMLHttpRequest.responseText documentation> 
getResponseTextUnchecked ::
                         (MonadIO m, FromJSString result) => XMLHttpRequest -> m result
getResponseTextUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getResponseText self))
 
foreign import javascript safe "$1[\"responseXML\"]"
        js_getResponseXML :: XMLHttpRequest -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
getResponseXML ::
               (MonadIO m) => XMLHttpRequest -> m (Maybe Document)
getResponseXML self
  = liftIO (nullableToMaybe <$> (js_getResponseXML self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
getResponseXMLUnsafe ::
                     (MonadIO m, HasCallStack) => XMLHttpRequest -> m Document
getResponseXMLUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getResponseXML self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest.responseXML Mozilla XMLHttpRequest.responseXML documentation> 
getResponseXMLUnchecked ::
                        (MonadIO m) => XMLHttpRequest -> m Document
getResponseXMLUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getResponseXML self))