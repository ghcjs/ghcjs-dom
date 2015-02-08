{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransactionErrorCallback
       (sqlTransactionErrorCallbackNewSync,
        sqlTransactionErrorCallbackNewAsync, SQLTransactionErrorCallback,
        IsSQLTransactionErrorCallback, castToSQLTransactionErrorCallback,
        gTypeSQLTransactionErrorCallback, toSQLTransactionErrorCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
sqlTransactionErrorCallbackNewSync ::
                                   (MonadIO m) =>
                                     (Maybe SQLError -> IO Bool) -> m SQLTransactionErrorCallback
sqlTransactionErrorCallbackNewSync callback
  = liftIO
      (SQLTransactionErrorCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
sqlTransactionErrorCallbackNewSync' ::
                                    (MonadIO m) =>
                                      ForeignRetention ->
                                        Bool ->
                                          (Maybe SQLError -> IO Bool) ->
                                            m SQLTransactionErrorCallback
sqlTransactionErrorCallbackNewSync' retention continueAsync
  callback
  = liftIO
      (SQLTransactionErrorCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
sqlTransactionErrorCallbackNewAsync ::
                                    (MonadIO m) =>
                                      (Maybe SQLError -> IO Bool) -> m SQLTransactionErrorCallback
sqlTransactionErrorCallbackNewAsync callback
  = liftIO
      (SQLTransactionErrorCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
sqlTransactionErrorCallbackNewAsync' ::
                                     (MonadIO m) =>
                                       ForeignRetention ->
                                         (Maybe SQLError -> IO Bool) ->
                                           m SQLTransactionErrorCallback
sqlTransactionErrorCallbackNewAsync' retention callback
  = liftIO
      (SQLTransactionErrorCallback . castRef <$>
         asyncCallback1 retention
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))
#else
module GHCJS.DOM.SQLTransactionErrorCallback (
  ) where
#endif
