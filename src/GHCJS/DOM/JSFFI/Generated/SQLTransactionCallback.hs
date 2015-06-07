{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLTransactionCallback
       (newSQLTransactionCallback, newSQLTransactionCallbackSync,
        newSQLTransactionCallbackAsync, SQLTransactionCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallback ::
                          (MonadIO m) =>
                            (Maybe SQLTransaction -> IO ()) -> m SQLTransactionCallback
newSQLTransactionCallback callback
  = liftIO
      (syncCallback1 ThrowWouldBlock
         (\ transaction ->
            fromJSRefUnchecked transaction >>=
              \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackSync ::
                              (MonadIO m) =>
                                (Maybe SQLTransaction -> IO ()) -> m SQLTransactionCallback
newSQLTransactionCallbackSync callback
  = liftIO
      (syncCallback1 ContinueAsync
         (\ transaction ->
            fromJSRefUnchecked transaction >>=
              \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackAsync ::
                               (MonadIO m) =>
                                 (Maybe SQLTransaction -> IO ()) -> m SQLTransactionCallback
newSQLTransactionCallbackAsync callback
  = liftIO
      (asyncCallback1
         (\ transaction ->
            fromJSRefUnchecked transaction >>=
              \ transaction' -> callback transaction'))