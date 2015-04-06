{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTransformList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_createSVGTransformFromMatrix, createSVGTransformFromMatrix,
        js_consolidate, consolidate, js_getNumberOfItems, getNumberOfItems,
        SVGTransformList, castToSVGTransformList, gTypeSVGTransformList)
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

 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        JSRef SVGTransformList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.clear Mozilla SVGTransformList.clear documentation> 
clear :: (MonadIO m) => SVGTransformList -> m ()
clear self = liftIO (js_clear (unSVGTransformList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize ::
           (MonadIO m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
initialize self item
  = liftIO
      ((js_initialize (unSVGTransformList self)
          (maybe jsNull unSVGTransform item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: JSRef SVGTransformList -> Word -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
getItem self index
  = liftIO
      ((js_getItem (unSVGTransformList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> Word -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGTransformList ->
                     Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
insertItemBefore self item index
  = liftIO
      ((js_insertItemBefore (unSVGTransformList self)
          (maybe jsNull unSVGTransform item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> Word -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGTransformList ->
                Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
replaceItem self item index
  = liftIO
      ((js_replaceItem (unSVGTransformList self)
          (maybe jsNull unSVGTransform item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem ::
        JSRef SVGTransformList -> Word -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
removeItem self index
  = liftIO
      ((js_removeItem (unSVGTransformList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem ::
           (MonadIO m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
appendItem self item
  = liftIO
      ((js_appendItem (unSVGTransformList self)
          (maybe jsNull unSVGTransform item))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        js_createSVGTransformFromMatrix ::
        JSRef SVGTransformList ->
          JSRef SVGMatrix -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadIO m) =>
                               SVGTransformList -> Maybe SVGMatrix -> m (Maybe SVGTransform)
createSVGTransformFromMatrix self matrix
  = liftIO
      ((js_createSVGTransformFromMatrix (unSVGTransformList self)
          (maybe jsNull unSVGMatrix matrix))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"consolidate\"]()"
        js_consolidate :: JSRef SVGTransformList -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate ::
            (MonadIO m) => SVGTransformList -> m (Maybe SVGTransform)
consolidate self
  = liftIO ((js_consolidate (unSVGTransformList self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: JSRef SVGTransformList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.numberOfItems Mozilla SVGTransformList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGTransformList -> m Word
getNumberOfItems self
  = liftIO (js_getNumberOfItems (unSVGTransformList self))
#else
module GHCJS.DOM.SVGTransformList (
  ) where
#endif
