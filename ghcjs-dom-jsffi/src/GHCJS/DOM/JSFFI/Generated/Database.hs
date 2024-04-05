{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Database
       (js_changeVersion, changeVersion, js_transaction, transaction,
        js_readTransaction, readTransaction, js_getVersion, getVersion,
        Database(..), gTypeDatabase)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "$1[\"changeVersion\"]($2, $3, $4,\n$5, $6)" js_changeVersion ::
        Database ->
          JSString ->
            JSString ->
              Optional SQLTransactionCallback ->
                Optional SQLTransactionErrorCallback ->
                  Optional VoidCallback -> IO ()

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
      (js_changeVersion self (toJSString oldVersion)
         (toJSString newVersion)
         (maybeToOptional callback)
         (maybeToOptional errorCallback)
         (maybeToOptional successCallback))
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3, $4)"
        js_transaction ::
        Database ->
          SQLTransactionCallback ->
            Optional SQLTransactionErrorCallback ->
              Optional VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.transaction Mozilla Database.transaction documentation> 
transaction ::
            (MonadIO m) =>
              Database ->
                SQLTransactionCallback ->
                  Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> m ()
transaction self callback errorCallback successCallback
  = liftIO
      (js_transaction self callback (maybeToOptional errorCallback)
         (maybeToOptional successCallback))
 
foreign import javascript unsafe
        "$1[\"readTransaction\"]($2, $3,\n$4)" js_readTransaction ::
        Database ->
          SQLTransactionCallback ->
            Optional SQLTransactionErrorCallback ->
              Optional VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.readTransaction Mozilla Database.readTransaction documentation> 
readTransaction ::
                (MonadIO m) =>
                  Database ->
                    SQLTransactionCallback ->
                      Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> m ()
readTransaction self callback errorCallback successCallback
  = liftIO
      (js_readTransaction self callback (maybeToOptional errorCallback)
         (maybeToOptional successCallback))
 
foreign import javascript unsafe "$1[\"version\"]" js_getVersion ::
        Database -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.version Mozilla Database.version documentation> 
getVersion ::
           (MonadIO m, FromJSString result) => Database -> m result
getVersion self = liftIO (fromJSString <$> (js_getVersion self))