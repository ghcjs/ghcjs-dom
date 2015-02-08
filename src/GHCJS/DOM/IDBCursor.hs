{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBCursor
       (ghcjs_dom_idb_cursor_update, idbCursorUpdate,
        ghcjs_dom_idb_cursor_advance, idbCursorAdvance,
        ghcjs_dom_idb_cursor_continue, idbCursorContinue,
        ghcjs_dom_idb_cursor_delete, idbCursorDelete,
        ghcjs_dom_idb_cursor_get_source, idbCursorGetSource,
        ghcjs_dom_idb_cursor_get_direction, idbCursorGetDirection,
        ghcjs_dom_idb_cursor_get_key, idbCursorGetKey,
        ghcjs_dom_idb_cursor_get_primary_key, idbCursorGetPrimaryKey,
        IDBCursor, IsIDBCursor, castToIDBCursor, gTypeIDBCursor,
        toIDBCursor)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"update\"]($2)"
        ghcjs_dom_idb_cursor_update ::
        JSRef IDBCursor -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
idbCursorUpdate ::
                (MonadIO m, IsIDBCursor self) =>
                  self -> JSRef a -> m (Maybe IDBRequest)
idbCursorUpdate self value
  = liftIO
      ((ghcjs_dom_idb_cursor_update (unIDBCursor (toIDBCursor self))
          value)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"advance\"]($2)"
        ghcjs_dom_idb_cursor_advance :: JSRef IDBCursor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.advance Mozilla IDBCursor.advance documentation> 
idbCursorAdvance ::
                 (MonadIO m, IsIDBCursor self) => self -> Word -> m ()
idbCursorAdvance self count
  = liftIO
      (ghcjs_dom_idb_cursor_advance (unIDBCursor (toIDBCursor self))
         count)
 
foreign import javascript unsafe "$1[\"continue\"]($2)"
        ghcjs_dom_idb_cursor_continue ::
        JSRef IDBCursor -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continue Mozilla IDBCursor.continue documentation> 
idbCursorContinue ::
                  (MonadIO m, IsIDBCursor self) => self -> JSRef a -> m ()
idbCursorContinue self key
  = liftIO
      (ghcjs_dom_idb_cursor_continue (unIDBCursor (toIDBCursor self))
         key)
 
foreign import javascript unsafe "$1[\"delete\"]()"
        ghcjs_dom_idb_cursor_delete ::
        JSRef IDBCursor -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
idbCursorDelete ::
                (MonadIO m, IsIDBCursor self) => self -> m (Maybe IDBRequest)
idbCursorDelete self
  = liftIO
      ((ghcjs_dom_idb_cursor_delete (unIDBCursor (toIDBCursor self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"source\"]"
        ghcjs_dom_idb_cursor_get_source ::
        JSRef IDBCursor -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
idbCursorGetSource ::
                   (MonadIO m, IsIDBCursor self) => self -> m (Maybe IDBAny)
idbCursorGetSource self
  = liftIO
      ((ghcjs_dom_idb_cursor_get_source (unIDBCursor (toIDBCursor self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"direction\"]"
        ghcjs_dom_idb_cursor_get_direction ::
        JSRef IDBCursor -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.direction Mozilla IDBCursor.direction documentation> 
idbCursorGetDirection ::
                      (MonadIO m, IsIDBCursor self, FromJSString result) =>
                        self -> m result
idbCursorGetDirection self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_idb_cursor_get_direction
            (unIDBCursor (toIDBCursor self))))
 
foreign import javascript unsafe "$1[\"key\"]"
        ghcjs_dom_idb_cursor_get_key :: JSRef IDBCursor -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.key Mozilla IDBCursor.key documentation> 
idbCursorGetKey ::
                (MonadIO m, IsIDBCursor self) => self -> m (JSRef a)
idbCursorGetKey self
  = liftIO
      (ghcjs_dom_idb_cursor_get_key (unIDBCursor (toIDBCursor self)))
 
foreign import javascript unsafe "$1[\"primaryKey\"]"
        ghcjs_dom_idb_cursor_get_primary_key ::
        JSRef IDBCursor -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.primaryKey Mozilla IDBCursor.primaryKey documentation> 
idbCursorGetPrimaryKey ::
                       (MonadIO m, IsIDBCursor self) => self -> m (JSRef a)
idbCursorGetPrimaryKey self
  = liftIO
      (ghcjs_dom_idb_cursor_get_primary_key
         (unIDBCursor (toIDBCursor self)))
#else
module GHCJS.DOM.IDBCursor (
  ) where
#endif
