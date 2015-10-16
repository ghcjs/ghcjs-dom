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

import GHCJS.Types (JSVal, JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (OnBlocked(..))
import GHCJS.Marshal (fromJSVal)
import GHCJS.Marshal.Pure (pToJSVal)
import GHCJS.Foreign.Callback (releaseCallback)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.SQLError (throwSQLException)
import GHCJS.DOM.JSFFI.Generated.SQLTransactionCallback (newSQLTransactionCallbackSync)
import GHCJS.DOM.JSFFI.Generated.Database as Generated hiding (js_changeVersion, changeVersion, js_transaction, transaction, js_readTransaction, readTransaction)

withSQLTransactionCallback :: (SQLTransaction -> IO ()) -> (SQLTransactionCallback -> IO a) -> IO a
withSQLTransactionCallback f = bracket (newSQLTransactionCallbackSync (f . fromJust)) (\(SQLTransactionCallback c) -> releaseCallback c)

foreign import javascript interruptible
        "$1[\"changeVersion\"]($2, $3, $4, $c, function() { $c(null); });"
        js_changeVersion :: Database -> JSString -> JSString -> Nullable SQLTransactionCallback -> IO (Nullable SQLError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.changeVersion Mozilla Database.changeVersion documentation>
changeVersion' :: (MonadIO m, ToJSString oldVersion, ToJSString newVersion) =>
                  Database -> oldVersion -> newVersion -> Maybe (SQLTransaction -> IO ()) -> m (Maybe SQLError)
changeVersion' self oldVersion newVersion Nothing = liftIO $ nullableToMaybe <$>
    js_changeVersion self (toJSString oldVersion) (toJSString newVersion) (Nullable jsNull)
changeVersion' self oldVersion newVersion (Just callback) = liftIO $ nullableToMaybe <$>
    withSQLTransactionCallback callback
        (js_changeVersion self (toJSString oldVersion) (toJSString newVersion) . Nullable . pToJSVal)

changeVersion :: (MonadIO m, ToJSString oldVersion, ToJSString newVersion) =>
                 Database -> oldVersion -> newVersion -> Maybe (SQLTransaction -> IO ()) -> m ()
changeVersion self oldVersion newVersion callback =
    changeVersion' self oldVersion newVersion callback >>= maybe (return ()) throwSQLException

foreign import javascript interruptible "$1[\"transaction\"]($2, $c, function() { $c(null); });"
        js_transaction :: Database -> SQLTransactionCallback -> IO (Nullable SQLError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.transaction Mozilla Database.transaction documentation>
transaction' :: (MonadIO m) => Database -> (SQLTransaction -> IO ()) -> m (Maybe SQLError)
transaction' self callback = liftIO $ nullableToMaybe <$>
    withSQLTransactionCallback callback
        (js_transaction self)

transaction :: (MonadIO m) => Database -> (SQLTransaction -> IO ()) -> m ()
transaction self callback = transaction' self callback >>= maybe (return ()) throwSQLException

foreign import javascript interruptible
        "$1[\"readTransaction\"]($2, $c, function() { $c(null); });"
        js_readTransaction :: Database -> SQLTransactionCallback -> IO (Nullable SQLError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.readTransaction Mozilla Database.readTransaction documentation>
readTransaction' :: (MonadIO m) => Database -> (SQLTransaction -> IO ()) -> m (Maybe SQLError)
readTransaction' self callback = liftIO $ nullableToMaybe <$>
      withSQLTransactionCallback callback (js_readTransaction self)

readTransaction :: (MonadIO m) => Database -> (SQLTransaction -> IO ()) -> m ()
readTransaction self callback = readTransaction' self callback >>= maybe (return ()) throwSQLException
