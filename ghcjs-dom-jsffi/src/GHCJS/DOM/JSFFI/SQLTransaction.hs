{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, GHCForeignImportPrim,
             UnboxedTuples, MagicHash, UnliftedFFITypes, LambdaCase #-}
module GHCJS.DOM.JSFFI.SQLTransaction (
    module Generated
  , js_executeSql
  , executeSql'
  , executeSql
  , executeSql_
) where

import GHC.Base (IO(..))
import GHC.Prim (RealWorld, State#, ByteArray#)

import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Prim (JSVal(..))
import GHCJS.Types (JSString)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.SQLError (throwSQLException)
import GHCJS.DOM.JSFFI.Generated.SQLTransaction as Generated hiding (js_executeSql, executeSql)

foreign import javascript interruptible
        "$1[\"executeSql\"]($2, $3, function(tx, rs) { $c(true, rs); }, function(tx, e) { $c(false, e); });"
        js_executeSql :: SQLTransaction -> JSString -> Nullable ObjectArray -> State# RealWorld -> (# State# RealWorld, Bool, ByteArray# #)

executeSql' :: (MonadIO m, ToJSString sqlStatement, IsObjectArray arguments) =>
              SQLTransaction -> sqlStatement -> Maybe arguments -> m (Either SQLError SQLResultSet)
executeSql' self sqlStatement arguments = liftIO $ IO $ \s# ->
      case js_executeSql self (toJSString sqlStatement) (maybeToNullable . fmap toObjectArray $ arguments) s# of
          (# s2#, False, error #) -> (# s2#, Left  (SQLError     (JSVal error)) #)
          (# s2#, True,  rs    #) -> (# s2#, Right (SQLResultSet (JSVal rs   )) #)

executeSql :: (MonadIO m, ToJSString sqlStatement, IsObjectArray arguments) =>
              SQLTransaction -> sqlStatement -> Maybe arguments -> m SQLResultSet
executeSql self sqlStatement arguments = executeSql' self sqlStatement arguments >>= either throwSQLException return

executeSql_ :: (MonadIO m, ToJSString sqlStatement, IsObjectArray arguments) =>
              SQLTransaction -> sqlStatement -> Maybe arguments -> m ()
executeSql_ self sqlStatement arguments = void $ executeSql self sqlStatement arguments
