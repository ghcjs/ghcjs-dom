{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBCursor
       (js_update, update, update_, updateUnsafe, updateUnchecked,
        js_advance, advance, js_continue, continue, js_delete, delete,
        delete_, deleteUnsafe, deleteUnchecked, js_getSource, getSource,
        getSourceUnsafe, getSourceUnchecked, js_getDirection, getDirection,
        js_getKey, getKey, js_getPrimaryKey, getPrimaryKey, IDBCursor(..),
        gTypeIDBCursor, IsIDBCursor, toIDBCursor)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"update\"]($2)" js_update ::
        IDBCursor -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update ::
       (MonadIO m, IsIDBCursor self) =>
         self -> JSVal -> m (Maybe IDBRequest)
update self value
  = liftIO (nullableToMaybe <$> (js_update (toIDBCursor self) value))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update_ :: (MonadIO m, IsIDBCursor self) => self -> JSVal -> m ()
update_ self value
  = liftIO (void (js_update (toIDBCursor self) value))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
updateUnsafe ::
             (MonadIO m, IsIDBCursor self, HasCallStack) =>
               self -> JSVal -> m IDBRequest
updateUnsafe self value
  = liftIO
      ((nullableToMaybe <$> (js_update (toIDBCursor self) value)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
updateUnchecked ::
                (MonadIO m, IsIDBCursor self) => self -> JSVal -> m IDBRequest
updateUnchecked self value
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_update (toIDBCursor self) value))
 
foreign import javascript unsafe "$1[\"advance\"]($2)" js_advance
        :: IDBCursor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.advance Mozilla IDBCursor.advance documentation> 
advance :: (MonadIO m, IsIDBCursor self) => self -> Word -> m ()
advance self count = liftIO (js_advance (toIDBCursor self) count)
 
foreign import javascript unsafe "$1[\"continue\"]($2)" js_continue
        :: IDBCursor -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continue Mozilla IDBCursor.continue documentation> 
continue :: (MonadIO m, IsIDBCursor self) => self -> JSVal -> m ()
continue self key = liftIO (js_continue (toIDBCursor self) key)
 
foreign import javascript unsafe "$1[\"delete\"]()" js_delete ::
        IDBCursor -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete ::
       (MonadIO m, IsIDBCursor self) => self -> m (Maybe IDBRequest)
delete self
  = liftIO (nullableToMaybe <$> (js_delete (toIDBCursor self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete_ :: (MonadIO m, IsIDBCursor self) => self -> m ()
delete_ self = liftIO (void (js_delete (toIDBCursor self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
deleteUnsafe ::
             (MonadIO m, IsIDBCursor self, HasCallStack) => self -> m IDBRequest
deleteUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_delete (toIDBCursor self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
deleteUnchecked ::
                (MonadIO m, IsIDBCursor self) => self -> m IDBRequest
deleteUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_delete (toIDBCursor self)))
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        IDBCursor -> IO (Nullable IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSource ::
          (MonadIO m, IsIDBCursor self) => self -> m (Maybe IDBAny)
getSource self
  = liftIO (nullableToMaybe <$> (js_getSource (toIDBCursor self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSourceUnsafe ::
                (MonadIO m, IsIDBCursor self, HasCallStack) => self -> m IDBAny
getSourceUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSource (toIDBCursor self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSourceUnchecked ::
                   (MonadIO m, IsIDBCursor self) => self -> m IDBAny
getSourceUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSource (toIDBCursor self)))
 
foreign import javascript unsafe "$1[\"direction\"]"
        js_getDirection :: IDBCursor -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.direction Mozilla IDBCursor.direction documentation> 
getDirection ::
             (MonadIO m, IsIDBCursor self, FromJSString result) =>
               self -> m result
getDirection self
  = liftIO (fromJSString <$> (js_getDirection (toIDBCursor self)))
 
foreign import javascript unsafe "$1[\"key\"]" js_getKey ::
        IDBCursor -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.key Mozilla IDBCursor.key documentation> 
getKey :: (MonadIO m, IsIDBCursor self) => self -> m JSVal
getKey self = liftIO (js_getKey (toIDBCursor self))
 
foreign import javascript unsafe "$1[\"primaryKey\"]"
        js_getPrimaryKey :: IDBCursor -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.primaryKey Mozilla IDBCursor.primaryKey documentation> 
getPrimaryKey :: (MonadIO m, IsIDBCursor self) => self -> m JSVal
getPrimaryKey self = liftIO (js_getPrimaryKey (toIDBCursor self))