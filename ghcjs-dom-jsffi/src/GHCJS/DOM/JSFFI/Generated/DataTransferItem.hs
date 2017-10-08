{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DataTransferItem
       (js_getAsString, getAsString, js_getAsFile, getAsFile, getAsFile_,
        getAsFileUnsafe, getAsFileUnchecked, js_getKind, getKind,
        js_getType, getType, DataTransferItem(..), gTypeDataTransferItem)
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
 
foreign import javascript unsafe "$1[\"getAsString\"]($2)"
        js_getAsString ::
        DataTransferItem -> Optional (StringCallback callback) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsString Mozilla DataTransferItem.getAsString documentation> 
getAsString ::
            (MonadIO m, ToJSString callback) =>
              DataTransferItem -> Maybe (StringCallback callback) -> m ()
getAsString self callback
  = liftIO (js_getAsString self (maybeToOptional callback))
 
foreign import javascript unsafe "$1[\"getAsFile\"]()" js_getAsFile
        :: DataTransferItem -> IO (Nullable Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsFile Mozilla DataTransferItem.getAsFile documentation> 
getAsFile :: (MonadIO m) => DataTransferItem -> m (Maybe Blob)
getAsFile self = liftIO (nullableToMaybe <$> (js_getAsFile self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsFile Mozilla DataTransferItem.getAsFile documentation> 
getAsFile_ :: (MonadIO m) => DataTransferItem -> m ()
getAsFile_ self = liftIO (void (js_getAsFile self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsFile Mozilla DataTransferItem.getAsFile documentation> 
getAsFileUnsafe ::
                (MonadIO m, HasCallStack) => DataTransferItem -> m Blob
getAsFileUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAsFile self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsFile Mozilla DataTransferItem.getAsFile documentation> 
getAsFileUnchecked :: (MonadIO m) => DataTransferItem -> m Blob
getAsFileUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAsFile self))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        DataTransferItem -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.kind Mozilla DataTransferItem.kind documentation> 
getKind ::
        (MonadIO m, FromJSString result) => DataTransferItem -> m result
getKind self = liftIO (fromJSString <$> (js_getKind self))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        DataTransferItem -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.type Mozilla DataTransferItem.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => DataTransferItem -> m result
getType self = liftIO (fromJSString <$> (js_getType self))