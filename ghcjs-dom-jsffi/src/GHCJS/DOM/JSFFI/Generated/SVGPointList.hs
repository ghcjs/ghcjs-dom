{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPointList
       (js_clear, clear, js_initialize, initialize, initialize_,
        initializeUnsafe, initializeUnchecked, js_getItem, getItem,
        getItem_, getItemUnsafe, getItemUnchecked, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, insertItemBeforeUnsafe,
        insertItemBeforeUnchecked, js_replaceItem, replaceItem,
        replaceItem_, replaceItemUnsafe, replaceItemUnchecked,
        js_removeItem, removeItem, removeItem_, removeItemUnsafe,
        removeItemUnchecked, js_appendItem, appendItem, appendItem_,
        appendItemUnsafe, appendItemUnchecked, js_getNumberOfItems,
        getNumberOfItems, SVGPointList(..), gTypeSVGPointList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initialize_ ::
            (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m ()
initialize_ self item
  = liftIO (void (js_initialize (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initializeUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGPointList -> Maybe SVGPoint -> m SVGPoint
initializeUnsafe self item
  = liftIO
      ((nullableToMaybe <$>
          (js_initialize (self) (maybeToNullable item)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
initializeUnchecked ::
                    (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m SVGPoint
initializeUnchecked self item
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_initialize (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGPointList -> Word -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGPointList -> Word -> m (Maybe SVGPoint)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGPointList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItemUnsafe ::
              (MonadIO m, HasCallStack) => SVGPointList -> Word -> m SVGPoint
getItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_getItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.getItem Mozilla SVGPointList.getItem documentation> 
getItemUnchecked ::
                 (MonadIO m) => SVGPointList -> Word -> m SVGPoint
getItemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_getItem (self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m) => SVGPointList -> Maybe SVGPoint -> Word -> m ()
insertItemBefore_ self item index
  = liftIO
      (void (js_insertItemBefore (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBeforeUnsafe ::
                       (MonadIO m, HasCallStack) =>
                         SVGPointList -> Maybe SVGPoint -> Word -> m SVGPoint
insertItemBeforeUnsafe self item index
  = liftIO
      ((nullableToMaybe <$>
          (js_insertItemBefore (self) (maybeToNullable item) index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadIO m) => SVGPointList -> Maybe SVGPoint -> Word -> m SVGPoint
insertItemBeforeUnchecked self item index
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m) => SVGPointList -> Maybe SVGPoint -> Word -> m ()
replaceItem_ self item index
  = liftIO
      (void (js_replaceItem (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItemUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    SVGPointList -> Maybe SVGPoint -> Word -> m SVGPoint
replaceItemUnsafe self item index
  = liftIO
      ((nullableToMaybe <$>
          (js_replaceItem (self) (maybeToNullable item) index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadIO m) => SVGPointList -> Maybe SVGPoint -> Word -> m SVGPoint
replaceItemUnchecked self item index
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGPointList -> Word -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGPointList -> Word -> m (Maybe SVGPoint)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGPointList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItemUnsafe ::
                 (MonadIO m, HasCallStack) => SVGPointList -> Word -> m SVGPoint
removeItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_removeItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadIO m) => SVGPointList -> Word -> m SVGPoint
removeItemUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$> (js_removeItem (self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGPointList -> Nullable SVGPoint -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem ::
           (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m (Maybe SVGPoint)
appendItem self item
  = liftIO
      (nullableToMaybe <$> (js_appendItem (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItem_ ::
            (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m ()
appendItem_ self item
  = liftIO (void (js_appendItem (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItemUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGPointList -> Maybe SVGPoint -> m SVGPoint
appendItemUnsafe self item
  = liftIO
      ((nullableToMaybe <$>
          (js_appendItem (self) (maybeToNullable item)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadIO m) => SVGPointList -> Maybe SVGPoint -> m SVGPoint
appendItemUnchecked self item
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_appendItem (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGPointList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.numberOfItems Mozilla SVGPointList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGPointList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))