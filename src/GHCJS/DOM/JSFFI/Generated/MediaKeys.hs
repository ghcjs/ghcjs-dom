{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeys
       (js_newMediaKeys, newMediaKeys, js_createSession, createSession,
        js_isTypeSupported, isTypeSupported, js_getKeySystem, getKeySystem,
        MediaKeys, castToMediaKeys, gTypeMediaKeys)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "new window[\"WebKitMediaKeys\"]($1)" js_newMediaKeys ::
        JSString -> IO (JSRef MediaKeys)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation> 
newMediaKeys ::
             (MonadIO m, ToJSString keySystem) => keySystem -> m MediaKeys
newMediaKeys keySystem
  = liftIO
      (js_newMediaKeys (toJSString keySystem) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createSession\"]($2, $3)"
        js_createSession ::
        JSRef MediaKeys ->
          JSString -> JSRef Uint8Array -> IO (JSRef MediaKeySession)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession ::
              (MonadIO m, ToJSString type', IsUint8Array initData) =>
                MediaKeys -> type' -> Maybe initData -> m (Maybe MediaKeySession)
createSession self type' initData
  = liftIO
      ((js_createSession (unMediaKeys self) (toJSString type')
          (maybe jsNull (unUint8Array . toUint8Array) initData))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"isTypeSupported\"]($2,\n$3) ? 1 : 0)" js_isTypeSupported ::
        JSRef MediaKeys -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
isTypeSupported ::
                (MonadIO m, ToJSString keySystem, ToJSString type') =>
                  MediaKeys -> keySystem -> type' -> m Bool
isTypeSupported self keySystem type'
  = liftIO
      (js_isTypeSupported (unMediaKeys self) (toJSString keySystem)
         (toJSString type'))
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: JSRef MediaKeys -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.keySystem Mozilla WebKitMediaKeys.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) => MediaKeys -> m result
getKeySystem self
  = liftIO (fromJSString <$> (js_getKeySystem (unMediaKeys self)))