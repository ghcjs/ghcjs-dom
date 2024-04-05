{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitMediaKeySession
       (js_update, update, js_close, close, js_getError, getError,
        js_getKeySystem, getKeySystem, js_getSessionId, getSessionId,
        webKitKeyAdded, webKitKeyError, webKitKeyMessage,
        WebKitMediaKeySession(..), gTypeWebKitMediaKeySession)
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
 
foreign import javascript safe "$1[\"update\"]($2)" js_update ::
        WebKitMediaKeySession -> Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.update Mozilla WebKitMediaKeySession.update documentation> 
update ::
       (MonadIO m, IsUint8Array key) =>
         WebKitMediaKeySession -> key -> m ()
update self key = liftIO (js_update self (toUint8Array key))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        WebKitMediaKeySession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.close Mozilla WebKitMediaKeySession.close documentation> 
close :: (MonadIO m) => WebKitMediaKeySession -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        WebKitMediaKeySession -> IO WebKitMediaKeyError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.error Mozilla WebKitMediaKeySession.error documentation> 
getError ::
         (MonadIO m) => WebKitMediaKeySession -> m WebKitMediaKeyError
getError self = liftIO (js_getError self)
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: WebKitMediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.keySystem Mozilla WebKitMediaKeySession.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) =>
               WebKitMediaKeySession -> m result
getKeySystem self
  = liftIO (fromJSString <$> (js_getKeySystem self))
 
foreign import javascript unsafe "$1[\"sessionId\"]"
        js_getSessionId :: WebKitMediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.sessionId Mozilla WebKitMediaKeySession.sessionId documentation> 
getSessionId ::
             (MonadIO m, FromJSString result) =>
               WebKitMediaKeySession -> m result
getSessionId self
  = liftIO (fromJSString <$> (js_getSessionId self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeyadded Mozilla WebKitMediaKeySession.onwebkitkeyadded documentation> 
webKitKeyAdded :: EventName WebKitMediaKeySession Event
webKitKeyAdded = unsafeEventName (toJSString "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeyerror Mozilla WebKitMediaKeySession.onwebkitkeyerror documentation> 
webKitKeyError :: EventName WebKitMediaKeySession Event
webKitKeyError = unsafeEventName (toJSString "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeymessage Mozilla WebKitMediaKeySession.onwebkitkeymessage documentation> 
webKitKeyMessage :: EventName WebKitMediaKeySession Event
webKitKeyMessage = unsafeEventName (toJSString "webkitkeymessage")