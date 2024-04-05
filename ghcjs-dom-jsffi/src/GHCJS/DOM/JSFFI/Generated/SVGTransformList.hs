{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGTransformList
       (js_clear, clear, js_initialize, initialize, initialize_,
        js_getItem, getItem, getItem_, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, js_replaceItem, replaceItem,
        replaceItem_, js_removeItem, removeItem, removeItem_,
        js_appendItem, appendItem, appendItem_,
        js_createSVGTransformFromMatrix, createSVGTransformFromMatrix,
        createSVGTransformFromMatrix_, js_consolidate, consolidate,
        consolidate_, js_getNumberOfItems, getNumberOfItems,
        SVGTransformList(..), gTypeSVGTransformList)
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
        SVGTransformList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.clear Mozilla SVGTransformList.clear documentation> 
clear :: (MonadIO m) => SVGTransformList -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript safe "$1[\"initialize\"]($2)"
        js_initialize ::
        SVGTransformList -> SVGTransform -> IO SVGTransform

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize ::
           (MonadIO m) => SVGTransformList -> SVGTransform -> m SVGTransform
initialize self item = liftIO (js_initialize self item)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize_ ::
            (MonadIO m) => SVGTransformList -> SVGTransform -> m ()
initialize_ self item = liftIO (void (js_initialize self item))
 
foreign import javascript safe "$1[\"getItem\"]($2)" js_getItem ::
        SVGTransformList -> Word -> IO SVGTransform

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGTransformList -> Word -> m SVGTransform
getItem self index = liftIO (js_getItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGTransformList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem self index))
 
foreign import javascript safe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGTransformList -> SVGTransform -> Word -> IO SVGTransform

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGTransformList -> SVGTransform -> Word -> m SVGTransform
insertItemBefore self item index
  = liftIO (js_insertItemBefore self item index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m) => SVGTransformList -> SVGTransform -> Word -> m ()
insertItemBefore_ self item index
  = liftIO (void (js_insertItemBefore self item index))
 
foreign import javascript safe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGTransformList -> SVGTransform -> Word -> IO SVGTransform

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGTransformList -> SVGTransform -> Word -> m SVGTransform
replaceItem self item index
  = liftIO (js_replaceItem self item index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m) => SVGTransformList -> SVGTransform -> Word -> m ()
replaceItem_ self item index
  = liftIO (void (js_replaceItem self item index))
 
foreign import javascript safe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGTransformList -> Word -> IO SVGTransform

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGTransformList -> Word -> m SVGTransform
removeItem self index = liftIO (js_removeItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGTransformList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem self index))
 
foreign import javascript safe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGTransformList -> SVGTransform -> IO SVGTransform

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem ::
           (MonadIO m) => SVGTransformList -> SVGTransform -> m SVGTransform
appendItem self item = liftIO (js_appendItem self item)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem_ ::
            (MonadIO m) => SVGTransformList -> SVGTransform -> m ()
appendItem_ self item = liftIO (void (js_appendItem self item))
 
foreign import javascript safe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        js_createSVGTransformFromMatrix ::
        SVGTransformList -> SVGMatrix -> IO SVGTransform

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadIO m) => SVGTransformList -> SVGMatrix -> m SVGTransform
createSVGTransformFromMatrix self matrix
  = liftIO (js_createSVGTransformFromMatrix self matrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix_ ::
                              (MonadIO m) => SVGTransformList -> SVGMatrix -> m ()
createSVGTransformFromMatrix_ self matrix
  = liftIO (void (js_createSVGTransformFromMatrix self matrix))
 
foreign import javascript safe "$1[\"consolidate\"]()"
        js_consolidate :: SVGTransformList -> IO SVGTransform

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate :: (MonadIO m) => SVGTransformList -> m SVGTransform
consolidate self = liftIO (js_consolidate self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate_ :: (MonadIO m) => SVGTransformList -> m ()
consolidate_ self = liftIO (void (js_consolidate self))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGTransformList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.numberOfItems Mozilla SVGTransformList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGTransformList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems self)