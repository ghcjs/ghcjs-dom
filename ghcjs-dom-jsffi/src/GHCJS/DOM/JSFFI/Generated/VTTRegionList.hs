{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.VTTRegionList
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_getRegionById,
        getRegionById, getRegionById_, getRegionByIdUnsafe,
        getRegionByIdUnchecked, js_getLength, getLength, VTTRegionList(..),
        gTypeVTTRegionList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[$2]" js_item ::
        VTTRegionList -> Word -> IO (Nullable VTTRegion)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
item :: (MonadIO m) => VTTRegionList -> Word -> m (Maybe VTTRegion)
item self index = liftIO (nullableToMaybe <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
item_ :: (MonadIO m) => VTTRegionList -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => VTTRegionList -> Word -> m VTTRegion
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
itemUnchecked ::
              (MonadIO m) => VTTRegionList -> Word -> m VTTRegion
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item self index))
 
foreign import javascript unsafe "$1[\"getRegionById\"]($2)"
        js_getRegionById ::
        VTTRegionList -> JSString -> IO (Nullable VTTRegion)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.getRegionById Mozilla VTTRegionList.getRegionById documentation> 
getRegionById ::
              (MonadIO m, ToJSString id) =>
                VTTRegionList -> id -> m (Maybe VTTRegion)
getRegionById self id
  = liftIO
      (nullableToMaybe <$> (js_getRegionById self (toJSString id)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.getRegionById Mozilla VTTRegionList.getRegionById documentation> 
getRegionById_ ::
               (MonadIO m, ToJSString id) => VTTRegionList -> id -> m ()
getRegionById_ self id
  = liftIO (void (js_getRegionById self (toJSString id)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.getRegionById Mozilla VTTRegionList.getRegionById documentation> 
getRegionByIdUnsafe ::
                    (MonadIO m, ToJSString id, HasCallStack) =>
                      VTTRegionList -> id -> m VTTRegion
getRegionByIdUnsafe self id
  = liftIO
      ((nullableToMaybe <$> (js_getRegionById self (toJSString id))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.getRegionById Mozilla VTTRegionList.getRegionById documentation> 
getRegionByIdUnchecked ::
                       (MonadIO m, ToJSString id) => VTTRegionList -> id -> m VTTRegion
getRegionByIdUnchecked self id
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getRegionById self (toJSString id)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        VTTRegionList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.length Mozilla VTTRegionList.length documentation> 
getLength :: (MonadIO m) => VTTRegionList -> m Word
getLength self = liftIO (js_getLength self)