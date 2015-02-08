{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLResultSet
       (ghcjs_dom_sql_result_set_get_rows, sqlResultSetGetRows,
        ghcjs_dom_sql_result_set_get_insert_id, sqlResultSetGetInsertId,
        ghcjs_dom_sql_result_set_get_rows_affected,
        sqlResultSetGetRowsAffected, SQLResultSet, IsSQLResultSet,
        castToSQLResultSet, gTypeSQLResultSet, toSQLResultSet)
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

 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_sql_result_set_get_rows ::
        JSRef SQLResultSet -> IO (JSRef SQLResultSetRowList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rows Mozilla SQLResultSet.rows documentation> 
sqlResultSetGetRows ::
                    (MonadIO m, IsSQLResultSet self) =>
                      self -> m (Maybe SQLResultSetRowList)
sqlResultSetGetRows self
  = liftIO
      ((ghcjs_dom_sql_result_set_get_rows
          (unSQLResultSet (toSQLResultSet self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertId\"]"
        ghcjs_dom_sql_result_set_get_insert_id ::
        JSRef SQLResultSet -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.insertId Mozilla SQLResultSet.insertId documentation> 
sqlResultSetGetInsertId ::
                        (MonadIO m, IsSQLResultSet self) => self -> m Int
sqlResultSetGetInsertId self
  = liftIO
      (ghcjs_dom_sql_result_set_get_insert_id
         (unSQLResultSet (toSQLResultSet self)))
 
foreign import javascript unsafe "$1[\"rowsAffected\"]"
        ghcjs_dom_sql_result_set_get_rows_affected ::
        JSRef SQLResultSet -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rowsAffected Mozilla SQLResultSet.rowsAffected documentation> 
sqlResultSetGetRowsAffected ::
                            (MonadIO m, IsSQLResultSet self) => self -> m Int
sqlResultSetGetRowsAffected self
  = liftIO
      (ghcjs_dom_sql_result_set_get_rows_affected
         (unSQLResultSet (toSQLResultSet self)))
#else
module GHCJS.DOM.SQLResultSet (
  ) where
#endif
