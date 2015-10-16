{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLTransaction
       (js_executeSql, executeSql, SQLTransaction, castToSQLTransaction,
        gTypeSQLTransaction)
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
 
foreign import javascript unsafe
        "$1[\"executeSql\"]($2, $3, $4, $5)" js_executeSql ::
        SQLTransaction ->
          JSString ->
            Nullable ObjectArray ->
              Nullable SQLStatementCallback ->
                Nullable SQLStatementErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransaction.executeSql Mozilla SQLTransaction.executeSql documentation> 
executeSql ::
           (MonadIO m, ToJSString sqlStatement, IsObjectArray arguments) =>
             SQLTransaction ->
               sqlStatement ->
                 Maybe arguments ->
                   Maybe SQLStatementCallback ->
                     Maybe SQLStatementErrorCallback -> m ()
executeSql self sqlStatement arguments callback errorCallback
  = liftIO
      (js_executeSql (self) (toJSString sqlStatement)
         (maybeToNullable (fmap toObjectArray arguments))
         (maybeToNullable callback)
         (maybeToNullable errorCallback))