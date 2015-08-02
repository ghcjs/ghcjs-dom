{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MutationObserver
       (js_newMutationObserver, newMutationObserver, js_observe, observe,
        js_takeRecords, takeRecords, js_disconnect, disconnect,
        MutationObserver, castToMutationObserver, gTypeMutationObserver)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "new window[\"MutationObserver\"]($1)" js_newMutationObserver ::
        JSRef MutationCallback -> IO (JSRef MutationObserver)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver Mozilla MutationObserver documentation> 
newMutationObserver ::
                    (MonadIO m, IsMutationCallback callback) =>
                      Maybe callback -> m MutationObserver
newMutationObserver callback
  = liftIO
      (js_newMutationObserver
         (maybe jsNull (unMutationCallback . toMutationCallback) callback)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"observe\"]($2, $3)"
        js_observe ::
        JSRef MutationObserver -> JSRef Node -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.observe Mozilla MutationObserver.observe documentation> 
observe ::
        (MonadIO m, IsNode target, IsDictionary options) =>
          MutationObserver -> Maybe target -> Maybe options -> m ()
observe self target options
  = liftIO
      (js_observe (unMutationObserver self)
         (maybe jsNull (unNode . toNode) target)
         (maybe jsNull (unDictionary . toDictionary) options))
 
foreign import javascript unsafe "$1[\"takeRecords\"]()"
        js_takeRecords ::
        JSRef MutationObserver -> IO (JSRef [Maybe MutationRecord])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.takeRecords Mozilla MutationObserver.takeRecords documentation> 
takeRecords ::
            (MonadIO m) => MutationObserver -> m [Maybe MutationRecord]
takeRecords self
  = liftIO
      ((js_takeRecords (unMutationObserver self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"disconnect\"]()"
        js_disconnect :: JSRef MutationObserver -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.disconnect Mozilla MutationObserver.disconnect documentation> 
disconnect :: (MonadIO m) => MutationObserver -> m ()
disconnect self = liftIO (js_disconnect (unMutationObserver self))