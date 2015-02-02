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
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation> 
sqlTransactionSyncCallbackNewSync ::
                                    (Maybe SQLTransactionSync -> IO Bool) ->
                                      IO SQLTransactionSyncCallback
sqlTransactionSyncCallbackNewSync callback
  = SQLTransactionSyncCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ transaction ->
           fromJSRefUnchecked transaction >>=
             \ transaction' -> callback transaction')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation> 
sqlTransactionSyncCallbackNewSync' ::
                                     ForeignRetention ->
                                       Bool ->
                                         (Maybe SQLTransactionSync -> IO Bool) ->
                                           IO SQLTransactionSyncCallback
sqlTransactionSyncCallbackNewSync' retention continueAsync callback
  = SQLTransactionSyncCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ transaction ->
           fromJSRefUnchecked transaction >>=
             \ transaction' -> callback transaction')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation> 
sqlTransactionSyncCallbackNewAsync ::
                                     (Maybe SQLTransactionSync -> IO Bool) ->
                                       IO SQLTransactionSyncCallback
sqlTransactionSyncCallbackNewAsync callback
  = SQLTransactionSyncCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ transaction ->
           fromJSRefUnchecked transaction >>=
             \ transaction' -> callback transaction')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation> 
sqlTransactionSyncCallbackNewAsync' ::
                                      ForeignRetention ->
                                        (Maybe SQLTransactionSync -> IO Bool) ->
                                          IO SQLTransactionSyncCallback
sqlTransactionSyncCallbackNewAsync' retention callback
  = SQLTransactionSyncCallback . castRef <$>
      asyncCallback1 retention
        (\ transaction ->
           fromJSRefUnchecked transaction >>=
             \ transaction' -> callback transaction')
#else
module GHCJS.DOM.SQLTransactionSyncCallback (
  ) where
#endif
