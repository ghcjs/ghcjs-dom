{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGNumberList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGNumberList,
        castToSVGNumberList, gTypeSVGNumberList)
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
        SVGNumberList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.clear Mozilla SVGNumberList.clear documentation> 
clear :: (MonadIO m) => SVGNumberList -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        SVGNumberList -> Nullable SVGNumber -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize ::
           (MonadIO m) =>
             SVGNumberList -> Maybe SVGNumber -> m (Maybe SVGNumber)
initialize self item
  = liftIO
      (nullableToMaybe <$> (js_initialize (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGNumberList -> Word -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGNumberList ->
          Nullable SVGNumber -> Word -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGNumberList -> Maybe SVGNumber -> Word -> m (Maybe SVGNumber)
insertItemBefore self item index
  = liftIO
      (nullableToMaybe <$>
         (js_insertItemBefore (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGNumberList ->
          Nullable SVGNumber -> Word -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGNumberList -> Maybe SVGNumber -> Word -> m (Maybe SVGNumber)
replaceItem self item index
  = liftIO
      (nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGNumberList -> Word -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGNumberList -> Nullable SVGNumber -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem ::
           (MonadIO m) =>
             SVGNumberList -> Maybe SVGNumber -> m (Maybe SVGNumber)
appendItem self item
  = liftIO
      (nullableToMaybe <$> (js_appendItem (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGNumberList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGNumberList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))