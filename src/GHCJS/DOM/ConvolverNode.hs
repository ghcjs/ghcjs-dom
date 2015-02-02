{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ConvolverNode
       (ghcjs_dom_convolver_node_set_buffer, convolverNodeSetBuffer,
        ghcjs_dom_convolver_node_get_buffer, convolverNodeGetBuffer,
        ghcjs_dom_convolver_node_set_normalize, convolverNodeSetNormalize,
        ghcjs_dom_convolver_node_get_normalize, convolverNodeGetNormalize,
        ConvolverNode, IsConvolverNode, castToConvolverNode,
        gTypeConvolverNode, toConvolverNode)
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

 
foreign import javascript unsafe "$1[\"buffer\"] = $2;"
        ghcjs_dom_convolver_node_set_buffer ::
        JSRef ConvolverNode -> JSRef AudioBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
convolverNodeSetBuffer ::
                       (IsConvolverNode self, IsAudioBuffer val) =>
                         self -> Maybe val -> IO ()
convolverNodeSetBuffer self val
  = ghcjs_dom_convolver_node_set_buffer
      (unConvolverNode (toConvolverNode self))
      (maybe jsNull (unAudioBuffer . toAudioBuffer) val)
 
foreign import javascript unsafe "$1[\"buffer\"]"
        ghcjs_dom_convolver_node_get_buffer ::
        JSRef ConvolverNode -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
convolverNodeGetBuffer ::
                       (IsConvolverNode self) => self -> IO (Maybe AudioBuffer)
convolverNodeGetBuffer self
  = (ghcjs_dom_convolver_node_get_buffer
       (unConvolverNode (toConvolverNode self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"normalize\"] = $2;"
        ghcjs_dom_convolver_node_set_normalize ::
        JSRef ConvolverNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
convolverNodeSetNormalize ::
                          (IsConvolverNode self) => self -> Bool -> IO ()
convolverNodeSetNormalize self val
  = ghcjs_dom_convolver_node_set_normalize
      (unConvolverNode (toConvolverNode self))
      val
 
foreign import javascript unsafe "($1[\"normalize\"] ? 1 : 0)"
        ghcjs_dom_convolver_node_get_normalize ::
        JSRef ConvolverNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
convolverNodeGetNormalize ::
                          (IsConvolverNode self) => self -> IO Bool
convolverNodeGetNormalize self
  = ghcjs_dom_convolver_node_get_normalize
      (unConvolverNode (toConvolverNode self))
#else
module GHCJS.DOM.ConvolverNode (
  ) where
#endif
