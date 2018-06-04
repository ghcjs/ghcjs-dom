{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGNumberList
       (js_clear, clear, js_initialize, initialize, initialize_,
        js_getItem, getItem, getItem_, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, js_replaceItem, replaceItem,
        replaceItem_, js_removeItem, removeItem, removeItem_,
        js_appendItem, appendItem, appendItem_, js_getNumberOfItems,
        getNumberOfItems, SVGNumberList(..), gTypeSVGNumberList)
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
        SVGNumberList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.clear Mozilla SVGNumberList.clear documentation> 
clear :: (MonadIO m) => SVGNumberList -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript safe "$1[\"initialize\"]($2)"
        js_initialize :: SVGNumberList -> SVGNumber -> IO SVGNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize ::
           (MonadIO m) => SVGNumberList -> SVGNumber -> m SVGNumber
initialize self item = liftIO (js_initialize self item)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize_ :: (MonadIO m) => SVGNumberList -> SVGNumber -> m ()
initialize_ self item = liftIO (void (js_initialize self item))
 
foreign import javascript safe "$1[\"getItem\"]($2)" js_getItem ::
        SVGNumberList -> Word -> IO SVGNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem :: (MonadIO m) => SVGNumberList -> Word -> m SVGNumber
getItem self index = liftIO (js_getItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGNumberList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem self index))
 
foreign import javascript safe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGNumberList -> SVGNumber -> Word -> IO SVGNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) => SVGNumberList -> SVGNumber -> Word -> m SVGNumber
insertItemBefore self item index
  = liftIO (js_insertItemBefore self item index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m) => SVGNumberList -> SVGNumber -> Word -> m ()
insertItemBefore_ self item index
  = liftIO (void (js_insertItemBefore self item index))
 
foreign import javascript safe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGNumberList -> SVGNumber -> Word -> IO SVGNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) => SVGNumberList -> SVGNumber -> Word -> m SVGNumber
replaceItem self item index
  = liftIO (js_replaceItem self item index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m) => SVGNumberList -> SVGNumber -> Word -> m ()
replaceItem_ self item index
  = liftIO (void (js_replaceItem self item index))
 
foreign import javascript safe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGNumberList -> Word -> IO SVGNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem :: (MonadIO m) => SVGNumberList -> Word -> m SVGNumber
removeItem self index = liftIO (js_removeItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGNumberList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem self index))
 
foreign import javascript safe "$1[\"appendItem\"]($2)"
        js_appendItem :: SVGNumberList -> SVGNumber -> IO SVGNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem ::
           (MonadIO m) => SVGNumberList -> SVGNumber -> m SVGNumber
appendItem self item = liftIO (js_appendItem self item)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem_ :: (MonadIO m) => SVGNumberList -> SVGNumber -> m ()
appendItem_ self item = liftIO (void (js_appendItem self item))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGNumberList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGNumberList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems self)