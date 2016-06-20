{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLTransactionCallback
       (newSQLTransactionCallback, newSQLTransactionCallbackSync,
        newSQLTransactionCallbackAsync, SQLTransactionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallback ::
                          (MonadIO m) =>
                            (Maybe SQLTransaction -> IO ()) -> m SQLTransactionCallback
newSQLTransactionCallback callback
  = liftIO
      (SQLTransactionCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ transaction ->
              fromJSValUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackSync ::
                              (MonadIO m) =>
                                (Maybe SQLTransaction -> IO ()) -> m SQLTransactionCallback
newSQLTransactionCallbackSync callback
  = liftIO
      (SQLTransactionCallback <$>
         syncCallback1 ContinueAsync
           (\ transaction ->
              fromJSValUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackAsync ::
                               (MonadIO m) =>
                                 (Maybe SQLTransaction -> IO ()) -> m SQLTransactionCallback
newSQLTransactionCallbackAsync callback
  = liftIO
      (SQLTransactionCallback <$>
         asyncCallback1
           (\ transaction ->
              fromJSValUnchecked transaction >>=
                \ transaction' -> callback transaction'))