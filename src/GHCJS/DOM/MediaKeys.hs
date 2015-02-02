{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeys
       (ghcjs_dom_media_keys_new, mediaKeysNew,
        ghcjs_dom_media_keys_create_session, mediaKeysCreateSession,
        ghcjs_dom_media_keys_is_type_supported, mediaKeysIsTypeSupported,
        ghcjs_dom_media_keys_get_key_system, mediaKeysGetKeySystem,
        MediaKeys, IsMediaKeys, castToMediaKeys, gTypeMediaKeys,
        toMediaKeys)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"WebKitMediaKeys\"]($1)" ghcjs_dom_media_keys_new ::
        JSString -> IO (JSRef MediaKeys)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation> 
mediaKeysNew :: (ToJSString keySystem) => keySystem -> IO MediaKeys
mediaKeysNew keySystem
  = ghcjs_dom_media_keys_new (toJSString keySystem) >>=
      fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"createSession\"]($2, $3)"
        ghcjs_dom_media_keys_create_session ::
        JSRef MediaKeys ->
          JSString -> JSRef Uint8Array -> IO (JSRef MediaKeySession)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
mediaKeysCreateSession ::
                       (IsMediaKeys self, ToJSString type', IsUint8Array initData) =>
                         self -> type' -> Maybe initData -> IO (Maybe MediaKeySession)
mediaKeysCreateSession self type' initData
  = (ghcjs_dom_media_keys_create_session
       (unMediaKeys (toMediaKeys self))
       (toJSString type')
       (maybe jsNull (unUint8Array . toUint8Array) initData))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"isTypeSupported\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_media_keys_is_type_supported ::
        JSRef MediaKeys -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
mediaKeysIsTypeSupported ::
                         (IsMediaKeys self, ToJSString keySystem, ToJSString type') =>
                           self -> keySystem -> type' -> IO Bool
mediaKeysIsTypeSupported self keySystem type'
  = ghcjs_dom_media_keys_is_type_supported
      (unMediaKeys (toMediaKeys self))
      (toJSString keySystem)
      (toJSString type')
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        ghcjs_dom_media_keys_get_key_system ::
        JSRef MediaKeys -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.keySystem Mozilla WebKitMediaKeys.keySystem documentation> 
mediaKeysGetKeySystem ::
                      (IsMediaKeys self, FromJSString result) => self -> IO result
mediaKeysGetKeySystem self
  = fromJSString <$>
      (ghcjs_dom_media_keys_get_key_system
         (unMediaKeys (toMediaKeys self)))
#else
module GHCJS.DOM.MediaKeys (
  ) where
#endif
