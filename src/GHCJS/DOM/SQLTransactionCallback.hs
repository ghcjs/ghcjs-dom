{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransactionCallback
       (sqlTransactionCallbackNewSync, sqlTransactionCallbackNewAsync,
        SQLTransactionCallback, IsSQLTransactionCallback,
        castToSQLTransactionCallback, gTypeSQLTransactionCallback,
        toSQLTransactionCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
sqlTransactionCallbackNewSync ::
                                (Maybe SQLTransaction -> IO Bool) -> IO SQLTransactionCallback
sqlTransactionCallbackNewSync callback
  = SQLTransactionCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ transaction ->
           fromJSRefUnchecked transaction >>=
             \ transaction' -> callback transaction')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
sqlTransactionCallbackNewSync' ::
                                 ForeignRetention ->
                                   Bool ->
                                     (Maybe SQLTransaction -> IO Bool) -> IO SQLTransactionCallback
sqlTransactionCallbackNewSync' retention continueAsync callback
  = SQLTransactionCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ transaction ->
           fromJSRefUnchecked transaction >>=
             \ transaction' -> callback transaction')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
sqlTransactionCallbackNewAsync ::
                                 (Maybe SQLTransaction -> IO Bool) -> IO SQLTransactionCallback
sqlTransactionCallbackNewAsync callback
  = SQLTransactionCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ transaction ->
           fromJSRefUnchecked transaction >>=
             \ transaction' -> callback transaction')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation> 
sqlTransactionCallbackNewAsync' ::
                                  ForeignRetention ->
                                    (Maybe SQLTransaction -> IO Bool) -> IO SQLTransactionCallback
sqlTransactionCallbackNewAsync' retention callback
  = SQLTransactionCallback . castRef <$>
      asyncCallback1 retention
        (\ transaction ->
           fromJSRefUnchecked transaction >>=
             \ transaction' -> callback transaction')
#else
module GHCJS.DOM.SQLTransactionCallback (
  ) where
#endif
