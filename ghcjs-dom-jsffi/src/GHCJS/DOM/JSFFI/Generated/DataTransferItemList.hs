{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DataTransferItemList
       (js_item, item, js_clear, clear, js_addFile, addFile, js_add, add,
        js_getLength, getLength, DataTransferItemList,
        castToDataTransferItemList, gTypeDataTransferItemList)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        DataTransferItemList -> Word -> IO (Nullable DataTransferItem)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.item Mozilla DataTransferItemList.item documentation> 
item ::
     (MonadIO m) =>
       DataTransferItemList -> Word -> m (Maybe DataTransferItem)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        DataTransferItemList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.clear Mozilla DataTransferItemList.clear documentation> 
clear :: (MonadIO m) => DataTransferItemList -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"add\"]($2)" js_addFile ::
        DataTransferItemList -> Nullable File -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
addFile ::
        (MonadIO m) => DataTransferItemList -> Maybe File -> m ()
addFile self file
  = liftIO (js_addFile (self) (maybeToNullable file))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_add ::
        DataTransferItemList -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
add ::
    (MonadIO m, ToJSString data', ToJSString type') =>
      DataTransferItemList -> data' -> type' -> m ()
add self data' type'
  = liftIO (js_add (self) (toJSString data') (toJSString type'))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        DataTransferItemList -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.length Mozilla DataTransferItemList.length documentation> 
getLength :: (MonadIO m) => DataTransferItemList -> m Int
getLength self = liftIO (js_getLength (self))