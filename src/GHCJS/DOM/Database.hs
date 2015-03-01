{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Database
       (js_changeVersion, changeVersion, js_transaction, transaction,
        js_readTransaction, readTransaction, js_getVersion, getVersion,
        Database, castToDatabase, gTypeDatabase)
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

 
foreign import javascript unsafe
        "$1[\"changeVersion\"]($2, $3, $4,\n$5, $6)" js_changeVersion ::
        JSRef Database ->
          JSString ->
            JSString ->
              JSRef SQLTransactionCallback ->
                JSRef SQLTransactionErrorCallback -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.changeVersion Mozilla Database.changeVersion documentation> 
changeVersion ::
              (MonadIO m, ToJSString oldVersion, ToJSString newVersion) =>
                Database ->
                  oldVersion ->
                    newVersion ->
                      Maybe SQLTransactionCallback ->
                        Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> m ()
changeVersion self oldVersion newVersion callback errorCallback
  successCallback
  = liftIO
      (js_changeVersion (unDatabase self) (toJSString oldVersion)
         (toJSString newVersion)
         (maybe jsNull unSQLTransactionCallback callback)
         (maybe jsNull unSQLTransactionErrorCallback errorCallback)
         (maybe jsNull unVoidCallback successCallback))
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3, $4)"
        js_transaction ::
        JSRef Database ->
          JSRef SQLTransactionCallback ->
            JSRef SQLTransactionErrorCallback -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.transaction Mozilla Database.transaction documentation> 
transaction ::
            (MonadIO m) =>
              Database ->
                Maybe SQLTransactionCallback ->
                  Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> m ()
transaction self callback errorCallback successCallback
  = liftIO
      (js_transaction (unDatabase self)
         (maybe jsNull unSQLTransactionCallback callback)
         (maybe jsNull unSQLTransactionErrorCallback errorCallback)
         (maybe jsNull unVoidCallback successCallback))
 
foreign import javascript unsafe
        "$1[\"readTransaction\"]($2, $3,\n$4)" js_readTransaction ::
        JSRef Database ->
          JSRef SQLTransactionCallback ->
            JSRef SQLTransactionErrorCallback -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.readTransaction Mozilla Database.readTransaction documentation> 
readTransaction ::
                (MonadIO m) =>
                  Database ->
                    Maybe SQLTransactionCallback ->
                      Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> m ()
readTransaction self callback errorCallback successCallback
  = liftIO
      (js_readTransaction (unDatabase self)
         (maybe jsNull unSQLTransactionCallback callback)
         (maybe jsNull unSQLTransactionErrorCallback errorCallback)
         (maybe jsNull unVoidCallback successCallback))
 
foreign import javascript unsafe "$1[\"version\"]" js_getVersion ::
        JSRef Database -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.version Mozilla Database.version documentation> 
getVersion ::
           (MonadIO m, FromJSString result) => Database -> m result
getVersion self
  = liftIO (fromJSString <$> (js_getVersion (unDatabase self)))
#else
module GHCJS.DOM.Database (
  ) where
#endif
