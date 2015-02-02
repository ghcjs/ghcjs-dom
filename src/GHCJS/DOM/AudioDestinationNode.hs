{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioDestinationNode
       (ghcjs_dom_audio_destination_node_get_max_channel_count,
        audioDestinationNodeGetMaxChannelCount, AudioDestinationNode,
        IsAudioDestinationNode, castToAudioDestinationNode,
        gTypeAudioDestinationNode, toAudioDestinationNode)
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

 
foreign import javascript unsafe "$1[\"maxChannelCount\"]"
        ghcjs_dom_audio_destination_node_get_max_channel_count ::
        JSRef AudioDestinationNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioDestinationNode.maxChannelCount Mozilla AudioDestinationNode.maxChannelCount documentation> 
audioDestinationNodeGetMaxChannelCount ::
                                       (IsAudioDestinationNode self) => self -> IO Word
audioDestinationNodeGetMaxChannelCount self
  = ghcjs_dom_audio_destination_node_get_max_channel_count
      (unAudioDestinationNode (toAudioDestinationNode self))
#else
module GHCJS.DOM.AudioDestinationNode (
  ) where
#endif
