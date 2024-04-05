{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeySession
       (js_generateRequest, generateRequest, js_load, load, load_,
        js_update, update, js_close, close, js_remove, remove,
        js_getSessionId, getSessionId, js_getExpiration, getExpiration,
        js_getClosed, getClosed, js_getKeyStatuses, getKeyStatuses,
        keystatuseschange, message, MediaKeySession(..),
        gTypeMediaKeySession)
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
 
foreign import javascript interruptible
        "$1[\"generateRequest\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_generateRequest ::
        MediaKeySession -> JSString -> BufferSource -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.generateRequest Mozilla WebKitMediaKeySession.generateRequest documentation> 
generateRequest ::
                (MonadIO m, ToJSString initDataType, IsBufferSource initData) =>
                  MediaKeySession -> initDataType -> initData -> m ()
generateRequest self initDataType initData
  = liftIO
      ((js_generateRequest self (toJSString initDataType)
          (toBufferSource initData))
         >>= maybeThrowPromiseRejected)
 
foreign import javascript interruptible
        "$1[\"load\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_load :: MediaKeySession -> JSString -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.load Mozilla WebKitMediaKeySession.load documentation> 
load ::
     (MonadIO m, ToJSString sessionId) =>
       MediaKeySession -> sessionId -> m Bool
load self sessionId
  = liftIO
      ((js_load self (toJSString sessionId)) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.load Mozilla WebKitMediaKeySession.load documentation> 
load_ ::
      (MonadIO m, ToJSString sessionId) =>
        MediaKeySession -> sessionId -> m ()
load_ self sessionId
  = liftIO (void (js_load self (toJSString sessionId)))
 
foreign import javascript interruptible
        "$1[\"update\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_update :: MediaKeySession -> BufferSource -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.update Mozilla WebKitMediaKeySession.update documentation> 
update ::
       (MonadIO m, IsBufferSource response) =>
         MediaKeySession -> response -> m ()
update self response
  = liftIO
      ((js_update self (toBufferSource response)) >>=
         maybeThrowPromiseRejected)
 
foreign import javascript interruptible
        "$1[\"close\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_close :: MediaKeySession -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.close Mozilla WebKitMediaKeySession.close documentation> 
close :: (MonadIO m) => MediaKeySession -> m ()
close self = liftIO ((js_close self) >>= maybeThrowPromiseRejected)
 
foreign import javascript interruptible
        "$1[\"remove\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_remove :: MediaKeySession -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.remove Mozilla WebKitMediaKeySession.remove documentation> 
remove :: (MonadIO m) => MediaKeySession -> m ()
remove self
  = liftIO ((js_remove self) >>= maybeThrowPromiseRejected)
 
foreign import javascript unsafe "$1[\"sessionId\"]"
        js_getSessionId :: MediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.sessionId Mozilla WebKitMediaKeySession.sessionId documentation> 
getSessionId ::
             (MonadIO m, FromJSString result) => MediaKeySession -> m result
getSessionId self
  = liftIO (fromJSString <$> (js_getSessionId self))
 
foreign import javascript unsafe "$1[\"expiration\"]"
        js_getExpiration :: MediaKeySession -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.expiration Mozilla WebKitMediaKeySession.expiration documentation> 
getExpiration :: (MonadIO m) => MediaKeySession -> m Double
getExpiration self = liftIO (js_getExpiration self)
 
foreign import javascript interruptible
        "$1[\"closed\"].then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getClosed :: MediaKeySession -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.closed Mozilla WebKitMediaKeySession.closed documentation> 
getClosed :: (MonadIO m) => MediaKeySession -> m ()
getClosed self
  = liftIO ((js_getClosed self) >>= maybeThrowPromiseRejected)
 
foreign import javascript unsafe "$1[\"keyStatuses\"]"
        js_getKeyStatuses :: MediaKeySession -> IO MediaKeyStatusMap

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.keyStatuses Mozilla WebKitMediaKeySession.keyStatuses documentation> 
getKeyStatuses ::
               (MonadIO m) => MediaKeySession -> m MediaKeyStatusMap
getKeyStatuses self = liftIO (js_getKeyStatuses self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onkeystatuseschange Mozilla WebKitMediaKeySession.onkeystatuseschange documentation> 
keystatuseschange :: EventName MediaKeySession onkeystatuseschange
keystatuseschange
  = unsafeEventName (toJSString "keystatuseschange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onmessage Mozilla WebKitMediaKeySession.onmessage documentation> 
message :: EventName MediaKeySession MessageEvent
message = unsafeEventNameAsync (toJSString "message")