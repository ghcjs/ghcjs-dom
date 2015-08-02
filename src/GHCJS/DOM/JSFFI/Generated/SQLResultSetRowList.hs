{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SQLResultSetRowList
       (js_item, item, js_getLength, getLength, SQLResultSetRowList,
        castToSQLResultSetRowList, gTypeSQLResultSetRowList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef SQLResultSetRowList -> Word -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList.item Mozilla SQLResultSetRowList.item documentation> 
item :: (MonadIO m) => SQLResultSetRowList -> Word -> m (JSRef a)
item self index
  = liftIO (js_item (unSQLResultSetRowList self) index)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef SQLResultSetRowList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList.length Mozilla SQLResultSetRowList.length documentation> 
getLength :: (MonadIO m) => SQLResultSetRowList -> m Word
getLength self = liftIO (js_getLength (unSQLResultSetRowList self))