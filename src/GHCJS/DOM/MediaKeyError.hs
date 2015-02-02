{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeyError
       (cMEDIA_KEYERR_UNKNOWN, cMEDIA_KEYERR_CLIENT,
        cMEDIA_KEYERR_SERVICE, cMEDIA_KEYERR_OUTPUT,
        cMEDIA_KEYERR_HARDWARECHANGE, cMEDIA_KEYERR_DOMAIN,
        ghcjs_dom_media_key_error_get_code, mediaKeyErrorGetCode,
        ghcjs_dom_media_key_error_get_system_code,
        mediaKeyErrorGetSystemCode, MediaKeyError, IsMediaKeyError,
        castToMediaKeyError, gTypeMediaKeyError, toMediaKeyError)
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

cMEDIA_KEYERR_UNKNOWN = 1
cMEDIA_KEYERR_CLIENT = 2
cMEDIA_KEYERR_SERVICE = 3
cMEDIA_KEYERR_OUTPUT = 4
cMEDIA_KEYERR_HARDWARECHANGE = 5
cMEDIA_KEYERR_DOMAIN = 6
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_media_key_error_get_code ::
        JSRef MediaKeyError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError.code Mozilla WebKitMediaKeyError.code documentation> 
mediaKeyErrorGetCode :: (IsMediaKeyError self) => self -> IO Word
mediaKeyErrorGetCode self
  = ghcjs_dom_media_key_error_get_code
      (unMediaKeyError (toMediaKeyError self))
 
foreign import javascript unsafe "$1[\"systemCode\"]"
        ghcjs_dom_media_key_error_get_system_code ::
        JSRef MediaKeyError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError.systemCode Mozilla WebKitMediaKeyError.systemCode documentation> 
mediaKeyErrorGetSystemCode ::
                           (IsMediaKeyError self) => self -> IO Word
mediaKeyErrorGetSystemCode self
  = ghcjs_dom_media_key_error_get_system_code
      (unMediaKeyError (toMediaKeyError self))
#else
module GHCJS.DOM.MediaKeyError (
  ) where
#endif
