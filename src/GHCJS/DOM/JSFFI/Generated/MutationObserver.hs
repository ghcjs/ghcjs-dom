{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MutationObserver
       (js_newMutationObserver, newMutationObserver, js_observe, observe,
        js_takeRecords, takeRecords, js_disconnect, disconnect,
        MutationObserver, castToMutationObserver, gTypeMutationObserver)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "new window[\"MutationObserver\"]($1)" js_newMutationObserver ::
        Nullable MutationCallback -> IO MutationObserver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver Mozilla MutationObserver documentation> 
newMutationObserver ::
                    (MonadIO m, IsMutationCallback callback) =>
                      Maybe callback -> m MutationObserver
newMutationObserver callback
  = liftIO
      (js_newMutationObserver
         (maybeToNullable (fmap toMutationCallback callback)))
 
foreign import javascript unsafe "$1[\"observe\"]($2, $3)"
        js_observe ::
        MutationObserver -> Nullable Node -> Nullable Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.observe Mozilla MutationObserver.observe documentation> 
observe ::
        (MonadIO m, IsNode target, IsDictionary options) =>
          MutationObserver -> Maybe target -> Maybe options -> m ()
observe self target options
  = liftIO
      (js_observe (self) (maybeToNullable (fmap toNode target))
         (maybeToNullable (fmap toDictionary options)))
 
foreign import javascript unsafe "$1[\"takeRecords\"]()"
        js_takeRecords :: MutationObserver -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.takeRecords Mozilla MutationObserver.takeRecords documentation> 
takeRecords ::
            (MonadIO m) => MutationObserver -> m [Maybe MutationRecord]
takeRecords self
  = liftIO ((js_takeRecords (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"disconnect\"]()"
        js_disconnect :: MutationObserver -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.disconnect Mozilla MutationObserver.disconnect documentation> 
disconnect :: (MonadIO m) => MutationObserver -> m ()
disconnect self = liftIO (js_disconnect (self))