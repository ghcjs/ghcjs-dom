{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Worker
       (js_newWorker, newWorker, js_postMessage, postMessage,
        js_terminate, terminate, message, Worker, castToWorker,
        gTypeWorker)
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
 
foreign import javascript unsafe "new window[\"Worker\"]($1)"
        js_newWorker :: JSString -> IO Worker

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation> 
newWorker ::
          (MonadIO m, ToJSString scriptUrl) => scriptUrl -> m Worker
newWorker scriptUrl = liftIO (js_newWorker (toJSString scriptUrl))
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3)"
        js_postMessage ::
        Worker -> Nullable SerializedScriptValue -> Nullable Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.postMessage Mozilla Worker.postMessage documentation> 
postMessage ::
            (MonadIO m, IsSerializedScriptValue message,
             IsArray messagePorts) =>
              Worker -> Maybe message -> Maybe messagePorts -> m ()
postMessage self message messagePorts
  = liftIO
      (js_postMessage (self)
         (maybeToNullable (fmap toSerializedScriptValue message))
         (maybeToNullable (fmap toArray messagePorts)))
 
foreign import javascript unsafe "$1[\"terminate\"]()" js_terminate
        :: Worker -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.terminate Mozilla Worker.terminate documentation> 
terminate :: (MonadIO m) => Worker -> m ()
terminate self = liftIO (js_terminate (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.onmessage Mozilla Worker.onmessage documentation> 
message :: EventName Worker MessageEvent
message = unsafeEventName (toJSString "message")