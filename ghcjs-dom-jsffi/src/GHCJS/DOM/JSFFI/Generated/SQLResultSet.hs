{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SQLResultSet
       (js_getRows, getRows, getRowsUnsafe, getRowsUnchecked,
        js_getInsertId, getInsertId, js_getRowsAffected, getRowsAffected,
        SQLResultSet(..), gTypeSQLResultSet)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        SQLResultSet -> IO (Nullable SQLResultSetRowList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rows Mozilla SQLResultSet.rows documentation> 
getRows ::
        (MonadIO m) => SQLResultSet -> m (Maybe SQLResultSetRowList)
getRows self = liftIO (nullableToMaybe <$> (js_getRows (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rows Mozilla SQLResultSet.rows documentation> 
getRowsUnsafe ::
              (MonadIO m, HasCallStack) => SQLResultSet -> m SQLResultSetRowList
getRowsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRows (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rows Mozilla SQLResultSet.rows documentation> 
getRowsUnchecked ::
                 (MonadIO m) => SQLResultSet -> m SQLResultSetRowList
getRowsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRows (self)))
 
foreign import javascript unsafe "$1[\"insertId\"]" js_getInsertId
        :: SQLResultSet -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.insertId Mozilla SQLResultSet.insertId documentation> 
getInsertId :: (MonadIO m) => SQLResultSet -> m Int
getInsertId self = liftIO (js_getInsertId (self))
 
foreign import javascript unsafe "$1[\"rowsAffected\"]"
        js_getRowsAffected :: SQLResultSet -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rowsAffected Mozilla SQLResultSet.rowsAffected documentation> 
getRowsAffected :: (MonadIO m) => SQLResultSet -> m Int
getRowsAffected self = liftIO (js_getRowsAffected (self))