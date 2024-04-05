{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.FileException
       (js_toString, toString, toString_, pattern NOT_FOUND_ERR,
        pattern SECURITY_ERR, pattern ABORT_ERR, pattern NOT_READABLE_ERR,
        pattern ENCODING_ERR, pattern NO_MODIFICATION_ALLOWED_ERR,
        pattern INVALID_STATE_ERR, pattern SYNTAX_ERR,
        pattern INVALID_MODIFICATION_ERR, pattern QUOTA_EXCEEDED_ERR,
        pattern TYPE_MISMATCH_ERR, pattern PATH_EXISTS_ERR, js_getCode,
        getCode, js_getName, getName, js_getMessage, getMessage,
        FileException(..), gTypeFileException)
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
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: FileException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.toString Mozilla FileException.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => FileException -> m result
toString self = liftIO (fromJSString <$> (js_toString self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.toString Mozilla FileException.toString documentation> 
toString_ :: (MonadIO m) => FileException -> m ()
toString_ self = liftIO (void (js_toString self))
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
        FileException -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.code Mozilla FileException.code documentation> 
getCode :: (MonadIO m) => FileException -> m Word
getCode self = liftIO (js_getCode self)
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        FileException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.name Mozilla FileException.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => FileException -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        FileException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileException.message Mozilla FileException.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => FileException -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage self))