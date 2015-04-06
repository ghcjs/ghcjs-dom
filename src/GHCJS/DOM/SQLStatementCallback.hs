{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLStatementCallback
       (newSQLStatementCallbackSync, newSQLStatementCallbackSync',
        newSQLStatementCallbackAsync, newSQLStatementCallbackAsync',
        SQLStatementCallback, castToSQLStatementCallback,
        gTypeSQLStatementCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
newSQLStatementCallbackSync ::
                            (MonadIO m) =>
                              (Maybe SQLTransaction -> Maybe SQLResultSet -> IO Bool) ->
                                m SQLStatementCallback
newSQLStatementCallbackSync callback
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
newSQLStatementCallbackSync' ::
                             (MonadIO m) =>
                               ForeignRetention ->
                                 Bool ->
                                   (Maybe SQLTransaction -> Maybe SQLResultSet -> IO Bool) ->
                                     m SQLStatementCallback
newSQLStatementCallbackSync' retention continueAsync callback
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
newSQLStatementCallbackAsync ::
                             (MonadIO m) =>
                               (Maybe SQLTransaction -> Maybe SQLResultSet -> IO Bool) ->
                                 m SQLStatementCallback
newSQLStatementCallbackAsync callback
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
newSQLStatementCallbackAsync' ::
                              (MonadIO m) =>
                                ForeignRetention ->
                                  (Maybe SQLTransaction -> Maybe SQLResultSet -> IO Bool) ->
                                    m SQLStatementCallback
newSQLStatementCallbackAsync' retention callback
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
