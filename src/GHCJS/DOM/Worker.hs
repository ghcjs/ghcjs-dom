{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Worker
       (ghcjs_dom_worker_post_message, workerPostMessage,
        ghcjs_dom_worker_terminate, workerTerminate, workerOnmessage,
        Worker, IsWorker, castToWorker, gTypeWorker, toWorker)
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
        ghcjs_dom_worker_post_message ::
        JSRef Worker ->
          JSRef SerializedScriptValue -> JSRef MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.postMessage Mozilla Worker.postMessage documentation> 
workerPostMessage ::
                  (IsWorker self, IsSerializedScriptValue message,
                   IsMessagePort messagePort) =>
                    self -> Maybe message -> Maybe messagePort -> IO ()
workerPostMessage self message messagePort
  = ghcjs_dom_worker_post_message (unWorker (toWorker self))
      (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
         message)
      (maybe jsNull (unMessagePort . toMessagePort) messagePort)
 
foreign import javascript unsafe "$1[\"terminate\"]()"
        ghcjs_dom_worker_terminate :: JSRef Worker -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.terminate Mozilla Worker.terminate documentation> 
workerTerminate :: (IsWorker self) => self -> IO ()
workerTerminate self
  = ghcjs_dom_worker_terminate (unWorker (toWorker self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.onmessage Mozilla Worker.onmessage documentation> 
workerOnmessage ::
                (IsWorker self) => Signal self (EventM UIEvent self ())
workerOnmessage = (connect "message")
#else
module GHCJS.DOM.Worker (
  ) where
#endif
