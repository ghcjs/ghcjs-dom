{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGPathSegList,
        castToSVGPathSegList, gTypeSVGPathSegList)
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
        JSRef SVGPathSegList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.clear Mozilla SVGPathSegList.clear documentation> 
clear :: (MonadIO m) => SVGPathSegList -> m ()
clear self = liftIO (js_clear (unSVGPathSegList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        JSRef SVGPathSegList -> JSRef SVGPathSeg -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initialize ::
           (MonadIO m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m (Maybe SVGPathSeg)
initialize self newItem
  = liftIO
      ((js_initialize (unSVGPathSegList self)
          (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: JSRef SVGPathSegList -> Word -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGPathSegList -> Word -> m (Maybe SVGPathSeg)
getItem self index
  = liftIO ((js_getItem (unSVGPathSegList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        JSRef SVGPathSegList ->
          JSRef SVGPathSeg -> Word -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m, IsSVGPathSeg newItem) =>
                   SVGPathSegList -> Maybe newItem -> Word -> m (Maybe SVGPathSeg)
insertItemBefore self newItem index
  = liftIO
      ((js_insertItemBefore (unSVGPathSegList self)
          (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        JSRef SVGPathSegList ->
          JSRef SVGPathSeg -> Word -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItem ::
            (MonadIO m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> Word -> m (Maybe SVGPathSeg)
replaceItem self newItem index
  = liftIO
      ((js_replaceItem (unSVGPathSegList self)
          (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem ::
        JSRef SVGPathSegList -> Word -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGPathSegList -> Word -> m (Maybe SVGPathSeg)
removeItem self index
  = liftIO
      ((js_removeItem (unSVGPathSegList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        JSRef SVGPathSegList -> JSRef SVGPathSeg -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItem ::
           (MonadIO m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m (Maybe SVGPathSeg)
appendItem self newItem
  = liftIO
      ((js_appendItem (unSVGPathSegList self)
          (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: JSRef SVGPathSegList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.numberOfItems Mozilla SVGPathSegList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGPathSegList -> m Word
getNumberOfItems self
  = liftIO (js_getNumberOfItems (unSVGPathSegList self))
#else
module GHCJS.DOM.SVGPathSegList (
  ) where
#endif
