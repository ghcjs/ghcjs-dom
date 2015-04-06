{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ScriptProcessorNode
       (audioProcess, js_getBufferSize, getBufferSize,
        ScriptProcessorNode, castToScriptProcessorNode,
        gTypeScriptProcessorNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode.onaudioprocess Mozilla ScriptProcessorNode.onaudioprocess documentation> 
audioProcess :: EventName ScriptProcessorNode AudioProcessingEvent
audioProcess = unsafeEventName (toJSString "audioprocess")
 
foreign import javascript unsafe "$1[\"bufferSize\"]"
        js_getBufferSize :: JSRef ScriptProcessorNode -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode.bufferSize Mozilla ScriptProcessorNode.bufferSize documentation> 
getBufferSize :: (MonadIO m) => ScriptProcessorNode -> m Int
getBufferSize self
  = liftIO (js_getBufferSize (unScriptProcessorNode self))
#else
module GHCJS.DOM.ScriptProcessorNode (
  ) where
#endif
