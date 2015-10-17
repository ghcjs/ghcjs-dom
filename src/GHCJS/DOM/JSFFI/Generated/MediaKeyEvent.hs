{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeyEvent
       (js_getKeySystem, getKeySystem, js_getSessionId, getSessionId,
        js_getInitData, getInitData, js_getMessage, getMessage,
        js_getDefaultURL, getDefaultURL, js_getErrorCode, getErrorCode,
        js_getSystemCode, getSystemCode, MediaKeyEvent,
        castToMediaKeyEvent, gTypeMediaKeyEvent)
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
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.keySystem Mozilla MediaKeyEvent.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) => MediaKeyEvent -> m result
getKeySystem self
  = liftIO (fromJSString <$> (js_getKeySystem (self)))
 
foreign import javascript unsafe "$1[\"sessionId\"]"
        js_getSessionId :: MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.sessionId Mozilla MediaKeyEvent.sessionId documentation> 
getSessionId ::
             (MonadIO m, FromJSString result) => MediaKeyEvent -> m result
getSessionId self
  = liftIO (fromJSString <$> (js_getSessionId (self)))
 
foreign import javascript unsafe "$1[\"initData\"]" js_getInitData
        :: MediaKeyEvent -> IO (Nullable Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.initData Mozilla MediaKeyEvent.initData documentation> 
getInitData :: (MonadIO m) => MediaKeyEvent -> m (Maybe Uint8Array)
getInitData self
  = liftIO (nullableToMaybe <$> (js_getInitData (self)))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        MediaKeyEvent -> IO (Nullable Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.message Mozilla MediaKeyEvent.message documentation> 
getMessage :: (MonadIO m) => MediaKeyEvent -> m (Maybe Uint8Array)
getMessage self
  = liftIO (nullableToMaybe <$> (js_getMessage (self)))
 
foreign import javascript unsafe "$1[\"defaultURL\"]"
        js_getDefaultURL :: MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.defaultURL Mozilla MediaKeyEvent.defaultURL documentation> 
getDefaultURL ::
              (MonadIO m, FromJSString result) => MediaKeyEvent -> m result
getDefaultURL self
  = liftIO (fromJSString <$> (js_getDefaultURL (self)))
 
foreign import javascript unsafe "$1[\"errorCode\"]"
        js_getErrorCode :: MediaKeyEvent -> IO (Nullable MediaKeyError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.errorCode Mozilla MediaKeyEvent.errorCode documentation> 
getErrorCode ::
             (MonadIO m) => MediaKeyEvent -> m (Maybe MediaKeyError)
getErrorCode self
  = liftIO (nullableToMaybe <$> (js_getErrorCode (self)))
 
foreign import javascript unsafe "$1[\"systemCode\"]"
        js_getSystemCode :: MediaKeyEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.systemCode Mozilla MediaKeyEvent.systemCode documentation> 
getSystemCode :: (MonadIO m) => MediaKeyEvent -> m Word
getSystemCode self = liftIO (js_getSystemCode (self))