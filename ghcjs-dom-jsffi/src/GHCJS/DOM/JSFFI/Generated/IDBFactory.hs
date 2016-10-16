{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBFactory
       (js_open, open, open_, openUnsafe, openUnchecked,
        js_deleteDatabase, deleteDatabase, deleteDatabase_,
        deleteDatabaseUnsafe, deleteDatabaseUnchecked, js_cmp, cmp, cmp_,
        IDBFactory(..), gTypeIDBFactory)
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
 
foreign import javascript unsafe "$1[\"open\"]($2, $3)" js_open ::
        IDBFactory -> JSString -> Double -> IO (Nullable IDBOpenDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open ::
     (MonadIO m, ToJSString name) =>
       IDBFactory -> name -> Word64 -> m (Maybe IDBOpenDBRequest)
open self name version
  = liftIO
      (nullableToMaybe <$>
         (js_open (self) (toJSString name) (fromIntegral version)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open_ ::
      (MonadIO m, ToJSString name) =>
        IDBFactory -> name -> Word64 -> m ()
open_ self name version
  = liftIO
      (void (js_open (self) (toJSString name) (fromIntegral version)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
openUnsafe ::
           (MonadIO m, ToJSString name, HasCallStack) =>
             IDBFactory -> name -> Word64 -> m IDBOpenDBRequest
openUnsafe self name version
  = liftIO
      ((nullableToMaybe <$>
          (js_open (self) (toJSString name) (fromIntegral version)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
openUnchecked ::
              (MonadIO m, ToJSString name) =>
                IDBFactory -> name -> Word64 -> m IDBOpenDBRequest
openUnchecked self name version
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_open (self) (toJSString name) (fromIntegral version)))
 
foreign import javascript unsafe "$1[\"deleteDatabase\"]($2)"
        js_deleteDatabase ::
        IDBFactory -> JSString -> IO (Nullable IDBOpenDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase ::
               (MonadIO m, ToJSString name) =>
                 IDBFactory -> name -> m (Maybe IDBOpenDBRequest)
deleteDatabase self name
  = liftIO
      (nullableToMaybe <$> (js_deleteDatabase (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase_ ::
                (MonadIO m, ToJSString name) => IDBFactory -> name -> m ()
deleteDatabase_ self name
  = liftIO (void (js_deleteDatabase (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabaseUnsafe ::
                     (MonadIO m, ToJSString name, HasCallStack) =>
                       IDBFactory -> name -> m IDBOpenDBRequest
deleteDatabaseUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_deleteDatabase (self) (toJSString name)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabaseUnchecked ::
                        (MonadIO m, ToJSString name) =>
                          IDBFactory -> name -> m IDBOpenDBRequest
deleteDatabaseUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_deleteDatabase (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"cmp\"]($2, $3)" js_cmp ::
        IDBFactory -> JSVal -> JSVal -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp :: (MonadIO m) => IDBFactory -> JSVal -> JSVal -> m Int
cmp self first second = liftIO (js_cmp (self) first second)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp_ :: (MonadIO m) => IDBFactory -> JSVal -> JSVal -> m ()
cmp_ self first second = liftIO (void (js_cmp (self) first second))