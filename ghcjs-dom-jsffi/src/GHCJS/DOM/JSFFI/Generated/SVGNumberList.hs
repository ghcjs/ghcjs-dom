{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGNumberList
       (js_clear, clear, js_initialize, initialize, initialize_,
        initializeUnsafe, initializeUnchecked, js_getItem, getItem,
        getItem_, getItemUnsafe, getItemUnchecked, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, insertItemBeforeUnsafe,
        insertItemBeforeUnchecked, js_replaceItem, replaceItem,
        replaceItem_, replaceItemUnsafe, replaceItemUnchecked,
        js_removeItem, removeItem, removeItem_, removeItemUnsafe,
        removeItemUnchecked, js_appendItem, appendItem, appendItem_,
        appendItemUnsafe, appendItemUnchecked, js_getNumberOfItems,
        getNumberOfItems, SVGNumberList(..), gTypeSVGNumberList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initialize_ ::
            (MonadIO m) => SVGNumberList -> Maybe SVGNumber -> m ()
initialize_ self item
  = liftIO (void (js_initialize (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initializeUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGNumberList -> Maybe SVGNumber -> m SVGNumber
initializeUnsafe self item
  = liftIO
      ((nullableToMaybe <$>
          (js_initialize (self) (maybeToNullable item)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
initializeUnchecked ::
                    (MonadIO m) => SVGNumberList -> Maybe SVGNumber -> m SVGNumber
initializeUnchecked self item
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_initialize (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGNumberList -> Word -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGNumberList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItemUnsafe ::
              (MonadIO m, HasCallStack) => SVGNumberList -> Word -> m SVGNumber
getItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_getItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.getItem Mozilla SVGNumberList.getItem documentation> 
getItemUnchecked ::
                 (MonadIO m) => SVGNumberList -> Word -> m SVGNumber
getItemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_getItem (self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m) => SVGNumberList -> Maybe SVGNumber -> Word -> m ()
insertItemBefore_ self item index
  = liftIO
      (void (js_insertItemBefore (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBeforeUnsafe ::
                       (MonadIO m, HasCallStack) =>
                         SVGNumberList -> Maybe SVGNumber -> Word -> m SVGNumber
insertItemBeforeUnsafe self item index
  = liftIO
      ((nullableToMaybe <$>
          (js_insertItemBefore (self) (maybeToNullable item) index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadIO m) =>
                            SVGNumberList -> Maybe SVGNumber -> Word -> m SVGNumber
insertItemBeforeUnchecked self item index
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m) => SVGNumberList -> Maybe SVGNumber -> Word -> m ()
replaceItem_ self item index
  = liftIO
      (void (js_replaceItem (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItemUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    SVGNumberList -> Maybe SVGNumber -> Word -> m SVGNumber
replaceItemUnsafe self item index
  = liftIO
      ((nullableToMaybe <$>
          (js_replaceItem (self) (maybeToNullable item) index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadIO m) =>
                       SVGNumberList -> Maybe SVGNumber -> Word -> m SVGNumber
replaceItemUnchecked self item index
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGNumberList -> Word -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGNumberList -> Word -> m (Maybe SVGNumber)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGNumberList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItemUnsafe ::
                 (MonadIO m, HasCallStack) => SVGNumberList -> Word -> m SVGNumber
removeItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_removeItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadIO m) => SVGNumberList -> Word -> m SVGNumber
removeItemUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$> (js_removeItem (self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItem_ ::
            (MonadIO m) => SVGNumberList -> Maybe SVGNumber -> m ()
appendItem_ self item
  = liftIO (void (js_appendItem (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItemUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGNumberList -> Maybe SVGNumber -> m SVGNumber
appendItemUnsafe self item
  = liftIO
      ((nullableToMaybe <$>
          (js_appendItem (self) (maybeToNullable item)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadIO m) => SVGNumberList -> Maybe SVGNumber -> m SVGNumber
appendItemUnchecked self item
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_appendItem (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGNumberList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGNumberList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))