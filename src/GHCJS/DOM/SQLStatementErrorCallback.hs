{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLStatementErrorCallback
       (sqlStatementErrorCallbackNewSync,
        sqlStatementErrorCallbackNewAsync, SQLStatementErrorCallback,
        IsSQLStatementErrorCallback, castToSQLStatementErrorCallback,
        gTypeSQLStatementErrorCallback, toSQLStatementErrorCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
sqlStatementErrorCallbackNewSync ::
                                   (Maybe SQLTransaction -> Maybe SQLError -> IO Bool) ->
                                     IO SQLStatementErrorCallback
sqlStatementErrorCallbackNewSync callback
  = SQLStatementErrorCallback . castRef <$>
      syncCallback2 AlwaysRetain True
        (\ transaction error ->
           fromJSRefUnchecked error >>=
             \ error' ->
               fromJSRefUnchecked transaction >>=
                 \ transaction' -> callback transaction'
                 error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
sqlStatementErrorCallbackNewSync' ::
                                    ForeignRetention ->
                                      Bool ->
                                        (Maybe SQLTransaction -> Maybe SQLError -> IO Bool) ->
                                          IO SQLStatementErrorCallback
sqlStatementErrorCallbackNewSync' retention continueAsync callback
  = SQLStatementErrorCallback . castRef <$>
      syncCallback2 retention continueAsync
        (\ transaction error ->
           fromJSRefUnchecked error >>=
             \ error' ->
               fromJSRefUnchecked transaction >>=
                 \ transaction' -> callback transaction'
                 error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
sqlStatementErrorCallbackNewAsync ::
                                    (Maybe SQLTransaction -> Maybe SQLError -> IO Bool) ->
                                      IO SQLStatementErrorCallback
sqlStatementErrorCallbackNewAsync callback
  = SQLStatementErrorCallback . castRef <$>
      asyncCallback2 AlwaysRetain
        (\ transaction error ->
           fromJSRefUnchecked error >>=
             \ error' ->
               fromJSRefUnchecked transaction >>=
                 \ transaction' -> callback transaction'
                 error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
sqlStatementErrorCallbackNewAsync' ::
                                     ForeignRetention ->
                                       (Maybe SQLTransaction -> Maybe SQLError -> IO Bool) ->
                                         IO SQLStatementErrorCallback
sqlStatementErrorCallbackNewAsync' retention callback
  = SQLStatementErrorCallback . castRef <$>
      asyncCallback2 retention
        (\ transaction error ->
           fromJSRefUnchecked error >>=
             \ error' ->
               fromJSRefUnchecked transaction >>=
                 \ transaction' -> callback transaction'
                 error')
#else
module GHCJS.DOM.SQLStatementErrorCallback (
  ) where
#endif
