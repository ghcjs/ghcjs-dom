{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGLengthList
       (js_clear, clear, js_initialize, initialize, initialize_,
        initializeUnsafe, initializeUnchecked, js_getItem, getItem,
        getItem_, getItemUnsafe, getItemUnchecked, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, insertItemBeforeUnsafe,
        insertItemBeforeUnchecked, js_replaceItem, replaceItem,
        replaceItem_, replaceItemUnsafe, replaceItemUnchecked,
        js_removeItem, removeItem, removeItem_, removeItemUnsafe,
        removeItemUnchecked, js_appendItem, appendItem, appendItem_,
        appendItemUnsafe, appendItemUnchecked, js_getNumberOfItems,
        getNumberOfItems, SVGLengthList(..), gTypeSVGLengthList)
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
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initialize_ ::
            (MonadIO m) => SVGLengthList -> Maybe SVGLength -> m ()
initialize_ self item
  = liftIO (void (js_initialize (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initializeUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGLengthList -> Maybe SVGLength -> m SVGLength
initializeUnsafe self item
  = liftIO
      ((nullableToMaybe <$>
          (js_initialize (self) (maybeToNullable item)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initializeUnchecked ::
                    (MonadIO m) => SVGLengthList -> Maybe SVGLength -> m SVGLength
initializeUnchecked self item
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_initialize (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGLengthList -> Word -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGLengthList -> Word -> m (Maybe SVGLength)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGLengthList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItemUnsafe ::
              (MonadIO m, HasCallStack) => SVGLengthList -> Word -> m SVGLength
getItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_getItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItemUnchecked ::
                 (MonadIO m) => SVGLengthList -> Word -> m SVGLength
getItemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_getItem (self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m) => SVGLengthList -> Maybe SVGLength -> Word -> m ()
insertItemBefore_ self item index
  = liftIO
      (void (js_insertItemBefore (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBeforeUnsafe ::
                       (MonadIO m, HasCallStack) =>
                         SVGLengthList -> Maybe SVGLength -> Word -> m SVGLength
insertItemBeforeUnsafe self item index
  = liftIO
      ((nullableToMaybe <$>
          (js_insertItemBefore (self) (maybeToNullable item) index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadIO m) =>
                            SVGLengthList -> Maybe SVGLength -> Word -> m SVGLength
insertItemBeforeUnchecked self item index
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m) => SVGLengthList -> Maybe SVGLength -> Word -> m ()
replaceItem_ self item index
  = liftIO
      (void (js_replaceItem (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItemUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    SVGLengthList -> Maybe SVGLength -> Word -> m SVGLength
replaceItemUnsafe self item index
  = liftIO
      ((nullableToMaybe <$>
          (js_replaceItem (self) (maybeToNullable item) index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadIO m) =>
                       SVGLengthList -> Maybe SVGLength -> Word -> m SVGLength
replaceItemUnchecked self item index
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGLengthList -> Word -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGLengthList -> Word -> m (Maybe SVGLength)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGLengthList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItemUnsafe ::
                 (MonadIO m, HasCallStack) => SVGLengthList -> Word -> m SVGLength
removeItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_removeItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadIO m) => SVGLengthList -> Word -> m SVGLength
removeItemUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$> (js_removeItem (self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItem_ ::
            (MonadIO m) => SVGLengthList -> Maybe SVGLength -> m ()
appendItem_ self item
  = liftIO (void (js_appendItem (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItemUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGLengthList -> Maybe SVGLength -> m SVGLength
appendItemUnsafe self item
  = liftIO
      ((nullableToMaybe <$>
          (js_appendItem (self) (maybeToNullable item)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadIO m) => SVGLengthList -> Maybe SVGLength -> m SVGLength
appendItemUnchecked self item
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_appendItem (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGLengthList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.numberOfItems Mozilla SVGLengthList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGLengthList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))