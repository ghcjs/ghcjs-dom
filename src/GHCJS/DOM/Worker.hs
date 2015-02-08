{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Worker
       (ghcjs_dom_worker_new, workerNew, ghcjs_dom_worker_post_message,
        workerPostMessage, ghcjs_dom_worker_terminate, workerTerminate,
        workerMessage, Worker, IsWorker, castToWorker, gTypeWorker,
        toWorker)
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

 
foreign import javascript unsafe "new window[\"Worker\"]($1)"
        ghcjs_dom_worker_new :: JSString -> IO (JSRef Worker)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation> 
workerNew ::
          (MonadIO m, ToJSString scriptUrl) => scriptUrl -> m Worker
workerNew scriptUrl
  = liftIO
      (ghcjs_dom_worker_new (toJSString scriptUrl) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3)"
        ghcjs_dom_worker_post_message ::
        JSRef Worker ->
          JSRef SerializedScriptValue -> JSRef MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.postMessage Mozilla Worker.postMessage documentation> 
workerPostMessage ::
                  (MonadIO m, IsWorker self, IsSerializedScriptValue message,
                   IsMessagePort messagePort) =>
                    self -> Maybe message -> Maybe messagePort -> m ()
workerPostMessage self message messagePort
  = liftIO
      (ghcjs_dom_worker_post_message (unWorker (toWorker self))
         (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
            message)
         (maybe jsNull (unMessagePort . toMessagePort) messagePort))
 
foreign import javascript unsafe "$1[\"terminate\"]()"
        ghcjs_dom_worker_terminate :: JSRef Worker -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.terminate Mozilla Worker.terminate documentation> 
workerTerminate :: (MonadIO m, IsWorker self) => self -> m ()
workerTerminate self
  = liftIO (ghcjs_dom_worker_terminate (unWorker (toWorker self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.message Mozilla Worker.message documentation> 
workerMessage ::
              (IsWorker self, IsEventTarget self) => EventName self MessageEvent
workerMessage = unsafeEventName (toJSString "message")
#else
module GHCJS.DOM.Worker (
  ) where
#endif
