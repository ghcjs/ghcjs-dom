{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransactionSyncCallback
       (sqlTransactionSyncCallbackNewSync,
        sqlTransactionSyncCallbackNewAsync, SQLTransactionSyncCallback,
        IsSQLTransactionSyncCallback, castToSQLTransactionSyncCallback,
        gTypeSQLTransactionSyncCallback, toSQLTransactionSyncCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation> 
sqlTransactionSyncCallbackNewSync ::
                                  (MonadIO m) =>
                                    (Maybe SQLTransactionSync -> IO Bool) ->
                                      m SQLTransactionSyncCallback
sqlTransactionSyncCallbackNewSync callback
  = liftIO
      (SQLTransactionSyncCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation> 
sqlTransactionSyncCallbackNewSync' ::
                                   (MonadIO m) =>
                                     ForeignRetention ->
                                       Bool ->
                                         (Maybe SQLTransactionSync -> IO Bool) ->
                                           m SQLTransactionSyncCallback
sqlTransactionSyncCallbackNewSync' retention continueAsync callback
  = liftIO
      (SQLTransactionSyncCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation> 
sqlTransactionSyncCallbackNewAsync ::
                                   (MonadIO m) =>
                                     (Maybe SQLTransactionSync -> IO Bool) ->
                                       m SQLTransactionSyncCallback
sqlTransactionSyncCallbackNewAsync callback
  = liftIO
      (SQLTransactionSyncCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation> 
sqlTransactionSyncCallbackNewAsync' ::
                                    (MonadIO m) =>
                                      ForeignRetention ->
                                        (Maybe SQLTransactionSync -> IO Bool) ->
                                          m SQLTransactionSyncCallback
sqlTransactionSyncCallbackNewAsync' retention callback
  = liftIO
      (SQLTransactionSyncCallback . castRef <$>
         asyncCallback1 retention
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))
#else
module GHCJS.DOM.SQLTransactionSyncCallback (
  ) where
#endif
