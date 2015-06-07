{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DedicatedWorkerGlobalScope
       (js_postMessage, postMessage, message, DedicatedWorkerGlobalScope,
        castToDedicatedWorkerGlobalScope, gTypeDedicatedWorkerGlobalScope)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3)"
        js_postMessage ::
        JSRef DedicatedWorkerGlobalScope ->
          JSString -> JSRef MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.postMessage Mozilla DedicatedWorkerGlobalScope.postMessage documentation> 
postMessage ::
            (MonadIO m, ToJSString message) =>
              DedicatedWorkerGlobalScope -> message -> Maybe MessagePort -> m ()
postMessage self message messagePort
  = liftIO
      (js_postMessage (unDedicatedWorkerGlobalScope self)
         (toJSString message)
         (maybe jsNull pToJSRef messagePort))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.onmessage Mozilla DedicatedWorkerGlobalScope.onmessage documentation> 
message :: EventName DedicatedWorkerGlobalScope MessageEvent
message = unsafeEventName (toJSString "message")