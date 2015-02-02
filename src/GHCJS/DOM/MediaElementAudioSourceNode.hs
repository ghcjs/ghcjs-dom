{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaElementAudioSourceNode
       (ghcjs_dom_media_element_audio_source_node_get_media_element,
        mediaElementAudioSourceNodeGetMediaElement,
        MediaElementAudioSourceNode, IsMediaElementAudioSourceNode,
        castToMediaElementAudioSourceNode,
        gTypeMediaElementAudioSourceNode, toMediaElementAudioSourceNode)
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

 
foreign import javascript unsafe "$1[\"mediaElement\"]"
        ghcjs_dom_media_element_audio_source_node_get_media_element ::
        JSRef MediaElementAudioSourceNode -> IO (JSRef HTMLMediaElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode.mediaElement Mozilla MediaElementAudioSourceNode.mediaElement documentation> 
mediaElementAudioSourceNodeGetMediaElement ::
                                           (IsMediaElementAudioSourceNode self) =>
                                             self -> IO (Maybe HTMLMediaElement)
mediaElementAudioSourceNodeGetMediaElement self
  = (ghcjs_dom_media_element_audio_source_node_get_media_element
       (unMediaElementAudioSourceNode
          (toMediaElementAudioSourceNode self)))
      >>= fromJSRef
#else
module GHCJS.DOM.MediaElementAudioSourceNode (
  ) where
#endif
