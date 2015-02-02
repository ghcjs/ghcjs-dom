{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.GainNode
       (ghcjs_dom_gain_node_get_gain, gainNodeGetGain, GainNode,
        IsGainNode, castToGainNode, gTypeGainNode, toGainNode)
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

 
foreign import javascript unsafe "$1[\"gain\"]"
        ghcjs_dom_gain_node_get_gain ::
        JSRef GainNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GainNode.gain Mozilla GainNode.gain documentation> 
gainNodeGetGain ::
                (IsGainNode self) => self -> IO (Maybe AudioParam)
gainNodeGetGain self
  = (ghcjs_dom_gain_node_get_gain (unGainNode (toGainNode self))) >>=
      fromJSRef
#else
module GHCJS.DOM.GainNode (
  ) where
#endif
