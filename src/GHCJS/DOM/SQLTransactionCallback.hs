{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransactionCallback
       (sqlTransactionCallbackNewSync, sqlTransactionCallbackNewAsync,
        SQLTransactionCallback, IsSQLTransactionCallback,
        castToSQLTransactionCallback, gTypeSQLTransactionCallback,
        toSQLTransactionCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
sqlTransactionCallbackNewSync ::
                              (MonadIO m) =>
                                (Maybe SQLTransaction -> IO Bool) -> m SQLTransactionCallback
sqlTransactionCallbackNewSync callback
  = liftIO
      (SQLTransactionCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
sqlTransactionCallbackNewSync' ::
                               (MonadIO m) =>
                                 ForeignRetention ->
                                   Bool ->
                                     (Maybe SQLTransaction -> IO Bool) -> m SQLTransactionCallback
sqlTransactionCallbackNewSync' retention continueAsync callback
  = liftIO
      (SQLTransactionCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
sqlTransactionCallbackNewAsync ::
                               (MonadIO m) =>
                                 (Maybe SQLTransaction -> IO Bool) -> m SQLTransactionCallback
sqlTransactionCallbackNewAsync callback
  = liftIO
      (SQLTransactionCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
sqlTransactionCallbackNewAsync' ::
                                (MonadIO m) =>
                                  ForeignRetention ->
                                    (Maybe SQLTransaction -> IO Bool) -> m SQLTransactionCallback
sqlTransactionCallbackNewAsync' retention callback
  = liftIO
      (SQLTransactionCallback . castRef <$>
         asyncCallback1 retention
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))
#else
module GHCJS.DOM.SQLTransactionCallback (
  ) where
#endif
