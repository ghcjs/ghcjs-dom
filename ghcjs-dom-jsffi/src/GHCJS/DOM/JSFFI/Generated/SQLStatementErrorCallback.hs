{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SQLStatementErrorCallback
       (newSQLStatementErrorCallback, newSQLStatementErrorCallbackSync,
        newSQLStatementErrorCallbackAsync, SQLStatementErrorCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallback ::
                             (MonadIO m) =>
                               (SQLTransaction -> SQLError -> IO ()) ->
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
                                   (SQLTransaction -> SQLError -> IO ()) ->
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
                                    (SQLTransaction -> SQLError -> IO ()) ->
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