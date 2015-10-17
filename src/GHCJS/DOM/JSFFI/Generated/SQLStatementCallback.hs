{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLStatementCallback
       (newSQLStatementCallback, newSQLStatementCallbackSync,
        newSQLStatementCallbackAsync, SQLStatementCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
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
      (SQLStatementCallback <$>
         syncCallback2 ThrowWouldBlock
           (\ transaction resultSet ->
              fromJSValUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
newSQLStatementCallbackSync ::
                            (MonadIO m) =>
                              (Maybe SQLTransaction -> Maybe SQLResultSet -> IO ()) ->
                                m SQLStatementCallback
newSQLStatementCallbackSync callback
  = liftIO
      (SQLStatementCallback <$>
         syncCallback2 ContinueAsync
           (\ transaction resultSet ->
              fromJSValUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation> 
newSQLStatementCallbackAsync ::
                             (MonadIO m) =>
                               (Maybe SQLTransaction -> Maybe SQLResultSet -> IO ()) ->
                                 m SQLStatementCallback
newSQLStatementCallbackAsync callback
  = liftIO
      (SQLStatementCallback <$>
         asyncCallback2
           (\ transaction resultSet ->
              fromJSValUnchecked resultSet >>=
                \ resultSet' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    resultSet'))