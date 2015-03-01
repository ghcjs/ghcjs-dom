{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransactionCallback
       (newSQLTransactionCallbackSync, newSQLTransactionCallbackSync',
        newSQLTransactionCallbackAsync, newSQLTransactionCallbackAsync',
        SQLTransactionCallback, castToSQLTransactionCallback,
        gTypeSQLTransactionCallback)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackSync ::
                              (MonadIO m) =>
                                (Maybe SQLTransaction -> IO Bool) -> m SQLTransactionCallback
newSQLTransactionCallbackSync callback
  = liftIO
      (SQLTransactionCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackSync' ::
                               (MonadIO m) =>
                                 ForeignRetention ->
                                   Bool ->
                                     (Maybe SQLTransaction -> IO Bool) -> m SQLTransactionCallback
newSQLTransactionCallbackSync' retention continueAsync callback
  = liftIO
      (SQLTransactionCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackAsync ::
                               (MonadIO m) =>
                                 (Maybe SQLTransaction -> IO Bool) -> m SQLTransactionCallback
newSQLTransactionCallbackAsync callback
  = liftIO
      (SQLTransactionCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
newSQLTransactionCallbackAsync' ::
                                (MonadIO m) =>
                                  ForeignRetention ->
                                    (Maybe SQLTransaction -> IO Bool) -> m SQLTransactionCallback
newSQLTransactionCallbackAsync' retention callback
  = liftIO
      (SQLTransactionCallback . castRef <$>
         asyncCallback1 retention
           (\ transaction ->
              fromJSRefUnchecked transaction >>=
                \ transaction' -> callback transaction'))
#else
module GHCJS.DOM.SQLTransactionCallback (
  ) where
#endif
