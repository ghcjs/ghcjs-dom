{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGPathSegList,
        castToSVGPathSegList, gTypeSVGPathSegList)
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
        SVGPathSegList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.clear Mozilla SVGPathSegList.clear documentation> 
clear :: (MonadIO m) => SVGPathSegList -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        SVGPathSegList -> Nullable SVGPathSeg -> IO (Nullable SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initialize ::
           (MonadIO m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m (Maybe SVGPathSeg)
initialize self newItem
  = liftIO
      (nullableToMaybe <$>
         (js_initialize (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGPathSegList -> Word -> IO (Nullable SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGPathSegList -> Word -> m (Maybe SVGPathSeg)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGPathSegList ->
          Nullable SVGPathSeg -> Word -> IO (Nullable SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m, IsSVGPathSeg newItem) =>
                   SVGPathSegList -> Maybe newItem -> Word -> m (Maybe SVGPathSeg)
insertItemBefore self newItem index
  = liftIO
      (nullableToMaybe <$>
         (js_insertItemBefore (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))
            index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGPathSegList ->
          Nullable SVGPathSeg -> Word -> IO (Nullable SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItem ::
            (MonadIO m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> Word -> m (Maybe SVGPathSeg)
replaceItem self newItem index
  = liftIO
      (nullableToMaybe <$>
         (js_replaceItem (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))
            index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGPathSegList -> Word -> IO (Nullable SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGPathSegList -> Word -> m (Maybe SVGPathSeg)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGPathSegList -> Nullable SVGPathSeg -> IO (Nullable SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItem ::
           (MonadIO m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m (Maybe SVGPathSeg)
appendItem self newItem
  = liftIO
      (nullableToMaybe <$>
         (js_appendItem (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGPathSegList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.numberOfItems Mozilla SVGPathSegList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGPathSegList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))