{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitMediaKeyError
       (pattern MEDIA_KEYERR_UNKNOWN, pattern MEDIA_KEYERR_CLIENT,
        pattern MEDIA_KEYERR_SERVICE, pattern MEDIA_KEYERR_OUTPUT,
        pattern MEDIA_KEYERR_HARDWARECHANGE, pattern MEDIA_KEYERR_DOMAIN,
        js_getCode, getCode, js_getSystemCode, getSystemCode,
        WebKitMediaKeyError(..), gTypeWebKitMediaKeyError)
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
pattern MEDIA_KEYERR_UNKNOWN = 1
pattern MEDIA_KEYERR_CLIENT = 2
pattern MEDIA_KEYERR_SERVICE = 3
pattern MEDIA_KEYERR_OUTPUT = 4
pattern MEDIA_KEYERR_HARDWARECHANGE = 5
pattern MEDIA_KEYERR_DOMAIN = 6
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        WebKitMediaKeyError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError.code Mozilla WebKitMediaKeyError.code documentation> 
getCode :: (MonadIO m) => WebKitMediaKeyError -> m Word
getCode self = liftIO (js_getCode self)
 
foreign import javascript unsafe "$1[\"systemCode\"]"
        js_getSystemCode :: WebKitMediaKeyError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError.systemCode Mozilla WebKitMediaKeyError.systemCode documentation> 
getSystemCode :: (MonadIO m) => WebKitMediaKeyError -> m Word
getSystemCode self = liftIO (js_getSystemCode self)