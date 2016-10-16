{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGTransformList
       (js_clear, clear, js_initialize, initialize, initialize_,
        initializeUnsafe, initializeUnchecked, js_getItem, getItem,
        getItem_, getItemUnsafe, getItemUnchecked, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, insertItemBeforeUnsafe,
        insertItemBeforeUnchecked, js_replaceItem, replaceItem,
        replaceItem_, replaceItemUnsafe, replaceItemUnchecked,
        js_removeItem, removeItem, removeItem_, removeItemUnsafe,
        removeItemUnchecked, js_appendItem, appendItem, appendItem_,
        appendItemUnsafe, appendItemUnchecked,
        js_createSVGTransformFromMatrix, createSVGTransformFromMatrix,
        createSVGTransformFromMatrix_, createSVGTransformFromMatrixUnsafe,
        createSVGTransformFromMatrixUnchecked, js_consolidate, consolidate,
        consolidate_, consolidateUnsafe, consolidateUnchecked,
        js_getNumberOfItems, getNumberOfItems, SVGTransformList(..),
        gTypeSVGTransformList)
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
        SVGTransformList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.clear Mozilla SVGTransformList.clear documentation> 
clear :: (MonadIO m) => SVGTransformList -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize ::
        SVGTransformList ->
          Nullable SVGTransform -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize ::
           (MonadIO m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
initialize self item
  = liftIO
      (nullableToMaybe <$> (js_initialize (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initialize_ ::
            (MonadIO m) => SVGTransformList -> Maybe SVGTransform -> m ()
initialize_ self item
  = liftIO (void (js_initialize (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initializeUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGTransformList -> Maybe SVGTransform -> m SVGTransform
initializeUnsafe self item
  = liftIO
      ((nullableToMaybe <$>
          (js_initialize (self) (maybeToNullable item)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
initializeUnchecked ::
                    (MonadIO m) =>
                      SVGTransformList -> Maybe SVGTransform -> m SVGTransform
initializeUnchecked self item
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_initialize (self) (maybeToNullable item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGTransformList -> Word -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem ::
        (MonadIO m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
getItem self index
  = liftIO (nullableToMaybe <$> (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGTransformList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItemUnsafe ::
              (MonadIO m, HasCallStack) =>
                SVGTransformList -> Word -> m SVGTransform
getItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_getItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.getItem Mozilla SVGTransformList.getItem documentation> 
getItemUnchecked ::
                 (MonadIO m) => SVGTransformList -> Word -> m SVGTransform
getItemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_getItem (self) index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGTransformList ->
          Nullable SVGTransform -> Word -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) =>
                   SVGTransformList ->
                     Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
insertItemBefore self item index
  = liftIO
      (nullableToMaybe <$>
         (js_insertItemBefore (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m) =>
                    SVGTransformList -> Maybe SVGTransform -> Word -> m ()
insertItemBefore_ self item index
  = liftIO
      (void (js_insertItemBefore (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBeforeUnsafe ::
                       (MonadIO m, HasCallStack) =>
                         SVGTransformList -> Maybe SVGTransform -> Word -> m SVGTransform
insertItemBeforeUnsafe self item index
  = liftIO
      ((nullableToMaybe <$>
          (js_insertItemBefore (self) (maybeToNullable item) index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
insertItemBeforeUnchecked ::
                          (MonadIO m) =>
                            SVGTransformList -> Maybe SVGTransform -> Word -> m SVGTransform
insertItemBeforeUnchecked self item index
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_insertItemBefore (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGTransformList ->
          Nullable SVGTransform -> Word -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) =>
              SVGTransformList ->
                Maybe SVGTransform -> Word -> m (Maybe SVGTransform)
replaceItem self item index
  = liftIO
      (nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m) =>
               SVGTransformList -> Maybe SVGTransform -> Word -> m ()
replaceItem_ self item index
  = liftIO
      (void (js_replaceItem (self) (maybeToNullable item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItemUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    SVGTransformList -> Maybe SVGTransform -> Word -> m SVGTransform
replaceItemUnsafe self item index
  = liftIO
      ((nullableToMaybe <$>
          (js_replaceItem (self) (maybeToNullable item) index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
replaceItemUnchecked ::
                     (MonadIO m) =>
                       SVGTransformList -> Maybe SVGTransform -> Word -> m SVGTransform
replaceItemUnchecked self item index
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_replaceItem (self) (maybeToNullable item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem ::
        SVGTransformList -> Word -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem ::
           (MonadIO m) => SVGTransformList -> Word -> m (Maybe SVGTransform)
removeItem self index
  = liftIO (nullableToMaybe <$> (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGTransformList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItemUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGTransformList -> Word -> m SVGTransform
removeItemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_removeItem (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
removeItemUnchecked ::
                    (MonadIO m) => SVGTransformList -> Word -> m SVGTransform
removeItemUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$> (js_removeItem (self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGTransformList ->
          Nullable SVGTransform -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem ::
           (MonadIO m) =>
             SVGTransformList -> Maybe SVGTransform -> m (Maybe SVGTransform)
appendItem self item
  = liftIO
      (nullableToMaybe <$> (js_appendItem (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItem_ ::
            (MonadIO m) => SVGTransformList -> Maybe SVGTransform -> m ()
appendItem_ self item
  = liftIO (void (js_appendItem (self) (maybeToNullable item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItemUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGTransformList -> Maybe SVGTransform -> m SVGTransform
appendItemUnsafe self item
  = liftIO
      ((nullableToMaybe <$>
          (js_appendItem (self) (maybeToNullable item)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
appendItemUnchecked ::
                    (MonadIO m) =>
                      SVGTransformList -> Maybe SVGTransform -> m SVGTransform
appendItemUnchecked self item
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_appendItem (self) (maybeToNullable item)))
 
foreign import javascript unsafe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        js_createSVGTransformFromMatrix ::
        SVGTransformList ->
          Nullable SVGMatrix -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadIO m) =>
                               SVGTransformList -> Maybe SVGMatrix -> m (Maybe SVGTransform)
createSVGTransformFromMatrix self matrix
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix_ ::
                              (MonadIO m) => SVGTransformList -> Maybe SVGMatrix -> m ()
createSVGTransformFromMatrix_ self matrix
  = liftIO
      (void
         (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrixUnsafe ::
                                   (MonadIO m, HasCallStack) =>
                                     SVGTransformList -> Maybe SVGMatrix -> m SVGTransform
createSVGTransformFromMatrixUnsafe self matrix
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrixUnchecked ::
                                      (MonadIO m) =>
                                        SVGTransformList -> Maybe SVGMatrix -> m SVGTransform
createSVGTransformFromMatrixUnchecked self matrix
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))
 
foreign import javascript unsafe "$1[\"consolidate\"]()"
        js_consolidate :: SVGTransformList -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate ::
            (MonadIO m) => SVGTransformList -> m (Maybe SVGTransform)
consolidate self
  = liftIO (nullableToMaybe <$> (js_consolidate (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidate_ :: (MonadIO m) => SVGTransformList -> m ()
consolidate_ self = liftIO (void (js_consolidate (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidateUnsafe ::
                  (MonadIO m, HasCallStack) => SVGTransformList -> m SVGTransform
consolidateUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_consolidate (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
consolidateUnchecked ::
                     (MonadIO m) => SVGTransformList -> m SVGTransform
consolidateUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_consolidate (self)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGTransformList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.numberOfItems Mozilla SVGTransformList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGTransformList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))