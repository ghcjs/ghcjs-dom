{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MutationObserver
       (js_newMutationObserver, newMutationObserver, js_observe, observe,
        js_disconnect, disconnect, js_takeRecords, takeRecords,
        takeRecords_, MutationObserver(..), gTypeMutationObserver)
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
        "new window[\"MutationObserver\"]($1)" js_newMutationObserver ::
        MutationCallback -> IO MutationObserver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver Mozilla MutationObserver documentation> 
newMutationObserver ::
                    (MonadIO m, IsMutationCallback callback) =>
                      callback -> m MutationObserver
newMutationObserver callback
  = liftIO (js_newMutationObserver (toMutationCallback callback))
 
foreign import javascript safe "$1[\"observe\"]($2, $3)" js_observe
        ::
        MutationObserver -> Node -> Optional MutationObserverInit -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.observe Mozilla MutationObserver.observe documentation> 
observe ::
        (MonadIO m, IsNode target) =>
          MutationObserver -> target -> Maybe MutationObserverInit -> m ()
observe self target options
  = liftIO
      (js_observe self (toNode target) (maybeToOptional options))
 
foreign import javascript unsafe "$1[\"disconnect\"]()"
        js_disconnect :: MutationObserver -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.disconnect Mozilla MutationObserver.disconnect documentation> 
disconnect :: (MonadIO m) => MutationObserver -> m ()
disconnect self = liftIO (js_disconnect self)
 
foreign import javascript unsafe "$1[\"takeRecords\"]()"
        js_takeRecords :: MutationObserver -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.takeRecords Mozilla MutationObserver.takeRecords documentation> 
takeRecords ::
            (MonadIO m) => MutationObserver -> m [MutationRecord]
takeRecords self
  = liftIO ((js_takeRecords self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.takeRecords Mozilla MutationObserver.takeRecords documentation> 
takeRecords_ :: (MonadIO m) => MutationObserver -> m ()
takeRecords_ self = liftIO (void (js_takeRecords self))