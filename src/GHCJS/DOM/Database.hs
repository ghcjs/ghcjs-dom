{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Database
       (ghcjs_dom_database_change_version, databaseChangeVersion,
        ghcjs_dom_database_transaction, databaseTransaction,
        ghcjs_dom_database_read_transaction, databaseReadTransaction,
        ghcjs_dom_database_get_version, databaseGetVersion, Database,
        IsDatabase, castToDatabase, gTypeDatabase, toDatabase)
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
        "$1[\"changeVersion\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_database_change_version ::
        JSRef Database ->
          JSString ->
            JSString ->
              JSRef SQLTransactionCallback ->
                JSRef SQLTransactionErrorCallback -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.changeVersion Mozilla Database.changeVersion documentation> 
databaseChangeVersion ::
                      (MonadIO m, IsDatabase self, ToJSString oldVersion,
                       ToJSString newVersion, IsSQLTransactionCallback callback,
                       IsSQLTransactionErrorCallback errorCallback,
                       IsVoidCallback successCallback) =>
                        self ->
                          oldVersion ->
                            newVersion ->
                              Maybe callback ->
                                Maybe errorCallback -> Maybe successCallback -> m ()
databaseChangeVersion self oldVersion newVersion callback
  errorCallback successCallback
  = liftIO
      (ghcjs_dom_database_change_version (unDatabase (toDatabase self))
         (toJSString oldVersion)
         (toJSString newVersion)
         (maybe jsNull (unSQLTransactionCallback . toSQLTransactionCallback)
            callback)
         (maybe jsNull
            (unSQLTransactionErrorCallback . toSQLTransactionErrorCallback)
            errorCallback)
         (maybe jsNull (unVoidCallback . toVoidCallback) successCallback))
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3, $4)"
        ghcjs_dom_database_transaction ::
        JSRef Database ->
          JSRef SQLTransactionCallback ->
            JSRef SQLTransactionErrorCallback -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.transaction Mozilla Database.transaction documentation> 
databaseTransaction ::
                    (MonadIO m, IsDatabase self, IsSQLTransactionCallback callback,
                     IsSQLTransactionErrorCallback errorCallback,
                     IsVoidCallback successCallback) =>
                      self ->
                        Maybe callback ->
                          Maybe errorCallback -> Maybe successCallback -> m ()
databaseTransaction self callback errorCallback successCallback
  = liftIO
      (ghcjs_dom_database_transaction (unDatabase (toDatabase self))
         (maybe jsNull (unSQLTransactionCallback . toSQLTransactionCallback)
            callback)
         (maybe jsNull
            (unSQLTransactionErrorCallback . toSQLTransactionErrorCallback)
            errorCallback)
         (maybe jsNull (unVoidCallback . toVoidCallback) successCallback))
 
foreign import javascript unsafe
        "$1[\"readTransaction\"]($2, $3,\n$4)"
        ghcjs_dom_database_read_transaction ::
        JSRef Database ->
          JSRef SQLTransactionCallback ->
            JSRef SQLTransactionErrorCallback -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.readTransaction Mozilla Database.readTransaction documentation> 
databaseReadTransaction ::
                        (MonadIO m, IsDatabase self, IsSQLTransactionCallback callback,
                         IsSQLTransactionErrorCallback errorCallback,
                         IsVoidCallback successCallback) =>
                          self ->
                            Maybe callback ->
                              Maybe errorCallback -> Maybe successCallback -> m ()
databaseReadTransaction self callback errorCallback successCallback
  = liftIO
      (ghcjs_dom_database_read_transaction (unDatabase (toDatabase self))
         (maybe jsNull (unSQLTransactionCallback . toSQLTransactionCallback)
            callback)
         (maybe jsNull
            (unSQLTransactionErrorCallback . toSQLTransactionErrorCallback)
            errorCallback)
         (maybe jsNull (unVoidCallback . toVoidCallback) successCallback))
 
foreign import javascript unsafe "$1[\"version\"]"
        ghcjs_dom_database_get_version :: JSRef Database -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.version Mozilla Database.version documentation> 
databaseGetVersion ::
                   (MonadIO m, IsDatabase self, FromJSString result) =>
                     self -> m result
databaseGetVersion self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_database_get_version (unDatabase (toDatabase self))))
#else
module GHCJS.DOM.Database (
  ) where
#endif
