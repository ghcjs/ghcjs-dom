{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeyError
       (pattern MEDIA_KEYERR_UNKNOWN, pattern MEDIA_KEYERR_CLIENT,
        pattern MEDIA_KEYERR_SERVICE, pattern MEDIA_KEYERR_OUTPUT,
        pattern MEDIA_KEYERR_HARDWARECHANGE, pattern MEDIA_KEYERR_DOMAIN,
        js_getCode, getCode, js_getSystemCode, getSystemCode,
        MediaKeyError, castToMediaKeyError, gTypeMediaKeyError)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern MEDIA_KEYERR_UNKNOWN = 1
pattern MEDIA_KEYERR_CLIENT = 2
pattern MEDIA_KEYERR_SERVICE = 3
pattern MEDIA_KEYERR_OUTPUT = 4
pattern MEDIA_KEYERR_HARDWARECHANGE = 5
pattern MEDIA_KEYERR_DOMAIN = 6
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        JSRef MediaKeyError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError.code Mozilla WebKitMediaKeyError.code documentation> 
getCode :: (MonadIO m) => MediaKeyError -> m Word
getCode self = liftIO (js_getCode (unMediaKeyError self))
 
foreign import javascript unsafe "$1[\"systemCode\"]"
        js_getSystemCode :: JSRef MediaKeyError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError.systemCode Mozilla WebKitMediaKeyError.systemCode documentation> 
getSystemCode :: (MonadIO m) => MediaKeyError -> m Word
getSystemCode self
  = liftIO (js_getSystemCode (unMediaKeyError self))
#else
module GHCJS.DOM.MediaKeyError (
  ) where
#endif
