{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransactionErrorCallback
       (sqlTransactionErrorCallbackNewSync,
        sqlTransactionErrorCallbackNewAsync, SQLTransactionErrorCallback,
        IsSQLTransactionErrorCallback, castToSQLTransactionErrorCallback,
        gTypeSQLTransactionErrorCallback, toSQLTransactionErrorCallback)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
sqlTransactionErrorCallbackNewSync ::
                                     (Maybe SQLError -> IO Bool) -> IO SQLTransactionErrorCallback
sqlTransactionErrorCallbackNewSync callback
  = SQLTransactionErrorCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
sqlTransactionErrorCallbackNewSync' ::
                                      ForeignRetention ->
                                        Bool ->
                                          (Maybe SQLError -> IO Bool) ->
                                            IO SQLTransactionErrorCallback
sqlTransactionErrorCallbackNewSync' retention continueAsync
  callback
  = SQLTransactionErrorCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
sqlTransactionErrorCallbackNewAsync ::
                                      (Maybe SQLError -> IO Bool) -> IO SQLTransactionErrorCallback
sqlTransactionErrorCallbackNewAsync callback
  = SQLTransactionErrorCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
sqlTransactionErrorCallbackNewAsync' ::
                                       ForeignRetention ->
                                         (Maybe SQLError -> IO Bool) ->
                                           IO SQLTransactionErrorCallback
sqlTransactionErrorCallbackNewAsync' retention callback
  = SQLTransactionErrorCallback . castRef <$>
      asyncCallback1 retention
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')
#else
module GHCJS.DOM.SQLTransactionErrorCallback (
  ) where
#endif
