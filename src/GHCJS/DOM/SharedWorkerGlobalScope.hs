{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SharedWorkerGlobalScope
       (ghcjs_dom_shared_worker_global_scope_get_name,
        sharedWorkerGlobalScopeGetName, sharedWorkerGlobalScopeConnect,
        SharedWorkerGlobalScope, IsSharedWorkerGlobalScope,
        castToSharedWorkerGlobalScope, gTypeSharedWorkerGlobalScope,
        toSharedWorkerGlobalScope)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_shared_worker_global_scope_get_name ::
        JSRef SharedWorkerGlobalScope -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope.name Mozilla SharedWorkerGlobalScope.name documentation> 
sharedWorkerGlobalScopeGetName ::
                               (MonadIO m, IsSharedWorkerGlobalScope self, FromJSString result) =>
                                 self -> m result
sharedWorkerGlobalScopeGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_shared_worker_global_scope_get_name
            (unSharedWorkerGlobalScope (toSharedWorkerGlobalScope self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope.connect Mozilla SharedWorkerGlobalScope.connect documentation> 
sharedWorkerGlobalScopeConnect ::
                               (IsSharedWorkerGlobalScope self, IsEventTarget self) =>
                                 EventName self Event
sharedWorkerGlobalScopeConnect
  = unsafeEventName (toJSString "connect")
#else
module GHCJS.DOM.SharedWorkerGlobalScope (
  ) where
#endif
