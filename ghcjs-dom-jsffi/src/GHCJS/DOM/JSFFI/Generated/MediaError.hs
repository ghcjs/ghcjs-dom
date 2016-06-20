{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaError
       (pattern MEDIA_ERR_ABORTED, pattern MEDIA_ERR_NETWORK,
        pattern MEDIA_ERR_DECODE, pattern MEDIA_ERR_SRC_NOT_SUPPORTED,
        pattern MEDIA_ERR_ENCRYPTED, js_getCode, getCode, MediaError,
        castToMediaError, gTypeMediaError)
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
pattern MEDIA_ERR_ABORTED = 1
pattern MEDIA_ERR_NETWORK = 2
pattern MEDIA_ERR_DECODE = 3
pattern MEDIA_ERR_SRC_NOT_SUPPORTED = 4
pattern MEDIA_ERR_ENCRYPTED = 5
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        MediaError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaError.code Mozilla MediaError.code documentation> 
getCode :: (MonadIO m) => MediaError -> m Word
getCode self = liftIO (js_getCode (self))