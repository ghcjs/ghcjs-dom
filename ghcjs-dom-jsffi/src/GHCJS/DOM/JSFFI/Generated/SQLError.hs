{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLError
       (pattern UNKNOWN_ERR, pattern DATABASE_ERR, pattern VERSION_ERR,
        pattern TOO_LARGE_ERR, pattern QUOTA_ERR, pattern SYNTAX_ERR,
        pattern CONSTRAINT_ERR, pattern TIMEOUT_ERR, js_getCode, getCode,
        js_getMessage, getMessage, SQLError, castToSQLError, gTypeSQLError)
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
pattern UNKNOWN_ERR = 0
pattern DATABASE_ERR = 1
pattern VERSION_ERR = 2
pattern TOO_LARGE_ERR = 3
pattern QUOTA_ERR = 4
pattern SYNTAX_ERR = 5
pattern CONSTRAINT_ERR = 6
pattern TIMEOUT_ERR = 7
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        SQLError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLError.code Mozilla SQLError.code documentation> 
getCode :: (MonadIO m) => SQLError -> m Word
getCode self = liftIO (js_getCode (self))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        SQLError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLError.message Mozilla SQLError.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => SQLError -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage (self)))