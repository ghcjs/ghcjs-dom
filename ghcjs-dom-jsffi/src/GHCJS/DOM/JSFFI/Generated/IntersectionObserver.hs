{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IntersectionObserver
       (js_newIntersectionObserver, newIntersectionObserver, js_observe,
        observe, js_unobserve, unobserve, js_disconnect, disconnect,
        js_takeRecords, takeRecords, takeRecords_, js_getRoot, getRoot,
        getRootUnsafe, getRootUnchecked, js_getRootMargin, getRootMargin,
        js_getThresholds, getThresholds, IntersectionObserver(..),
        gTypeIntersectionObserver)
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
        "new window[\"IntersectionObserver\"]($1,\n$2)"
        js_newIntersectionObserver ::
        IntersectionObserverCallback ->
          Optional IntersectionObserverInit -> IO IntersectionObserver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver Mozilla IntersectionObserver documentation> 
newIntersectionObserver ::
                        (MonadIO m) =>
                          IntersectionObserverCallback ->
                            Maybe IntersectionObserverInit -> m IntersectionObserver
newIntersectionObserver callback options
  = liftIO
      (js_newIntersectionObserver callback (maybeToOptional options))
 
foreign import javascript unsafe "$1[\"observe\"]($2)" js_observe
        :: IntersectionObserver -> Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.observe Mozilla IntersectionObserver.observe documentation> 
observe ::
        (MonadIO m, IsElement target) =>
          IntersectionObserver -> target -> m ()
observe self target = liftIO (js_observe self (toElement target))
 
foreign import javascript unsafe "$1[\"unobserve\"]($2)"
        js_unobserve :: IntersectionObserver -> Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.unobserve Mozilla IntersectionObserver.unobserve documentation> 
unobserve ::
          (MonadIO m, IsElement target) =>
            IntersectionObserver -> target -> m ()
unobserve self target
  = liftIO (js_unobserve self (toElement target))
 
foreign import javascript unsafe "$1[\"disconnect\"]()"
        js_disconnect :: IntersectionObserver -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.disconnect Mozilla IntersectionObserver.disconnect documentation> 
disconnect :: (MonadIO m) => IntersectionObserver -> m ()
disconnect self = liftIO (js_disconnect self)
 
foreign import javascript unsafe "$1[\"takeRecords\"]()"
        js_takeRecords :: IntersectionObserver -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.takeRecords Mozilla IntersectionObserver.takeRecords documentation> 
takeRecords ::
            (MonadIO m) =>
              IntersectionObserver -> m [IntersectionObserverEntry]
takeRecords self
  = liftIO ((js_takeRecords self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.takeRecords Mozilla IntersectionObserver.takeRecords documentation> 
takeRecords_ :: (MonadIO m) => IntersectionObserver -> m ()
takeRecords_ self = liftIO (void (js_takeRecords self))
 
foreign import javascript unsafe "$1[\"root\"]" js_getRoot ::
        IntersectionObserver -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.root Mozilla IntersectionObserver.root documentation> 
getRoot :: (MonadIO m) => IntersectionObserver -> m (Maybe Element)
getRoot self = liftIO (nullableToMaybe <$> (js_getRoot self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.root Mozilla IntersectionObserver.root documentation> 
getRootUnsafe ::
              (MonadIO m, HasCallStack) => IntersectionObserver -> m Element
getRootUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRoot self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.root Mozilla IntersectionObserver.root documentation> 
getRootUnchecked ::
                 (MonadIO m) => IntersectionObserver -> m Element
getRootUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRoot self))
 
foreign import javascript unsafe "$1[\"rootMargin\"]"
        js_getRootMargin :: IntersectionObserver -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.rootMargin Mozilla IntersectionObserver.rootMargin documentation> 
getRootMargin ::
              (MonadIO m, FromJSString result) =>
                IntersectionObserver -> m result
getRootMargin self
  = liftIO (fromJSString <$> (js_getRootMargin self))
 
foreign import javascript unsafe "$1[\"thresholds\"]"
        js_getThresholds :: IntersectionObserver -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver.thresholds Mozilla IntersectionObserver.thresholds documentation> 
getThresholds :: (MonadIO m) => IntersectionObserver -> m [Double]
getThresholds self
  = liftIO ((js_getThresholds self) >>= fromJSValUnchecked)