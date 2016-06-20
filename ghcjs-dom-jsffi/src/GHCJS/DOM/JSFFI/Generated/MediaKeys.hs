{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeys
       (js_newMediaKeys, newMediaKeys, js_createSession, createSession,
        js_isTypeSupported, isTypeSupported, js_getKeySystem, getKeySystem,
        MediaKeys, castToMediaKeys, gTypeMediaKeys)
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
 
foreign import javascript unsafe
        "new window[\"WebKitMediaKeys\"]($1)" js_newMediaKeys ::
        JSString -> IO MediaKeys

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation> 
newMediaKeys ::
             (MonadIO m, ToJSString keySystem) => keySystem -> m MediaKeys
newMediaKeys keySystem
  = liftIO (js_newMediaKeys (toJSString keySystem))
 
foreign import javascript unsafe "$1[\"createSession\"]($2, $3)"
        js_createSession ::
        MediaKeys ->
          JSString -> Nullable Uint8Array -> IO (Nullable MediaKeySession)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession ::
              (MonadIO m, ToJSString type', IsUint8Array initData) =>
                MediaKeys -> type' -> Maybe initData -> m (Maybe MediaKeySession)
createSession self type' initData
  = liftIO
      (nullableToMaybe <$>
         (js_createSession (self) (toJSString type')
            (maybeToNullable (fmap toUint8Array initData))))
 
foreign import javascript unsafe
        "($1[\"isTypeSupported\"]($2,\n$3) ? 1 : 0)" js_isTypeSupported ::
        MediaKeys -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
isTypeSupported ::
                (MonadIO m, ToJSString keySystem, ToJSString type') =>
                  MediaKeys -> keySystem -> type' -> m Bool
isTypeSupported self keySystem type'
  = liftIO
      (js_isTypeSupported (self) (toJSString keySystem)
         (toJSString type'))
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: MediaKeys -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.keySystem Mozilla WebKitMediaKeys.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) => MediaKeys -> m result
getKeySystem self
  = liftIO (fromJSString <$> (js_getKeySystem (self)))