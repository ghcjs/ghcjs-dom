{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.FileError
       (pattern NOT_FOUND_ERR, pattern SECURITY_ERR, pattern ABORT_ERR,
        pattern NOT_READABLE_ERR, pattern ENCODING_ERR,
        pattern NO_MODIFICATION_ALLOWED_ERR, pattern INVALID_STATE_ERR,
        pattern SYNTAX_ERR, pattern INVALID_MODIFICATION_ERR,
        pattern QUOTA_EXCEEDED_ERR, pattern TYPE_MISMATCH_ERR,
        pattern PATH_EXISTS_ERR, js_getCode, getCode, FileError,
        castToFileError, gTypeFileError)
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
pattern NOT_FOUND_ERR = 1
pattern SECURITY_ERR = 2
pattern ABORT_ERR = 3
pattern NOT_READABLE_ERR = 4
pattern ENCODING_ERR = 5
pattern NO_MODIFICATION_ALLOWED_ERR = 6
pattern INVALID_STATE_ERR = 7
pattern SYNTAX_ERR = 8
pattern INVALID_MODIFICATION_ERR = 9
pattern QUOTA_EXCEEDED_ERR = 10
pattern TYPE_MISMATCH_ERR = 11
pattern PATH_EXISTS_ERR = 12
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        FileError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileError.code Mozilla FileError.code documentation> 
getCode :: (MonadIO m) => FileError -> m Word
getCode self = liftIO (js_getCode (self))