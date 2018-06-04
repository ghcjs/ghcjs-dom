{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPointList
       (js_clear, clear, js_initialize, initialize, initialize_,
        js_getItem, getItem, getItem_, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, js_replaceItem, replaceItem,
        replaceItem_, js_removeItem, removeItem, removeItem_,
        js_appendItem, appendItem, appendItem_, js_getNumberOfItems,
        getNumberOfItems, SVGPointList(..), gTypeSVGPointList)
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
 
foreign import javascript safe "$1[\"clear\"]()" js_clear ::
        SVGPointList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.clear Mozilla SVGPointList.clear documentation> 
clear :: (MonadIO m) => SVGPointList -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript safe "$1[\"initialize\"]($2)"
        js_initialize :: SVGPointList -> SVGPoint -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize :: (MonadIO m) => SVGPointList -> SVGPoint -> m SVGPoint
initialize self item = liftIO (js_initialize self item)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize_ :: (MonadIO m) => SVGPointList -> SVGPoint -> m ()
initialize_ self item = liftIO (void (js_initialize self item))
 
foreign import javascript safe "$1[\"getItem\"]($2)" js_getItem ::
        SVGPointList -> Word -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem :: (MonadIO m) => SVGPointList -> Word -> m SVGPoint
getItem self index = liftIO (js_getItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGPointList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem self index))
 
foreign import javascript safe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGPointList -> SVGPoint -> Word -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) => SVGPointList -> SVGPoint -> Word -> m SVGPoint
insertItemBefore self item index
  = liftIO (js_insertItemBefore self item index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m) => SVGPointList -> SVGPoint -> Word -> m ()
insertItemBefore_ self item index
  = liftIO (void (js_insertItemBefore self item index))
 
foreign import javascript safe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem :: SVGPointList -> SVGPoint -> Word -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) => SVGPointList -> SVGPoint -> Word -> m SVGPoint
replaceItem self item index
  = liftIO (js_replaceItem self item index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m) => SVGPointList -> SVGPoint -> Word -> m ()
replaceItem_ self item index
  = liftIO (void (js_replaceItem self item index))
 
foreign import javascript safe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGPointList -> Word -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem :: (MonadIO m) => SVGPointList -> Word -> m SVGPoint
removeItem self index = liftIO (js_removeItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGPointList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem self index))
 
foreign import javascript safe "$1[\"appendItem\"]($2)"
        js_appendItem :: SVGPointList -> SVGPoint -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem :: (MonadIO m) => SVGPointList -> SVGPoint -> m SVGPoint
appendItem self item = liftIO (js_appendItem self item)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem_ :: (MonadIO m) => SVGPointList -> SVGPoint -> m ()
appendItem_ self item = liftIO (void (js_appendItem self item))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGPointList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.numberOfItems Mozilla SVGPointList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGPointList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems self)