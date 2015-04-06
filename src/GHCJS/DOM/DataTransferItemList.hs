{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DataTransferItemList
       (js_item, item, js_clear, clear, js_addFile, addFile, js_add, add,
        js_getLength, getLength, DataTransferItemList,
        castToDataTransferItemList, gTypeDataTransferItemList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef DataTransferItemList -> Word -> IO (JSRef DataTransferItem)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.item Mozilla DataTransferItemList.item documentation> 
item ::
     (MonadIO m) =>
       DataTransferItemList -> Word -> m (Maybe DataTransferItem)
item self index
  = liftIO
      ((js_item (unDataTransferItemList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        JSRef DataTransferItemList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.clear Mozilla DataTransferItemList.clear documentation> 
clear :: (MonadIO m) => DataTransferItemList -> m ()
clear self = liftIO (js_clear (unDataTransferItemList self))
 
foreign import javascript unsafe "$1[\"add\"]($2)" js_addFile ::
        JSRef DataTransferItemList -> JSRef File -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
addFile ::
        (MonadIO m) => DataTransferItemList -> Maybe File -> m ()
addFile self file
  = liftIO
      (js_addFile (unDataTransferItemList self)
         (maybe jsNull unFile file))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_add ::
        JSRef DataTransferItemList -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.add Mozilla DataTransferItemList.add documentation> 
add ::
    (MonadIO m, ToJSString data', ToJSString type') =>
      DataTransferItemList -> data' -> type' -> m ()
add self data' type'
  = liftIO
      (js_add (unDataTransferItemList self) (toJSString data')
         (toJSString type'))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef DataTransferItemList -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList.length Mozilla DataTransferItemList.length documentation> 
getLength :: (MonadIO m) => DataTransferItemList -> m Int
getLength self
  = liftIO (js_getLength (unDataTransferItemList self))
#else
module GHCJS.DOM.DataTransferItemList (
  ) where
#endif
