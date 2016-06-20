{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PositionError
       (pattern PERMISSION_DENIED, pattern POSITION_UNAVAILABLE,
        pattern TIMEOUT, js_getCode, getCode, js_getMessage, getMessage,
        PositionError, castToPositionError, gTypePositionError)
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
pattern PERMISSION_DENIED = 1
pattern POSITION_UNAVAILABLE = 2
pattern TIMEOUT = 3
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        PositionError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.code Mozilla PositionError.code documentation> 
getCode :: (MonadIO m) => PositionError -> m Word
getCode self = liftIO (js_getCode (self))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        PositionError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.message Mozilla PositionError.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => PositionError -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage (self)))