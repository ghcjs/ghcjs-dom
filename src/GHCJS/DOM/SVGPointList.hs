{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPointList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGPointList,
        castToSVGPointList, gTypeSVGPointList)
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
        JSRef SVGPointList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.clear Mozilla SVGPointList.clear documentation> 
clear :: (MonadIO m) => SVGPointList -> m ()
clear self = liftIO (js_clear (unSVGPointList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        JSRef SVGPointList -> JSRef SVGPoint -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize ::
           (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
initialize self item
  = liftIO
      ((js_initialize (unSVGPointList self)
          (maybe jsNull unSVGPoint item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: JSRef SVGPointList -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGPointList -> Word -> m (Maybe SVGPoint)
getItem self index
  = liftIO ((js_getItem (unSVGPointList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        JSRef SVGPointList -> JSRef SVGPoint -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGPointList -> Maybe SVGPoint -> Word -> m (Maybe SVGPoint)
insertItemBefore self item index
  = liftIO
      ((js_insertItemBefore (unSVGPointList self)
          (maybe jsNull unSVGPoint item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        JSRef SVGPointList -> JSRef SVGPoint -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGPointList -> Maybe SVGPoint -> Word -> m (Maybe SVGPoint)
replaceItem self item index
  = liftIO
      ((js_replaceItem (unSVGPointList self)
          (maybe jsNull unSVGPoint item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: JSRef SVGPointList -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGPointList -> Word -> m (Maybe SVGPoint)
removeItem self index
  = liftIO
      ((js_removeItem (unSVGPointList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        JSRef SVGPointList -> JSRef SVGPoint -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem ::
           (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
appendItem self item
  = liftIO
      ((js_appendItem (unSVGPointList self)
          (maybe jsNull unSVGPoint item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: JSRef SVGPointList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.numberOfItems Mozilla SVGPointList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGPointList -> m Word
getNumberOfItems self
  = liftIO (js_getNumberOfItems (unSVGPointList self))
#else
module GHCJS.DOM.SVGPointList (
  ) where
#endif
