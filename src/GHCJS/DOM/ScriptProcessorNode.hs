{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ScriptProcessorNode
       (scriptProcessorNodeOnaudioprocess,
        ghcjs_dom_script_processor_node_get_buffer_size,
        scriptProcessorNodeGetBufferSize, ScriptProcessorNode,
        IsScriptProcessorNode, castToScriptProcessorNode,
        gTypeScriptProcessorNode, toScriptProcessorNode)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode.onaudioprocess Mozilla ScriptProcessorNode.onaudioprocess documentation> 
scriptProcessorNodeOnaudioprocess ::
                                  (IsScriptProcessorNode self) =>
                                    Signal self (EventM UIEvent self ())
scriptProcessorNodeOnaudioprocess = (connect "audioprocess")
 
foreign import javascript unsafe "$1[\"bufferSize\"]"
        ghcjs_dom_script_processor_node_get_buffer_size ::
        JSRef ScriptProcessorNode -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode.bufferSize Mozilla ScriptProcessorNode.bufferSize documentation> 
scriptProcessorNodeGetBufferSize ::
                                 (IsScriptProcessorNode self) => self -> IO Int
scriptProcessorNodeGetBufferSize self
  = ghcjs_dom_script_processor_node_get_buffer_size
      (unScriptProcessorNode (toScriptProcessorNode self))
#else
module GHCJS.DOM.ScriptProcessorNode (
  ) where
#endif
