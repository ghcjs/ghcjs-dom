{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeyEvent
       (js_getKeySystem, getKeySystem, js_getSessionId, getSessionId,
        js_getInitData, getInitData, js_getMessage, getMessage,
        js_getDefaultURL, getDefaultURL, js_getErrorCode, getErrorCode,
        js_getSystemCode, getSystemCode, MediaKeyEvent,
        castToMediaKeyEvent, gTypeMediaKeyEvent)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: JSRef MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.keySystem Mozilla MediaKeyEvent.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) => MediaKeyEvent -> m result
getKeySystem self
  = liftIO
      (fromJSString <$> (js_getKeySystem (unMediaKeyEvent self)))
 
foreign import javascript unsafe "$1[\"sessionId\"]"
        js_getSessionId :: JSRef MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.sessionId Mozilla MediaKeyEvent.sessionId documentation> 
getSessionId ::
             (MonadIO m, FromJSString result) => MediaKeyEvent -> m result
getSessionId self
  = liftIO
      (fromJSString <$> (js_getSessionId (unMediaKeyEvent self)))
 
foreign import javascript unsafe "$1[\"initData\"]" js_getInitData
        :: JSRef MediaKeyEvent -> IO (JSRef Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.initData Mozilla MediaKeyEvent.initData documentation> 
getInitData :: (MonadIO m) => MediaKeyEvent -> m (Maybe Uint8Array)
getInitData self
  = liftIO ((js_getInitData (unMediaKeyEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        JSRef MediaKeyEvent -> IO (JSRef Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.message Mozilla MediaKeyEvent.message documentation> 
getMessage :: (MonadIO m) => MediaKeyEvent -> m (Maybe Uint8Array)
getMessage self
  = liftIO ((js_getMessage (unMediaKeyEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"defaultURL\"]"
        js_getDefaultURL :: JSRef MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.defaultURL Mozilla MediaKeyEvent.defaultURL documentation> 
getDefaultURL ::
              (MonadIO m, FromJSString result) => MediaKeyEvent -> m result
getDefaultURL self
  = liftIO
      (fromJSString <$> (js_getDefaultURL (unMediaKeyEvent self)))
 
foreign import javascript unsafe "$1[\"errorCode\"]"
        js_getErrorCode :: JSRef MediaKeyEvent -> IO (JSRef MediaKeyError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.errorCode Mozilla MediaKeyEvent.errorCode documentation> 
getErrorCode ::
             (MonadIO m) => MediaKeyEvent -> m (Maybe MediaKeyError)
getErrorCode self
  = liftIO ((js_getErrorCode (unMediaKeyEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"systemCode\"]"
        js_getSystemCode :: JSRef MediaKeyEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.systemCode Mozilla MediaKeyEvent.systemCode documentation> 
getSystemCode :: (MonadIO m) => MediaKeyEvent -> m Word
getSystemCode self
  = liftIO (js_getSystemCode (unMediaKeyEvent self))
#else
module GHCJS.DOM.MediaKeyEvent (
  ) where
#endif
