{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBKeyRange
       (js_only, only, only_, onlyUnsafe, onlyUnchecked, js_lowerBound,
        lowerBound, lowerBound_, lowerBoundUnsafe, lowerBoundUnchecked,
        js_upperBound, upperBound, upperBound_, upperBoundUnsafe,
        upperBoundUnchecked, js_bound, bound, bound_, boundUnsafe,
        boundUnchecked, js_getLower, getLower, js_getUpper, getUpper,
        js_getLowerOpen, getLowerOpen, js_getUpperOpen, getUpperOpen,
        IDBKeyRange(..), gTypeIDBKeyRange)
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
 
foreign import javascript unsafe "$1[\"only\"]($2)" js_only ::
        IDBKeyRange -> JSVal -> IO (Nullable IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only ::
     (MonadIO m) => IDBKeyRange -> JSVal -> m (Maybe IDBKeyRange)
only self value
  = liftIO (nullableToMaybe <$> (js_only (self) value))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only_ :: (MonadIO m) => IDBKeyRange -> JSVal -> m ()
only_ self value = liftIO (void (js_only (self) value))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
onlyUnsafe ::
           (MonadIO m, HasCallStack) => IDBKeyRange -> JSVal -> m IDBKeyRange
onlyUnsafe self value
  = liftIO
      ((nullableToMaybe <$> (js_only (self) value)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
onlyUnchecked ::
              (MonadIO m) => IDBKeyRange -> JSVal -> m IDBKeyRange
onlyUnchecked self value
  = liftIO (fromJust . nullableToMaybe <$> (js_only (self) value))
 
foreign import javascript unsafe "$1[\"lowerBound\"]($2, $3)"
        js_lowerBound ::
        IDBKeyRange -> JSVal -> Bool -> IO (Nullable IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound ::
           (MonadIO m) =>
             IDBKeyRange -> JSVal -> Bool -> m (Maybe IDBKeyRange)
lowerBound self lower open
  = liftIO (nullableToMaybe <$> (js_lowerBound (self) lower open))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound_ :: (MonadIO m) => IDBKeyRange -> JSVal -> Bool -> m ()
lowerBound_ self lower open
  = liftIO (void (js_lowerBound (self) lower open))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBoundUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   IDBKeyRange -> JSVal -> Bool -> m IDBKeyRange
lowerBoundUnsafe self lower open
  = liftIO
      ((nullableToMaybe <$> (js_lowerBound (self) lower open)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBoundUnchecked ::
                    (MonadIO m) => IDBKeyRange -> JSVal -> Bool -> m IDBKeyRange
lowerBoundUnchecked self lower open
  = liftIO
      (fromJust . nullableToMaybe <$> (js_lowerBound (self) lower open))
 
foreign import javascript unsafe "$1[\"upperBound\"]($2, $3)"
        js_upperBound ::
        IDBKeyRange -> JSVal -> Bool -> IO (Nullable IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound ::
           (MonadIO m) =>
             IDBKeyRange -> JSVal -> Bool -> m (Maybe IDBKeyRange)
upperBound self upper open
  = liftIO (nullableToMaybe <$> (js_upperBound (self) upper open))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound_ :: (MonadIO m) => IDBKeyRange -> JSVal -> Bool -> m ()
upperBound_ self upper open
  = liftIO (void (js_upperBound (self) upper open))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBoundUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   IDBKeyRange -> JSVal -> Bool -> m IDBKeyRange
upperBoundUnsafe self upper open
  = liftIO
      ((nullableToMaybe <$> (js_upperBound (self) upper open)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBoundUnchecked ::
                    (MonadIO m) => IDBKeyRange -> JSVal -> Bool -> m IDBKeyRange
upperBoundUnchecked self upper open
  = liftIO
      (fromJust . nullableToMaybe <$> (js_upperBound (self) upper open))
 
foreign import javascript unsafe "$1[\"bound\"]($2, $3, $4, $5)"
        js_bound ::
        IDBKeyRange ->
          JSVal -> JSVal -> Bool -> Bool -> IO (Nullable IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound ::
      (MonadIO m) =>
        IDBKeyRange ->
          JSVal -> JSVal -> Bool -> Bool -> m (Maybe IDBKeyRange)
bound self lower upper lowerOpen upperOpen
  = liftIO
      (nullableToMaybe <$>
         (js_bound (self) lower upper lowerOpen upperOpen))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound_ ::
       (MonadIO m) =>
         IDBKeyRange -> JSVal -> JSVal -> Bool -> Bool -> m ()
bound_ self lower upper lowerOpen upperOpen
  = liftIO (void (js_bound (self) lower upper lowerOpen upperOpen))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
boundUnsafe ::
            (MonadIO m, HasCallStack) =>
              IDBKeyRange -> JSVal -> JSVal -> Bool -> Bool -> m IDBKeyRange
boundUnsafe self lower upper lowerOpen upperOpen
  = liftIO
      ((nullableToMaybe <$>
          (js_bound (self) lower upper lowerOpen upperOpen))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
boundUnchecked ::
               (MonadIO m) =>
                 IDBKeyRange -> JSVal -> JSVal -> Bool -> Bool -> m IDBKeyRange
boundUnchecked self lower upper lowerOpen upperOpen
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_bound (self) lower upper lowerOpen upperOpen))
 
foreign import javascript unsafe "$1[\"lower\"]" js_getLower ::
        IDBKeyRange -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lower Mozilla IDBKeyRange.lower documentation> 
getLower :: (MonadIO m) => IDBKeyRange -> m JSVal
getLower self = liftIO (js_getLower (self))
 
foreign import javascript unsafe "$1[\"upper\"]" js_getUpper ::
        IDBKeyRange -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upper Mozilla IDBKeyRange.upper documentation> 
getUpper :: (MonadIO m) => IDBKeyRange -> m JSVal
getUpper self = liftIO (js_getUpper (self))
 
foreign import javascript unsafe "($1[\"lowerOpen\"] ? 1 : 0)"
        js_getLowerOpen :: IDBKeyRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerOpen Mozilla IDBKeyRange.lowerOpen documentation> 
getLowerOpen :: (MonadIO m) => IDBKeyRange -> m Bool
getLowerOpen self = liftIO (js_getLowerOpen (self))
 
foreign import javascript unsafe "($1[\"upperOpen\"] ? 1 : 0)"
        js_getUpperOpen :: IDBKeyRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperOpen Mozilla IDBKeyRange.upperOpen documentation> 
getUpperOpen :: (MonadIO m) => IDBKeyRange -> m Bool
getUpperOpen self = liftIO (js_getUpperOpen (self))