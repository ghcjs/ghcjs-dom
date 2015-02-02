{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStreamAudioDestinationNode
       (ghcjs_dom_media_stream_audio_destination_node_get_stream,
        mediaStreamAudioDestinationNodeGetStream,
        MediaStreamAudioDestinationNode, IsMediaStreamAudioDestinationNode,
        castToMediaStreamAudioDestinationNode,
        gTypeMediaStreamAudioDestinationNode,
        toMediaStreamAudioDestinationNode)
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

 
foreign import javascript unsafe "$1[\"stream\"]"
        ghcjs_dom_media_stream_audio_destination_node_get_stream ::
        JSRef MediaStreamAudioDestinationNode -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioDestinationNode.stream Mozilla MediaStreamAudioDestinationNode.stream documentation> 
mediaStreamAudioDestinationNodeGetStream ::
                                         (IsMediaStreamAudioDestinationNode self) =>
                                           self -> IO (Maybe MediaStream)
mediaStreamAudioDestinationNodeGetStream self
  = (ghcjs_dom_media_stream_audio_destination_node_get_stream
       (unMediaStreamAudioDestinationNode
          (toMediaStreamAudioDestinationNode self)))
      >>= fromJSRef
#else
module GHCJS.DOM.MediaStreamAudioDestinationNode (
  ) where
#endif
