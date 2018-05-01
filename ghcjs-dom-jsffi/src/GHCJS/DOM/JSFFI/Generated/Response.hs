{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Response
       (js_error, error, error_, js_redirect, redirect, redirect_,
        js_arrayBuffer, arrayBuffer, arrayBuffer_, js_blob, blob, blob_,
        js_formData, formData, formData_, js_json, json, json_, js_text,
        text, text_, js_clone, clone, clone_, js_getType, getType,
        js_getUrl, getUrl, js_getRedirected, getRedirected, js_getStatus,
        getStatus, js_getOk, getOk, js_getStatusText, getStatusText,
        js_getHeaders, getHeaders, js_getBody, getBody, getBodyUnsafe,
        getBodyUnchecked, js_getBodyUsed, getBodyUsed, Response(..),
        gTypeResponse)
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
 
foreign import javascript unsafe
        "window[\"Response\"][\"error\"]()" js_error :: IO Response

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.error Mozilla Response.error documentation> 
error :: (MonadIO m) => m Response
error = liftIO (js_error)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.error Mozilla Response.error documentation> 
error_ :: (MonadIO m) => m ()
error_ = liftIO (void (js_error))
 
foreign import javascript safe
        "window[\"Response\"][\"redirect\"]($1,\n$2)" js_redirect ::
        JSString -> Optional Word -> IO Response

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.redirect Mozilla Response.redirect documentation> 
redirect ::
         (MonadIO m, ToJSString url) => url -> Maybe Word -> m Response
redirect url status
  = liftIO (js_redirect (toJSString url) (maybeToOptional status))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.redirect Mozilla Response.redirect documentation> 
redirect_ ::
          (MonadIO m, ToJSString url) => url -> Maybe Word -> m ()
redirect_ url status
  = liftIO
      (void (js_redirect (toJSString url) (maybeToOptional status)))
 
foreign import javascript interruptible
        "$1[\"arrayBuffer\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_arrayBuffer :: Response -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.arrayBuffer Mozilla Response.arrayBuffer documentation> 
arrayBuffer :: (MonadIO m) => Response -> m ArrayBuffer
arrayBuffer self
  = liftIO ((js_arrayBuffer self) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.arrayBuffer Mozilla Response.arrayBuffer documentation> 
arrayBuffer_ :: (MonadIO m) => Response -> m ()
arrayBuffer_ self = liftIO (void (js_arrayBuffer self))
 
foreign import javascript interruptible
        "$1[\"blob\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_blob :: Response -> IO (JSVal, Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.blob Mozilla Response.blob documentation> 
blob :: (MonadIO m) => Response -> m Blob
blob self = liftIO ((js_blob self) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.blob Mozilla Response.blob documentation> 
blob_ :: (MonadIO m) => Response -> m ()
blob_ self = liftIO (void (js_blob self))
 
foreign import javascript interruptible
        "$1[\"formData\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_formData :: Response -> IO (JSVal, Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.formData Mozilla Response.formData documentation> 
formData :: (MonadIO m) => Response -> m Blob
formData self = liftIO ((js_formData self) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.formData Mozilla Response.formData documentation> 
formData_ :: (MonadIO m) => Response -> m ()
formData_ self = liftIO (void (js_formData self))
 
foreign import javascript interruptible
        "$1[\"json\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_json :: Response -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.json Mozilla Response.json documentation> 
json :: (MonadIO m) => Response -> m JSVal
json self = liftIO ((js_json self) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.json Mozilla Response.json documentation> 
json_ :: (MonadIO m) => Response -> m ()
json_ self = liftIO (void (js_json self))
 
foreign import javascript interruptible
        "$1[\"text\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_text :: Response -> IO (JSVal, JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.text Mozilla Response.text documentation> 
text :: (MonadIO m, FromJSString result) => Response -> m result
text self
  = liftIO (fromJSString <$> ((js_text self) >>= checkPromiseResult))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.text Mozilla Response.text documentation> 
text_ :: (MonadIO m) => Response -> m ()
text_ self = liftIO (void (js_text self))
 
foreign import javascript unsafe "$1[\"clone\"]()" js_clone ::
        Response -> IO Response

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.clone Mozilla Response.clone documentation> 
clone :: (MonadIO m) => Response -> m Response
clone self = liftIO (js_clone self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.clone Mozilla Response.clone documentation> 
clone_ :: (MonadIO m) => Response -> m ()
clone_ self = liftIO (void (js_clone self))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        Response -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.type Mozilla Response.type documentation> 
getType :: (MonadIO m) => Response -> m ResponseType
getType self = liftIO ((js_getType self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        Response -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.url Mozilla Response.url documentation> 
getUrl :: (MonadIO m, FromJSString result) => Response -> m result
getUrl self = liftIO (fromJSString <$> (js_getUrl self))
 
foreign import javascript unsafe "($1[\"redirected\"] ? 1 : 0)"
        js_getRedirected :: Response -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.redirected Mozilla Response.redirected documentation> 
getRedirected :: (MonadIO m) => Response -> m Bool
getRedirected self = liftIO (js_getRedirected self)
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        Response -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.status Mozilla Response.status documentation> 
getStatus :: (MonadIO m) => Response -> m Word
getStatus self = liftIO (js_getStatus self)
 
foreign import javascript unsafe "($1[\"ok\"] ? 1 : 0)" js_getOk ::
        Response -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.ok Mozilla Response.ok documentation> 
getOk :: (MonadIO m) => Response -> m Bool
getOk self = liftIO (js_getOk self)
 
foreign import javascript unsafe "$1[\"statusText\"]"
        js_getStatusText :: Response -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.statusText Mozilla Response.statusText documentation> 
getStatusText ::
              (MonadIO m, FromJSString result) => Response -> m result
getStatusText self
  = liftIO (fromJSString <$> (js_getStatusText self))
 
foreign import javascript unsafe "$1[\"headers\"]" js_getHeaders ::
        Response -> IO Headers

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.headers Mozilla Response.headers documentation> 
getHeaders :: (MonadIO m) => Response -> m Headers
getHeaders self = liftIO (js_getHeaders self)
 
foreign import javascript unsafe "$1[\"body\"]" js_getBody ::
        Response -> IO (Nullable ReadableStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.body Mozilla Response.body documentation> 
getBody :: (MonadIO m) => Response -> m (Maybe ReadableStream)
getBody self = liftIO (nullableToMaybe <$> (js_getBody self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.body Mozilla Response.body documentation> 
getBodyUnsafe ::
              (MonadIO m, HasCallStack) => Response -> m ReadableStream
getBodyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBody self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.body Mozilla Response.body documentation> 
getBodyUnchecked :: (MonadIO m) => Response -> m ReadableStream
getBodyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBody self))
 
foreign import javascript unsafe "($1[\"bodyUsed\"] ? 1 : 0)"
        js_getBodyUsed :: Response -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Response.bodyUsed Mozilla Response.bodyUsed documentation> 
getBodyUsed :: (MonadIO m) => Response -> m Bool
getBodyUsed self = liftIO (js_getBodyUsed self)