{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Database (
    module Generated
  , js_changeVersion
  , changeVersion'
  , changeVersion
  , js_transaction
  , transaction'
  , transaction
  , js_readTransaction
  , readTransaction'
  , readTransaction
) where

import Data.Maybe (fromJust, maybe)

import Control.Monad.IO.Class (MonadIO(..))
import Control.Exception (Exception, bracket)

import GHCJS.Types (JSRef, JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (OnBlocked(..))
import GHCJS.Marshal (fromJSRef)
import GHCJS.Marshal.Pure (pToJSRef)
import GHCJS.Foreign.Callback (releaseCallback)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.SQLError (throwSQLException)
import GHCJS.DOM.JSFFI.Generated.SQLTransactionCallback (newSQLTransactionCallbackSync)
import GHCJS.DOM.JSFFI.Generated.Database as Generated hiding (js_changeVersion, changeVersion, js_transaction, transaction, js_readTransaction, readTransaction)

withSQLTransactionCallback :: (SQLTransaction -> IO ()) -> (SQLTransactionCallback -> IO a) -> IO a
withSQLTransactionCallback f = bracket (newSQLTransactionCallbackSync (f . fromJust)) releaseCallback

foreign import javascript interruptible
        "$1[\"changeVersion\"]($2, $3, $4, $c, function() { $c(null); });"
        js_changeVersion :: JSRef Database -> JSString -> JSString -> JSRef SQLTransactionCallback -> IO (JSRef SQLError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.changeVersion Mozilla Database.changeVersion documentation>
changeVersion' :: (MonadIO m, ToJSString oldVersion, ToJSString newVersion) =>
                  Database -> oldVersion -> newVersion -> Maybe (SQLTransaction -> IO ()) -> m (Maybe SQLError)
changeVersion' self oldVersion newVersion Nothing = liftIO $
    js_changeVersion (unDatabase self) (toJSString oldVersion) (toJSString newVersion) jsNull >>= fromJSRef
changeVersion' self oldVersion newVersion (Just callback) = liftIO $ withSQLTransactionCallback callback
    (js_changeVersion (unDatabase self) (toJSString oldVersion) (toJSString newVersion) . pToJSRef) >>= fromJSRef

changeVersion :: (MonadIO m, ToJSString oldVersion, ToJSString newVersion) =>
                 Database -> oldVersion -> newVersion -> Maybe (SQLTransaction -> IO ()) -> m ()
changeVersion self oldVersion newVersion callback =
    changeVersion' self oldVersion newVersion callback >>= maybe (return ()) throwSQLException

foreign import javascript interruptible "$1[\"transaction\"]($2, $c, function() { $c(null); });"
        js_transaction :: JSRef Database -> JSRef SQLTransactionCallback -> IO (JSRef SQLError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.transaction Mozilla Database.transaction documentation>
transaction' :: (MonadIO m) => Database -> (SQLTransaction -> IO ()) -> m (Maybe SQLError)
transaction' self callback = liftIO $ withSQLTransactionCallback callback
    (js_transaction (unDatabase self) . pToJSRef) >>= fromJSRef

transaction :: (MonadIO m) => Database -> (SQLTransaction -> IO ()) -> m ()
transaction self callback = transaction' self callback >>= maybe (return ()) throwSQLException

foreign import javascript interruptible
        "$1[\"readTransaction\"]($2, $c, function() { $c(null); });"
        js_readTransaction :: JSRef Database -> JSRef SQLTransactionCallback -> IO (JSRef SQLError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.readTransaction Mozilla Database.readTransaction documentation>
readTransaction' :: (MonadIO m) => Database -> (SQLTransaction -> IO ()) -> m (Maybe SQLError)
readTransaction' self callback = liftIO $
      withSQLTransactionCallback callback (js_readTransaction (unDatabase self) . pToJSRef) >>= fromJSRef

readTransaction :: (MonadIO m) => Database -> (SQLTransaction -> IO ()) -> m ()
readTransaction self callback = readTransaction' self callback >>= maybe (return ()) throwSQLException
