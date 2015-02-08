{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransactionSync
       (ghcjs_dom_sql_transaction_sync_execute_sql,
        sqlTransactionSyncExecuteSql, SQLTransactionSync,
        IsSQLTransactionSync, castToSQLTransactionSync,
        gTypeSQLTransactionSync, toSQLTransactionSync)
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

 
foreign import javascript unsafe "$1[\"executeSql\"]($2, $3)"
        ghcjs_dom_sql_transaction_sync_execute_sql ::
        JSRef SQLTransactionSync ->
          JSString -> JSRef ObjectArray -> IO (JSRef SQLResultSet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSync.executeSql Mozilla SQLTransactionSync.executeSql documentation> 
sqlTransactionSyncExecuteSql ::
                             (MonadIO m, IsSQLTransactionSync self, ToJSString sqlStatement,
                              IsObjectArray arguments) =>
                               self -> sqlStatement -> Maybe arguments -> m (Maybe SQLResultSet)
sqlTransactionSyncExecuteSql self sqlStatement arguments
  = liftIO
      ((ghcjs_dom_sql_transaction_sync_execute_sql
          (unSQLTransactionSync (toSQLTransactionSync self))
          (toJSString sqlStatement)
          (maybe jsNull (unObjectArray . toObjectArray) arguments))
         >>= fromJSRef)
#else
module GHCJS.DOM.SQLTransactionSync (
  ) where
#endif
