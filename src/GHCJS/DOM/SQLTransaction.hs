{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransaction
       (ghcjs_dom_sql_transaction_execute_sql, sqlTransactionExecuteSql,
        SQLTransaction, IsSQLTransaction, castToSQLTransaction,
        gTypeSQLTransaction, toSQLTransaction)
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
        "$1[\"executeSql\"]($2, $3, $4, $5)"
        ghcjs_dom_sql_transaction_execute_sql ::
        JSRef SQLTransaction ->
          JSString ->
            JSRef ObjectArray ->
              JSRef SQLStatementCallback ->
                JSRef SQLStatementErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransaction.executeSql Mozilla SQLTransaction.executeSql documentation> 
sqlTransactionExecuteSql ::
                         (MonadIO m, IsSQLTransaction self, ToJSString sqlStatement,
                          IsObjectArray arguments, IsSQLStatementCallback callback,
                          IsSQLStatementErrorCallback errorCallback) =>
                           self ->
                             sqlStatement ->
                               Maybe arguments -> Maybe callback -> Maybe errorCallback -> m ()
sqlTransactionExecuteSql self sqlStatement arguments callback
  errorCallback
  = liftIO
      (ghcjs_dom_sql_transaction_execute_sql
         (unSQLTransaction (toSQLTransaction self))
         (toJSString sqlStatement)
         (maybe jsNull (unObjectArray . toObjectArray) arguments)
         (maybe jsNull (unSQLStatementCallback . toSQLStatementCallback)
            callback)
         (maybe jsNull
            (unSQLStatementErrorCallback . toSQLStatementErrorCallback)
            errorCallback))
#else
module GHCJS.DOM.SQLTransaction (
  ) where
#endif
