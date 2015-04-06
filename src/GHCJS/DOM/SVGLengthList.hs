{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGLengthList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGLengthList,
        castToSVGLengthList, gTypeSVGLengthList)
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
        JSRef SVGLengthList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.clear Mozilla SVGLengthList.clear documentation> 
clear :: (MonadIO m) => SVGLengthList -> m ()
clear self = liftIO (js_clear (unSVGLengthList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        JSRef SVGLengthList -> JSRef SVGLength -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initialize ::
           (MonadIO m) =>
             SVGLengthList -> Maybe SVGLength -> m (Maybe SVGLength)
initialize self item
  = liftIO
      ((js_initialize (unSVGLengthList self)
          (maybe jsNull unSVGLength item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: JSRef SVGLengthList -> Word -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGLengthList -> Word -> m (Maybe SVGLength)
getItem self index
  = liftIO ((js_getItem (unSVGLengthList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        JSRef SVGLengthList ->
          JSRef SVGLength -> Word -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGLengthList -> Maybe SVGLength -> Word -> m (Maybe SVGLength)
insertItemBefore self item index
  = liftIO
      ((js_insertItemBefore (unSVGLengthList self)
          (maybe jsNull unSVGLength item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        JSRef SVGLengthList ->
          JSRef SVGLength -> Word -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGLengthList -> Maybe SVGLength -> Word -> m (Maybe SVGLength)
replaceItem self item index
  = liftIO
      ((js_replaceItem (unSVGLengthList self)
          (maybe jsNull unSVGLength item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem ::
        JSRef SVGLengthList -> Word -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGLengthList -> Word -> m (Maybe SVGLength)
removeItem self index
  = liftIO
      ((js_removeItem (unSVGLengthList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        JSRef SVGLengthList -> JSRef SVGLength -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItem ::
           (MonadIO m) =>
             SVGLengthList -> Maybe SVGLength -> m (Maybe SVGLength)
appendItem self item
  = liftIO
      ((js_appendItem (unSVGLengthList self)
          (maybe jsNull unSVGLength item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: JSRef SVGLengthList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.numberOfItems Mozilla SVGLengthList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGLengthList -> m Word
getNumberOfItems self
  = liftIO (js_getNumberOfItems (unSVGLengthList self))
#else
module GHCJS.DOM.SVGLengthList (
  ) where
#endif
