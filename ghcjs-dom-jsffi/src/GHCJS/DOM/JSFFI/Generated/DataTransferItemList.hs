{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DataTransferItemList
       (js_item, item, item_, js_clear, clear, js_addFile, addFile,
        js_add, add, js_getLength, getLength, DataTransferItemList(..),
        gTypeDataTransferItemList)
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
 
foreign import javascript unsafe "$1[$2]" js_item ::
        DataTransferItemList -> Word -> IO DataTransferItem

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.item Mozilla DataTransferItemList.item documentation> 
item ::
     (MonadIO m) => DataTransferItemList -> Word -> m DataTransferItem
item self index = liftIO (js_item self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.item Mozilla DataTransferItemList.item documentation> 
item_ :: (MonadIO m) => DataTransferItemList -> Word -> m ()
item_ self index = liftIO (void (js_item self index))
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        DataTransferItemList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.clear Mozilla DataTransferItemList.clear documentation> 
clear :: (MonadIO m) => DataTransferItemList -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript unsafe "$1[\"add\"]($2)" js_addFile ::
        DataTransferItemList -> Optional File -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
addFile ::
        (MonadIO m) => DataTransferItemList -> Maybe File -> m ()
addFile self file = liftIO (js_addFile self (maybeToOptional file))
 
foreign import javascript safe "$1[\"add\"]($2, $3)" js_add ::
        DataTransferItemList ->
          Optional JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
add ::
    (MonadIO m, ToJSString data', ToJSString type') =>
      DataTransferItemList -> Maybe data' -> Maybe type' -> m ()
add self data' type'
  = liftIO
      (js_add self (toOptionalJSString data') (toOptionalJSString type'))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        DataTransferItemList -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.length Mozilla DataTransferItemList.length documentation> 
getLength :: (MonadIO m) => DataTransferItemList -> m Int
getLength self = liftIO (js_getLength self)