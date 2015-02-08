{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SharedWorker
       (ghcjs_dom_shared_worker_new, sharedWorkerNew,
        ghcjs_dom_shared_worker_get_port, sharedWorkerGetPort,
        SharedWorker, IsSharedWorker, castToSharedWorker,
        gTypeSharedWorker, toSharedWorker)
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

 
foreign import javascript unsafe
        "new window[\"SharedWorker\"]($1,\n$2)" ghcjs_dom_shared_worker_new
        :: JSString -> JSString -> IO (JSRef SharedWorker)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker Mozilla SharedWorker documentation> 
sharedWorkerNew ::
                (MonadIO m, ToJSString scriptURL, ToJSString name) =>
                  scriptURL -> name -> m SharedWorker
sharedWorkerNew scriptURL name
  = liftIO
      (ghcjs_dom_shared_worker_new (toJSString scriptURL)
         (toJSString name)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_shared_worker_get_port ::
        JSRef SharedWorker -> IO (JSRef MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker.port Mozilla SharedWorker.port documentation> 
sharedWorkerGetPort ::
                    (MonadIO m, IsSharedWorker self) => self -> m (Maybe MessagePort)
sharedWorkerGetPort self
  = liftIO
      ((ghcjs_dom_shared_worker_get_port
          (unSharedWorker (toSharedWorker self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SharedWorker (
  ) where
#endif
