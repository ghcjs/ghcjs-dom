{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLStatementCallback
       (newSQLStatementCallback, newSQLStatementCallbackSync,
        newSQLStatementCallbackAsync, SQLStatementCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
newSQLStatementCallback ::
                        (MonadIO m) =>
                          (Maybe SQLTransaction -> Maybe SQLResultSet -> IO ()) ->
                            m SQLStatementCallback
newSQLStatementCallback callback
  = liftIO
      (syncCallback2 ThrowWouldBlock
         (\ transaction resultSet ->
            fromJSRefUnchecked resultSet >>=
              \ resultSet' ->
                fromJSRefUnchecked transaction >>=
                  \ transaction' -> callback transaction'
                  resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
newSQLStatementCallbackSync ::
                            (MonadIO m) =>
                              (Maybe SQLTransaction -> Maybe SQLResultSet -> IO ()) ->
                                m SQLStatementCallback
newSQLStatementCallbackSync callback
  = liftIO
      (syncCallback2 ContinueAsync
         (\ transaction resultSet ->
            fromJSRefUnchecked resultSet >>=
              \ resultSet' ->
                fromJSRefUnchecked transaction >>=
                  \ transaction' -> callback transaction'
                  resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
newSQLStatementCallbackAsync ::
                             (MonadIO m) =>
                               (Maybe SQLTransaction -> Maybe SQLResultSet -> IO ()) ->
                                 m SQLStatementCallback
newSQLStatementCallbackAsync callback
  = liftIO
      (asyncCallback2
         (\ transaction resultSet ->
            fromJSRefUnchecked resultSet >>=
              \ resultSet' ->
                fromJSRefUnchecked transaction >>=
                  \ transaction' -> callback transaction'
                  resultSet'))