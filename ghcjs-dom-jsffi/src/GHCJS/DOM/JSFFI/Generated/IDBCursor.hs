{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBCursor
       (js_update, update, update_, js_advance, advance, js_continue,
        continue, js_continuePrimaryKey, continuePrimaryKey, js_delete,
        delete, delete_, js_getSource, getSource, js_getDirection,
        getDirection, js_getKey, getKey, js_getPrimaryKey, getPrimaryKey,
        IDBCursor(..), gTypeIDBCursor, IsIDBCursor, toIDBCursor)
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
 
foreign import javascript safe "$1[\"update\"]($2)" js_update ::
        IDBCursor -> JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update ::
       (MonadIO m, IsIDBCursor self, ToJSVal value) =>
         self -> value -> m IDBRequest
update self value
  = liftIO
      (toJSVal value >>= \ value' -> js_update (toIDBCursor self) value')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update_ ::
        (MonadIO m, IsIDBCursor self, ToJSVal value) =>
          self -> value -> m ()
update_ self value
  = liftIO
      (void
         (toJSVal value >>=
            \ value' -> js_update (toIDBCursor self) value'))
 
foreign import javascript safe "$1[\"advance\"]($2)" js_advance ::
        IDBCursor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.advance Mozilla IDBCursor.advance documentation> 
advance :: (MonadIO m, IsIDBCursor self) => self -> Word -> m ()
advance self count = liftIO (js_advance (toIDBCursor self) count)
 
foreign import javascript safe "$1[\"continue\"]($2)" js_continue
        :: IDBCursor -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continue Mozilla IDBCursor.continue documentation> 
continue ::
         (MonadIO m, IsIDBCursor self, ToJSVal key) =>
           self -> Maybe key -> m ()
continue self key
  = liftIO
      (mapM toJSVal key >>=
         \ key' -> js_continue (toIDBCursor self) (maybeToOptional key'))
 
foreign import javascript safe "$1[\"continuePrimaryKey\"]($2, $3)"
        js_continuePrimaryKey :: IDBCursor -> JSVal -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continuePrimaryKey Mozilla IDBCursor.continuePrimaryKey documentation> 
continuePrimaryKey ::
                   (MonadIO m, IsIDBCursor self, ToJSVal key, ToJSVal primaryKey) =>
                     self -> key -> primaryKey -> m ()
continuePrimaryKey self key primaryKey
  = liftIO
      (toJSVal primaryKey >>=
         \ primaryKey' ->
           toJSVal key >>=
             \ key' -> js_continuePrimaryKey (toIDBCursor self) key'
             primaryKey')
 
foreign import javascript safe "$1[\"delete\"]()" js_delete ::
        IDBCursor -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete :: (MonadIO m, IsIDBCursor self) => self -> m IDBRequest
delete self = liftIO (js_delete (toIDBCursor self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete_ :: (MonadIO m, IsIDBCursor self) => self -> m ()
delete_ self = liftIO (void (js_delete (toIDBCursor self)))
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        IDBCursor -> IO IDBCursorSource

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSource ::
          (MonadIO m, IsIDBCursor self) => self -> m IDBCursorSource
getSource self = liftIO (js_getSource (toIDBCursor self))
 
foreign import javascript unsafe "$1[\"direction\"]"
        js_getDirection :: IDBCursor -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.direction Mozilla IDBCursor.direction documentation> 
getDirection ::
             (MonadIO m, IsIDBCursor self) => self -> m IDBCursorDirection
getDirection self
  = liftIO
      ((js_getDirection (toIDBCursor self)) >>= fromJSValUnchecked)
 
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