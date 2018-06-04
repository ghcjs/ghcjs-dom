{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMException
       (js_newDOMException, newDOMException, js_toString, toString,
        toString_, pattern INDEX_SIZE_ERR, pattern DOMSTRING_SIZE_ERR,
        pattern HIERARCHY_REQUEST_ERR, pattern WRONG_DOCUMENT_ERR,
        pattern INVALID_CHARACTER_ERR, pattern NO_DATA_ALLOWED_ERR,
        pattern NO_MODIFICATION_ALLOWED_ERR, pattern NOT_FOUND_ERR,
        pattern NOT_SUPPORTED_ERR, pattern INUSE_ATTRIBUTE_ERR,
        pattern INVALID_STATE_ERR, pattern SYNTAX_ERR,
        pattern INVALID_MODIFICATION_ERR, pattern NAMESPACE_ERR,
        pattern INVALID_ACCESS_ERR, pattern VALIDATION_ERR,
        pattern TYPE_MISMATCH_ERR, pattern SECURITY_ERR,
        pattern NETWORK_ERR, pattern ABORT_ERR, pattern URL_MISMATCH_ERR,
        pattern QUOTA_EXCEEDED_ERR, pattern TIMEOUT_ERR,
        pattern INVALID_NODE_TYPE_ERR, pattern DATA_CLONE_ERR, js_getCode,
        getCode, js_getName, getName, js_getMessage, getMessage,
        DOMException(..), gTypeDOMException)
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
 
foreign import javascript unsafe
        "new window[\"DOMException\"]($1,\n$2)" js_newDOMException ::
        Optional JSString -> Optional JSString -> IO DOMException

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException Mozilla DOMException documentation> 
newDOMException ::
                (MonadIO m, ToJSString message, ToJSString name) =>
                  Maybe message -> Maybe name -> m DOMException
newDOMException message name
  = liftIO
      (js_newDOMException (toOptionalJSString message)
         (toOptionalJSString name))
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: DOMException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.toString Mozilla DOMException.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => DOMException -> m result
toString self = liftIO (fromJSString <$> (js_toString self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.toString Mozilla DOMException.toString documentation> 
toString_ :: (MonadIO m) => DOMException -> m ()
toString_ self = liftIO (void (js_toString self))
pattern INDEX_SIZE_ERR = 1
pattern DOMSTRING_SIZE_ERR = 2
pattern HIERARCHY_REQUEST_ERR = 3
pattern WRONG_DOCUMENT_ERR = 4
pattern INVALID_CHARACTER_ERR = 5
pattern NO_DATA_ALLOWED_ERR = 6
pattern NO_MODIFICATION_ALLOWED_ERR = 7
pattern NOT_FOUND_ERR = 8
pattern NOT_SUPPORTED_ERR = 9
pattern INUSE_ATTRIBUTE_ERR = 10
pattern INVALID_STATE_ERR = 11
pattern SYNTAX_ERR = 12
pattern INVALID_MODIFICATION_ERR = 13
pattern NAMESPACE_ERR = 14
pattern INVALID_ACCESS_ERR = 15
pattern VALIDATION_ERR = 16
pattern TYPE_MISMATCH_ERR = 17
pattern SECURITY_ERR = 18
pattern NETWORK_ERR = 19
pattern ABORT_ERR = 20
pattern URL_MISMATCH_ERR = 21
pattern QUOTA_EXCEEDED_ERR = 22
pattern TIMEOUT_ERR = 23
pattern INVALID_NODE_TYPE_ERR = 24
pattern DATA_CLONE_ERR = 25
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        DOMException -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.code Mozilla DOMException.code documentation> 
getCode :: (MonadIO m) => DOMException -> m Word
getCode self = liftIO (js_getCode self)
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        DOMException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.name Mozilla DOMException.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => DOMException -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        DOMException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMException.message Mozilla DOMException.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => DOMException -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage self))