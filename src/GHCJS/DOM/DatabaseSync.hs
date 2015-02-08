{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DatabaseSync
       (ghcjs_dom_database_sync_change_version, databaseSyncChangeVersion,
        ghcjs_dom_database_sync_transaction, databaseSyncTransaction,
        ghcjs_dom_database_sync_read_transaction,
        databaseSyncReadTransaction, ghcjs_dom_database_sync_get_version,
        databaseSyncGetVersion,
        ghcjs_dom_database_sync_get_last_error_message,
        databaseSyncGetLastErrorMessage, DatabaseSync, IsDatabaseSync,
        castToDatabaseSync, gTypeDatabaseSync, toDatabaseSync)
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

 
foreign import javascript unsafe
        "$1[\"changeVersion\"]($2, $3, $4)"
        ghcjs_dom_database_sync_change_version ::
        JSRef DatabaseSync ->
          JSString -> JSString -> JSRef SQLTransactionSyncCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseSync.changeVersion Mozilla DatabaseSync.changeVersion documentation> 
databaseSyncChangeVersion ::
                          (MonadIO m, IsDatabaseSync self, ToJSString oldVersion,
                           ToJSString newVersion, IsSQLTransactionSyncCallback callback) =>
                            self -> oldVersion -> newVersion -> Maybe callback -> m ()
databaseSyncChangeVersion self oldVersion newVersion callback
  = liftIO
      (ghcjs_dom_database_sync_change_version
         (unDatabaseSync (toDatabaseSync self))
         (toJSString oldVersion)
         (toJSString newVersion)
         (maybe jsNull
            (unSQLTransactionSyncCallback . toSQLTransactionSyncCallback)
            callback))
 
foreign import javascript unsafe "$1[\"transaction\"]($2)"
        ghcjs_dom_database_sync_transaction ::
        JSRef DatabaseSync -> JSRef SQLTransactionSyncCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseSync.transaction Mozilla DatabaseSync.transaction documentation> 
databaseSyncTransaction ::
                        (MonadIO m, IsDatabaseSync self,
                         IsSQLTransactionSyncCallback callback) =>
                          self -> Maybe callback -> m ()
databaseSyncTransaction self callback
  = liftIO
      (ghcjs_dom_database_sync_transaction
         (unDatabaseSync (toDatabaseSync self))
         (maybe jsNull
            (unSQLTransactionSyncCallback . toSQLTransactionSyncCallback)
            callback))
 
foreign import javascript unsafe "$1[\"readTransaction\"]($2)"
        ghcjs_dom_database_sync_read_transaction ::
        JSRef DatabaseSync -> JSRef SQLTransactionSyncCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseSync.readTransaction Mozilla DatabaseSync.readTransaction documentation> 
databaseSyncReadTransaction ::
                            (MonadIO m, IsDatabaseSync self,
                             IsSQLTransactionSyncCallback callback) =>
                              self -> Maybe callback -> m ()
databaseSyncReadTransaction self callback
  = liftIO
      (ghcjs_dom_database_sync_read_transaction
         (unDatabaseSync (toDatabaseSync self))
         (maybe jsNull
            (unSQLTransactionSyncCallback . toSQLTransactionSyncCallback)
            callback))
 
foreign import javascript unsafe "$1[\"version\"]"
        ghcjs_dom_database_sync_get_version ::
        JSRef DatabaseSync -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseSync.version Mozilla DatabaseSync.version documentation> 
databaseSyncGetVersion ::
                       (MonadIO m, IsDatabaseSync self, FromJSString result) =>
                         self -> m result
databaseSyncGetVersion self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_database_sync_get_version
            (unDatabaseSync (toDatabaseSync self))))
 
foreign import javascript unsafe "$1[\"lastErrorMessage\"]"
        ghcjs_dom_database_sync_get_last_error_message ::
        JSRef DatabaseSync -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseSync.lastErrorMessage Mozilla DatabaseSync.lastErrorMessage documentation> 
databaseSyncGetLastErrorMessage ::
                                (MonadIO m, IsDatabaseSync self, FromJSString result) =>
                                  self -> m result
databaseSyncGetLastErrorMessage self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_database_sync_get_last_error_message
            (unDatabaseSync (toDatabaseSync self))))
#else
module GHCJS.DOM.DatabaseSync (
  ) where
#endif
