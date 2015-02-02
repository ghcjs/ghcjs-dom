{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MutationObserver
       (ghcjs_dom_mutation_observer_observe, mutationObserverObserve,
        ghcjs_dom_mutation_observer_take_records,
        mutationObserverTakeRecords,
        ghcjs_dom_mutation_observer_disconnect, mutationObserverDisconnect,
        MutationObserver, IsMutationObserver, castToMutationObserver,
        gTypeMutationObserver, toMutationObserver)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"observe\"]($2, $3)"
        ghcjs_dom_mutation_observer_observe ::
        JSRef MutationObserver -> JSRef Node -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.observe Mozilla MutationObserver.observe documentation> 
mutationObserverObserve ::
                        (IsMutationObserver self, IsNode target, IsDictionary options) =>
                          self -> Maybe target -> Maybe options -> IO ()
mutationObserverObserve self target options
  = ghcjs_dom_mutation_observer_observe
      (unMutationObserver (toMutationObserver self))
      (maybe jsNull (unNode . toNode) target)
      (maybe jsNull (unDictionary . toDictionary) options)
 
foreign import javascript unsafe "$1[\"takeRecords\"]()"
        ghcjs_dom_mutation_observer_take_records ::
        JSRef MutationObserver -> IO (JSRef [Maybe MutationRecord])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.takeRecords Mozilla MutationObserver.takeRecords documentation> 
mutationObserverTakeRecords ::
                            (IsMutationObserver self) => self -> IO [Maybe MutationRecord]
mutationObserverTakeRecords self
  = (ghcjs_dom_mutation_observer_take_records
       (unMutationObserver (toMutationObserver self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"disconnect\"]()"
        ghcjs_dom_mutation_observer_disconnect ::
        JSRef MutationObserver -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.disconnect Mozilla MutationObserver.disconnect documentation> 
mutationObserverDisconnect ::
                           (IsMutationObserver self) => self -> IO ()
mutationObserverDisconnect self
  = ghcjs_dom_mutation_observer_disconnect
      (unMutationObserver (toMutationObserver self))
#else
module GHCJS.DOM.MutationObserver (
  ) where
#endif
