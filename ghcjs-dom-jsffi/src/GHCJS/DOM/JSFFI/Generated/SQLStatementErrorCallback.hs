{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLStatementErrorCallback
       (newSQLStatementErrorCallback, newSQLStatementErrorCallbackSync,
        newSQLStatementErrorCallbackAsync, SQLStatementErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallback ::
                             (MonadIO m) =>
                               (Maybe SQLTransaction -> Maybe SQLError -> IO ()) ->
                                 m SQLStatementErrorCallback
newSQLStatementErrorCallback callback
  = liftIO
      (SQLStatementErrorCallback <$>
         syncCallback2 ThrowWouldBlock
           (\ transaction error ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallbackSync ::
                                 (MonadIO m) =>
                                   (Maybe SQLTransaction -> Maybe SQLError -> IO ()) ->
                                     m SQLStatementErrorCallback
newSQLStatementErrorCallbackSync callback
  = liftIO
      (SQLStatementErrorCallback <$>
         syncCallback2 ContinueAsync
           (\ transaction error ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallbackAsync ::
                                  (MonadIO m) =>
                                    (Maybe SQLTransaction -> Maybe SQLError -> IO ()) ->
                                      m SQLStatementErrorCallback
newSQLStatementErrorCallbackAsync callback
  = liftIO
      (SQLStatementErrorCallback <$>
         asyncCallback2
           (\ transaction error ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))