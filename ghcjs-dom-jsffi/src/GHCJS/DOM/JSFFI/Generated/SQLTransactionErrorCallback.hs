{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLTransactionErrorCallback
       (newSQLTransactionErrorCallback,
        newSQLTransactionErrorCallbackSync,
        newSQLTransactionErrorCallbackAsync, SQLTransactionErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallback ::
                               (MonadIO m) =>
                                 (Maybe SQLError -> IO ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallback callback
  = liftIO
      (SQLTransactionErrorCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackSync ::
                                   (MonadIO m) =>
                                     (Maybe SQLError -> IO ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackSync callback
  = liftIO
      (SQLTransactionErrorCallback <$>
         syncCallback1 ContinueAsync
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackAsync ::
                                    (MonadIO m) =>
                                      (Maybe SQLError -> IO ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackAsync callback
  = liftIO
      (SQLTransactionErrorCallback <$>
         asyncCallback1
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))