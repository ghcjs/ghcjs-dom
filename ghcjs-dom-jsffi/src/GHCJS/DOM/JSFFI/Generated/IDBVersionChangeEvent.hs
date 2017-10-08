{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBVersionChangeEvent
       (js_newIDBVersionChangeEvent, newIDBVersionChangeEvent,
        js_getOldVersion, getOldVersion, js_getNewVersion, getNewVersion,
        getNewVersionUnsafe, getNewVersionUnchecked,
        IDBVersionChangeEvent(..), gTypeIDBVersionChangeEvent)
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
 
foreign import javascript unsafe
        "new window[\"IDBVersionChangeEvent\"]($1,\n$2)"
        js_newIDBVersionChangeEvent ::
        JSString ->
          Optional IDBVersionChangeEventInit -> IO IDBVersionChangeEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent Mozilla IDBVersionChangeEvent documentation> 
newIDBVersionChangeEvent ::
                         (MonadIO m, ToJSString type') =>
                           type' -> Maybe IDBVersionChangeEventInit -> m IDBVersionChangeEvent
newIDBVersionChangeEvent type' eventInitDict
  = liftIO
      (js_newIDBVersionChangeEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"oldVersion\"]"
        js_getOldVersion :: IDBVersionChangeEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.oldVersion Mozilla IDBVersionChangeEvent.oldVersion documentation> 
getOldVersion :: (MonadIO m) => IDBVersionChangeEvent -> m Word64
getOldVersion self = liftIO (round <$> (js_getOldVersion self))
 
foreign import javascript unsafe "$1[\"newVersion\"]"
        js_getNewVersion :: IDBVersionChangeEvent -> IO (Nullable Double)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.newVersion Mozilla IDBVersionChangeEvent.newVersion documentation> 
getNewVersion ::
              (MonadIO m) => IDBVersionChangeEvent -> m (Maybe Word64)
getNewVersion self
  = liftIO (fmap round . nullableToMaybe <$> (js_getNewVersion self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.newVersion Mozilla IDBVersionChangeEvent.newVersion documentation> 
getNewVersionUnsafe ::
                    (MonadIO m, HasCallStack) => IDBVersionChangeEvent -> m Word64
getNewVersionUnsafe self
  = liftIO
      ((fmap round . nullableToMaybe <$> (js_getNewVersion self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.newVersion Mozilla IDBVersionChangeEvent.newVersion documentation> 
getNewVersionUnchecked ::
                       (MonadIO m) => IDBVersionChangeEvent -> m Word64
getNewVersionUnchecked self
  = liftIO
      (round . fromJust . nullableToMaybe <$> (js_getNewVersion self))