{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ScriptProcessorNode
       (audioProcess, js_getBufferSize, getBufferSize,
        ScriptProcessorNode, castToScriptProcessorNode,
        gTypeScriptProcessorNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode.onaudioprocess Mozilla ScriptProcessorNode.onaudioprocess documentation> 
audioProcess :: EventName ScriptProcessorNode AudioProcessingEvent
audioProcess = unsafeEventName (toJSString "audioprocess")
 
foreign import javascript unsafe "$1[\"bufferSize\"]"
        js_getBufferSize :: ScriptProcessorNode -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode.bufferSize Mozilla ScriptProcessorNode.bufferSize documentation> 
getBufferSize :: (MonadIO m) => ScriptProcessorNode -> m Int
getBufferSize self = liftIO (js_getBufferSize (self))