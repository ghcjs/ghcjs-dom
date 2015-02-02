{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DedicatedWorkerGlobalScope
       (ghcjs_dom_dedicated_worker_global_scope_post_message,
        dedicatedWorkerGlobalScopePostMessage,
        dedicatedWorkerGlobalScopeOnmessage, DedicatedWorkerGlobalScope,
        IsDedicatedWorkerGlobalScope, castToDedicatedWorkerGlobalScope,
        gTypeDedicatedWorkerGlobalScope, toDedicatedWorkerGlobalScope)
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

 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3)"
        ghcjs_dom_dedicated_worker_global_scope_post_message ::
        JSRef DedicatedWorkerGlobalScope ->
          JSString -> JSRef MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.postMessage Mozilla DedicatedWorkerGlobalScope.postMessage documentation> 
dedicatedWorkerGlobalScopePostMessage ::
                                      (IsDedicatedWorkerGlobalScope self, ToJSString message,
                                       IsMessagePort messagePort) =>
                                        self -> message -> Maybe messagePort -> IO ()
dedicatedWorkerGlobalScopePostMessage self message messagePort
  = ghcjs_dom_dedicated_worker_global_scope_post_message
      (unDedicatedWorkerGlobalScope (toDedicatedWorkerGlobalScope self))
      (toJSString message)
      (maybe jsNull (unMessagePort . toMessagePort) messagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.onmessage Mozilla DedicatedWorkerGlobalScope.onmessage documentation> 
dedicatedWorkerGlobalScopeOnmessage ::
                                    (IsDedicatedWorkerGlobalScope self) =>
                                      Signal self (EventM UIEvent self ())
dedicatedWorkerGlobalScopeOnmessage = (connect "message")
#else
module GHCJS.DOM.DedicatedWorkerGlobalScope (
  ) where
#endif
