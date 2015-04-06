{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLTransaction
       (js_executeSql, executeSql, SQLTransaction, castToSQLTransaction,
        gTypeSQLTransaction)
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

 
foreign import javascript unsafe
        "$1[\"executeSql\"]($2, $3, $4, $5)" js_executeSql ::
        JSRef SQLTransaction ->
          JSString ->
            JSRef ObjectArray ->
              JSRef SQLStatementCallback ->
                JSRef SQLStatementErrorCallback -> IO ()

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
      (js_executeSql (unSQLTransaction self) (toJSString sqlStatement)
         (maybe jsNull (unObjectArray . toObjectArray) arguments)
         (maybe jsNull unSQLStatementCallback callback)
         (maybe jsNull unSQLStatementErrorCallback errorCallback))
#else
module GHCJS.DOM.SQLTransaction (
  ) where
#endif
