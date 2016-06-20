{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPointList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGPointList,
        castToSVGPointList, gTypeSVGPointList)
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
        SVGPointList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.clear Mozilla SVGPointList.clear documentation> 
clear :: (MonadIO m) => SVGPointList -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        SVGPointList -> Nullable SVGPoint -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize ::
           (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
initialize self item
  = liftIO
      (nullableToMaybe <$> (js_initialize (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGPointList -> Word -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGPointList -> Word -> m (Maybe SVGPoint)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGPointList -> Nullable SVGPoint -> Word -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGPointList -> Maybe SVGPoint -> Word -> m (Maybe SVGPoint)
insertItemBefore self item index
  = liftIO
      (nullableToMaybe <$>
         (js_insertItemBefore (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGPointList -> Nullable SVGPoint -> Word -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGPointList -> Maybe SVGPoint -> Word -> m (Maybe SVGPoint)
replaceItem self item index
  = liftIO
      (nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGPointList -> Word -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGPointList -> Word -> m (Maybe SVGPoint)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGPointList -> Nullable SVGPoint -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem ::
           (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
appendItem self item
  = liftIO
      (nullableToMaybe <$> (js_appendItem (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGPointList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.numberOfItems Mozilla SVGPointList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGPointList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))