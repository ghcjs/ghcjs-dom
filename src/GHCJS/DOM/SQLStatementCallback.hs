{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLStatementCallback
       (sqlStatementCallbackNewSync, sqlStatementCallbackNewAsync,
        SQLStatementCallback, IsSQLStatementCallback,
        castToSQLStatementCallback, gTypeSQLStatementCallback,
        toSQLStatementCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
sqlStatementCallbackNewSync ::
                            (MonadIO m) =>
                              (Maybe SQLTransaction -> Maybe SQLResultSet -> IO Bool) ->
                                m SQLStatementCallback
sqlStatementCallbackNewSync callback
  = liftIO
      (SQLStatementCallback . castRef <$>
         syncCallback2 AlwaysRetain True
           (\ transaction resultSet ->
              fromJSRefUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSRefUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
sqlStatementCallbackNewSync' ::
                             (MonadIO m) =>
                               ForeignRetention ->
                                 Bool ->
                                   (Maybe SQLTransaction -> Maybe SQLResultSet -> IO Bool) ->
                                     m SQLStatementCallback
sqlStatementCallbackNewSync' retention continueAsync callback
  = liftIO
      (SQLStatementCallback . castRef <$>
         syncCallback2 retention continueAsync
           (\ transaction resultSet ->
              fromJSRefUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSRefUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
sqlStatementCallbackNewAsync ::
                             (MonadIO m) =>
                               (Maybe SQLTransaction -> Maybe SQLResultSet -> IO Bool) ->
                                 m SQLStatementCallback
sqlStatementCallbackNewAsync callback
  = liftIO
      (SQLStatementCallback . castRef <$>
         asyncCallback2 AlwaysRetain
           (\ transaction resultSet ->
              fromJSRefUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSRefUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
sqlStatementCallbackNewAsync' ::
                              (MonadIO m) =>
                                ForeignRetention ->
                                  (Maybe SQLTransaction -> Maybe SQLResultSet -> IO Bool) ->
                                    m SQLStatementCallback
sqlStatementCallbackNewAsync' retention callback
  = liftIO
      (SQLStatementCallback . castRef <$>
         asyncCallback2 retention
           (\ transaction resultSet ->
              fromJSRefUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSRefUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))
#else
module GHCJS.DOM.SQLStatementCallback (
  ) where
#endif
