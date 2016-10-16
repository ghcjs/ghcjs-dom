{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegList
       (js_clear, clear, js_initialize, initialize, initialize_,
        initializeUnsafe, initializeUnchecked, js_getItem, getItem,
        getItem_, getItemUnsafe, getItemUnchecked, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, insertItemBeforeUnsafe,
        insertItemBeforeUnchecked, js_replaceItem, replaceItem,
        replaceItem_, replaceItemUnsafe, replaceItemUnchecked,
        js_removeItem, removeItem, removeItem_, removeItemUnsafe,
        removeItemUnchecked, js_appendItem, appendItem, appendItem_,
        appendItemUnsafe, appendItemUnchecked, js_getNumberOfItems,
        getNumberOfItems, SVGPathSegList(..), gTypeSVGPathSegList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initialize_ ::
            (MonadIO m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> m ()
initialize_ self newItem
  = liftIO
      (void
         (js_initialize (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initializeUnsafe ::
                 (MonadIO m, IsSVGPathSeg newItem, HasCallStack) =>
                   SVGPathSegList -> Maybe newItem -> m SVGPathSeg
initializeUnsafe self newItem
  = liftIO
      ((nullableToMaybe <$>
          (js_initialize (self)
             (maybeToNullable (fmap toSVGPathSeg newItem))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initializeUnchecked ::
                    (MonadIO m, IsSVGPathSeg newItem) =>
                      SVGPathSegList -> Maybe newItem -> m SVGPathSeg
initializeUnchecked self newItem
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_initialize (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGPathSegList -> Word -> IO (Nullable SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGPathSegList -> Word -> m (Maybe SVGPathSeg)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGPathSegList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItemUnsafe ::
              (MonadIO m, HasCallStack) => SVGPathSegList -> Word -> m SVGPathSeg
getItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_getItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItemUnchecked ::
                 (MonadIO m) => SVGPathSegList -> Word -> m SVGPathSeg
getItemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_getItem (self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m, IsSVGPathSeg newItem) =>
                    SVGPathSegList -> Maybe newItem -> Word -> m ()
insertItemBefore_ self newItem index
  = liftIO
      (void
         (js_insertItemBefore (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))
            index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBeforeUnsafe ::
                       (MonadIO m, IsSVGPathSeg newItem, HasCallStack) =>
                         SVGPathSegList -> Maybe newItem -> Word -> m SVGPathSeg
insertItemBeforeUnsafe self newItem index
  = liftIO
      ((nullableToMaybe <$>
          (js_insertItemBefore (self)
             (maybeToNullable (fmap toSVGPathSeg newItem))
             index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadIO m, IsSVGPathSeg newItem) =>
                            SVGPathSegList -> Maybe newItem -> Word -> m SVGPathSeg
insertItemBeforeUnchecked self newItem index
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m, IsSVGPathSeg newItem) =>
               SVGPathSegList -> Maybe newItem -> Word -> m ()
replaceItem_ self newItem index
  = liftIO
      (void
         (js_replaceItem (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))
            index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItemUnsafe ::
                  (MonadIO m, IsSVGPathSeg newItem, HasCallStack) =>
                    SVGPathSegList -> Maybe newItem -> Word -> m SVGPathSeg
replaceItemUnsafe self newItem index
  = liftIO
      ((nullableToMaybe <$>
          (js_replaceItem (self)
             (maybeToNullable (fmap toSVGPathSeg newItem))
             index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadIO m, IsSVGPathSeg newItem) =>
                       SVGPathSegList -> Maybe newItem -> Word -> m SVGPathSeg
replaceItemUnchecked self newItem index
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGPathSegList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItemUnsafe ::
                 (MonadIO m, HasCallStack) => SVGPathSegList -> Word -> m SVGPathSeg
removeItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_removeItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadIO m) => SVGPathSegList -> Word -> m SVGPathSeg
removeItemUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$> (js_removeItem (self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItem_ ::
            (MonadIO m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> m ()
appendItem_ self newItem
  = liftIO
      (void
         (js_appendItem (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItemUnsafe ::
                 (MonadIO m, IsSVGPathSeg newItem, HasCallStack) =>
                   SVGPathSegList -> Maybe newItem -> m SVGPathSeg
appendItemUnsafe self newItem
  = liftIO
      ((nullableToMaybe <$>
          (js_appendItem (self)
             (maybeToNullable (fmap toSVGPathSeg newItem))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadIO m, IsSVGPathSeg newItem) =>
                      SVGPathSegList -> Maybe newItem -> m SVGPathSeg
appendItemUnchecked self newItem
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_appendItem (self)
            (maybeToNullable (fmap toSVGPathSeg newItem))))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGPathSegList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.numberOfItems Mozilla SVGPathSegList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGPathSegList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))