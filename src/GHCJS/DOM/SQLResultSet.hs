{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLResultSet
       (js_getRows, getRows, js_getInsertId, getInsertId,
        js_getRowsAffected, getRowsAffected, SQLResultSet,
        castToSQLResultSet, gTypeSQLResultSet)
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

 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        JSRef SQLResultSet -> IO (JSRef SQLResultSetRowList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rows Mozilla SQLResultSet.rows documentation> 
getRows ::
        (MonadIO m) => SQLResultSet -> m (Maybe SQLResultSetRowList)
getRows self
  = liftIO ((js_getRows (unSQLResultSet self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertId\"]" js_getInsertId
        :: JSRef SQLResultSet -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.insertId Mozilla SQLResultSet.insertId documentation> 
getInsertId :: (MonadIO m) => SQLResultSet -> m Int
getInsertId self = liftIO (js_getInsertId (unSQLResultSet self))
 
foreign import javascript unsafe "$1[\"rowsAffected\"]"
        js_getRowsAffected :: JSRef SQLResultSet -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rowsAffected Mozilla SQLResultSet.rowsAffected documentation> 
getRowsAffected :: (MonadIO m) => SQLResultSet -> m Int
getRowsAffected self
  = liftIO (js_getRowsAffected (unSQLResultSet self))
#else
module GHCJS.DOM.SQLResultSet (
  ) where
#endif
