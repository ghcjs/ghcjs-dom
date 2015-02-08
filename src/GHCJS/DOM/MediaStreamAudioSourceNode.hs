{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStreamAudioSourceNode
       (ghcjs_dom_media_stream_audio_source_node_get_media_stream,
        mediaStreamAudioSourceNodeGetMediaStream,
        MediaStreamAudioSourceNode, IsMediaStreamAudioSourceNode,
        castToMediaStreamAudioSourceNode, gTypeMediaStreamAudioSourceNode,
        toMediaStreamAudioSourceNode)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"mediaStream\"]"
        ghcjs_dom_media_stream_audio_source_node_get_media_stream ::
        JSRef MediaStreamAudioSourceNode -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioSourceNode.mediaStream Mozilla MediaStreamAudioSourceNode.mediaStream documentation> 
mediaStreamAudioSourceNodeGetMediaStream ::
                                         (MonadIO m, IsMediaStreamAudioSourceNode self) =>
                                           self -> m (Maybe MediaStream)
mediaStreamAudioSourceNodeGetMediaStream self
  = liftIO
      ((ghcjs_dom_media_stream_audio_source_node_get_media_stream
          (unMediaStreamAudioSourceNode (toMediaStreamAudioSourceNode self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.MediaStreamAudioSourceNode (
  ) where
#endif
