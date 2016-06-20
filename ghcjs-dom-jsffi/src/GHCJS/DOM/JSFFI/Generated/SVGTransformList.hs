{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGTransformList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_createSVGTransformFromMatrix, createSVGTransformFromMatrix,
        js_consolidate, consolidate, js_getNumberOfItems, getNumberOfItems,
        SVGTransformList, castToSVGTransformList, gTypeSVGTransformList)
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
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        SVGTransformList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.clear Mozilla SVGTransformList.clear documentation> 
clear :: (MonadIO m) => SVGTransformList -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        SVGTransformList ->
          Nullable SVGTransform -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize ::
           (MonadIO m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
initialize self item
  = liftIO
      (nullableToMaybe <$> (js_initialize (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGTransformList -> Word -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGTransformList ->
          Nullable SVGTransform -> Word -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGTransformList ->
                     Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
insertItemBefore self item index
  = liftIO
      (nullableToMaybe <$>
         (js_insertItemBefore (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGTransformList ->
          Nullable SVGTransform -> Word -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGTransformList ->
                Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
replaceItem self item index
  = liftIO
      (nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem ::
        SVGTransformList -> Word -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGTransformList ->
          Nullable SVGTransform -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem ::
           (MonadIO m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
appendItem self item
  = liftIO
      (nullableToMaybe <$> (js_appendItem (self) (maybeToNullable item)))
 
foreign import javascript unsafe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        js_createSVGTransformFromMatrix ::
        SVGTransformList ->
          Nullable SVGMatrix -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadIO m) =>
                               SVGTransformList -> Maybe SVGMatrix -> m (Maybe SVGTransform)
createSVGTransformFromMatrix self matrix
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))
 
foreign import javascript unsafe "$1[\"consolidate\"]()"
        js_consolidate :: SVGTransformList -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate ::
            (MonadIO m) => SVGTransformList -> m (Maybe SVGTransform)
consolidate self
  = liftIO (nullableToMaybe <$> (js_consolidate (self)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGTransformList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.numberOfItems Mozilla SVGTransformList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGTransformList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))