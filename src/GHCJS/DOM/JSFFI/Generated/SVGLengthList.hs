{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGLengthList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGLengthList,
        castToSVGLengthList, gTypeSVGLengthList)
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
        SVGLengthList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.clear Mozilla SVGLengthList.clear documentation> 
clear :: (MonadIO m) => SVGLengthList -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        SVGLengthList -> Nullable SVGLength -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initialize ::
           (MonadIO m) =>
             SVGLengthList -> Maybe SVGLength -> m (Maybe SVGLength)
initialize self item
  = liftIO
      (nullableToMaybe <$> (js_initialize (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGLengthList -> Word -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGLengthList -> Word -> m (Maybe SVGLength)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGLengthList ->
          Nullable SVGLength -> Word -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGLengthList -> Maybe SVGLength -> Word -> m (Maybe SVGLength)
insertItemBefore self item index
  = liftIO
      (nullableToMaybe <$>
         (js_insertItemBefore (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGLengthList ->
          Nullable SVGLength -> Word -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGLengthList -> Maybe SVGLength -> Word -> m (Maybe SVGLength)
replaceItem self item index
  = liftIO
      (nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGLengthList -> Word -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGLengthList -> Word -> m (Maybe SVGLength)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGLengthList -> Nullable SVGLength -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItem ::
           (MonadIO m) =>
             SVGLengthList -> Maybe SVGLength -> m (Maybe SVGLength)
appendItem self item
  = liftIO
      (nullableToMaybe <$> (js_appendItem (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGLengthList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.numberOfItems Mozilla SVGLengthList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGLengthList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))