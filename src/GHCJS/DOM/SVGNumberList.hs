{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGNumberList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGNumberList,
        castToSVGNumberList, gTypeSVGNumberList)
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
        JSRef SVGNumberList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.clear Mozilla SVGNumberList.clear documentation> 
clear :: (MonadIO m) => SVGNumberList -> m ()
clear self = liftIO (js_clear (unSVGNumberList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        JSRef SVGNumberList -> JSRef SVGNumber -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize ::
           (MonadIO m) =>
             SVGNumberList -> Maybe SVGNumber -> m (Maybe SVGNumber)
initialize self item
  = liftIO
      ((js_initialize (unSVGNumberList self)
          (maybe jsNull unSVGNumber item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: JSRef SVGNumberList -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
getItem self index
  = liftIO ((js_getItem (unSVGNumberList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        JSRef SVGNumberList ->
          JSRef SVGNumber -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGNumberList -> Maybe SVGNumber -> Word -> m (Maybe SVGNumber)
insertItemBefore self item index
  = liftIO
      ((js_insertItemBefore (unSVGNumberList self)
          (maybe jsNull unSVGNumber item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        JSRef SVGNumberList ->
          JSRef SVGNumber -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGNumberList -> Maybe SVGNumber -> Word -> m (Maybe SVGNumber)
replaceItem self item index
  = liftIO
      ((js_replaceItem (unSVGNumberList self)
          (maybe jsNull unSVGNumber item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem ::
        JSRef SVGNumberList -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
removeItem self index
  = liftIO
      ((js_removeItem (unSVGNumberList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        JSRef SVGNumberList -> JSRef SVGNumber -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem ::
           (MonadIO m) =>
             SVGNumberList -> Maybe SVGNumber -> m (Maybe SVGNumber)
appendItem self item
  = liftIO
      ((js_appendItem (unSVGNumberList self)
          (maybe jsNull unSVGNumber item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: JSRef SVGNumberList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGNumberList -> m Word
getNumberOfItems self
  = liftIO (js_getNumberOfItems (unSVGNumberList self))
#else
module GHCJS.DOM.SVGNumberList (
  ) where
#endif
