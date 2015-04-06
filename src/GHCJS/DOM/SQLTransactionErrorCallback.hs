{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransactionErrorCallback
       (newSQLTransactionErrorCallbackSync,
        newSQLTransactionErrorCallbackSync',
        newSQLTransactionErrorCallbackAsync,
        newSQLTransactionErrorCallbackAsync', SQLTransactionErrorCallback,
        castToSQLTransactionErrorCallback,
        gTypeSQLTransactionErrorCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackSync ::
                                   (MonadIO m) =>
                                     (Maybe SQLError -> IO Bool) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackSync callback
  = liftIO
      (SQLTransactionErrorCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackSync' ::
                                    (MonadIO m) =>
                                      ForeignRetention ->
                                        Bool ->
                                          (Maybe SQLError -> IO Bool) ->
                                            m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackSync' retention continueAsync
  callback
  = liftIO
      (SQLTransactionErrorCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackAsync ::
                                    (MonadIO m) =>
                                      (Maybe SQLError -> IO Bool) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackAsync callback
  = liftIO
      (SQLTransactionErrorCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackAsync' ::
                                     (MonadIO m) =>
                                       ForeignRetention ->
                                         (Maybe SQLError -> IO Bool) ->
                                           m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackAsync' retention callback
  = liftIO
      (SQLTransactionErrorCallback . castRef <$>
         asyncCallback1 retention
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))
#else
module GHCJS.DOM.SQLTransactionErrorCallback (
  ) where
#endif
