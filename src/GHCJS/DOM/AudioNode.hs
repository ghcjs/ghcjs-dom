{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioNode
       (ghcjs_dom_audio_node_connect, audioNodeConnect,
        ghcjs_dom_audio_node_connectParam, audioNodeConnectParam,
        ghcjs_dom_audio_node_disconnect, audioNodeDisconnect,
        ghcjs_dom_audio_node_dispatch_event, audioNodeDispatchEvent,
        ghcjs_dom_audio_node_get_context, audioNodeGetContext,
        ghcjs_dom_audio_node_get_number_of_inputs,
        audioNodeGetNumberOfInputs,
        ghcjs_dom_audio_node_get_number_of_outputs,
        audioNodeGetNumberOfOutputs,
        ghcjs_dom_audio_node_set_channel_count, audioNodeSetChannelCount,
        ghcjs_dom_audio_node_get_channel_count, audioNodeGetChannelCount,
        ghcjs_dom_audio_node_set_channel_count_mode,
        audioNodeSetChannelCountMode,
        ghcjs_dom_audio_node_get_channel_count_mode,
        audioNodeGetChannelCountMode,
        ghcjs_dom_audio_node_set_channel_interpretation,
        audioNodeSetChannelInterpretation,
        ghcjs_dom_audio_node_get_channel_interpretation,
        audioNodeGetChannelInterpretation, AudioNode, IsAudioNode,
        castToAudioNode, gTypeAudioNode, toAudioNode)
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

 
foreign import javascript unsafe "$1[\"connect\"]($2, $3, $4)"
        ghcjs_dom_audio_node_connect ::
        JSRef AudioNode -> JSRef AudioNode -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connect Mozilla AudioNode.connect documentation> 
audioNodeConnect ::
                 (IsAudioNode self, IsAudioNode destination) =>
                   self -> Maybe destination -> Word -> Word -> IO ()
audioNodeConnect self destination output input
  = ghcjs_dom_audio_node_connect (unAudioNode (toAudioNode self))
      (maybe jsNull (unAudioNode . toAudioNode) destination)
      output
      input
 
foreign import javascript unsafe "$1[\"connect\"]($2, $3)"
        ghcjs_dom_audio_node_connectParam ::
        JSRef AudioNode -> JSRef AudioParam -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connectParam Mozilla AudioNode.connectParam documentation> 
audioNodeConnectParam ::
                      (IsAudioNode self, IsAudioParam destination) =>
                        self -> Maybe destination -> Word -> IO ()
audioNodeConnectParam self destination output
  = ghcjs_dom_audio_node_connectParam
      (unAudioNode (toAudioNode self))
      (maybe jsNull (unAudioParam . toAudioParam) destination)
      output
 
foreign import javascript unsafe "$1[\"disconnect\"]($2)"
        ghcjs_dom_audio_node_disconnect :: JSRef AudioNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.disconnect Mozilla AudioNode.disconnect documentation> 
audioNodeDisconnect :: (IsAudioNode self) => self -> Word -> IO ()
audioNodeDisconnect self output
  = ghcjs_dom_audio_node_disconnect (unAudioNode (toAudioNode self))
      output
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_audio_node_dispatch_event ::
        JSRef AudioNode -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.dispatchEvent Mozilla AudioNode.dispatchEvent documentation> 
audioNodeDispatchEvent ::
                       (IsAudioNode self, IsEvent event) => self -> Maybe event -> IO Bool
audioNodeDispatchEvent self event
  = ghcjs_dom_audio_node_dispatch_event
      (unAudioNode (toAudioNode self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "$1[\"context\"]"
        ghcjs_dom_audio_node_get_context ::
        JSRef AudioNode -> IO (JSRef AudioContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.context Mozilla AudioNode.context documentation> 
audioNodeGetContext ::
                    (IsAudioNode self) => self -> IO (Maybe AudioContext)
audioNodeGetContext self
  = (ghcjs_dom_audio_node_get_context
       (unAudioNode (toAudioNode self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"numberOfInputs\"]"
        ghcjs_dom_audio_node_get_number_of_inputs ::
        JSRef AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.numberOfInputs Mozilla AudioNode.numberOfInputs documentation> 
audioNodeGetNumberOfInputs :: (IsAudioNode self) => self -> IO Word
audioNodeGetNumberOfInputs self
  = ghcjs_dom_audio_node_get_number_of_inputs
      (unAudioNode (toAudioNode self))
 
foreign import javascript unsafe "$1[\"numberOfOutputs\"]"
        ghcjs_dom_audio_node_get_number_of_outputs ::
        JSRef AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.numberOfOutputs Mozilla AudioNode.numberOfOutputs documentation> 
audioNodeGetNumberOfOutputs ::
                            (IsAudioNode self) => self -> IO Word
audioNodeGetNumberOfOutputs self
  = ghcjs_dom_audio_node_get_number_of_outputs
      (unAudioNode (toAudioNode self))
 
foreign import javascript unsafe "$1[\"channelCount\"] = $2;"
        ghcjs_dom_audio_node_set_channel_count ::
        JSRef AudioNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCount Mozilla AudioNode.channelCount documentation> 
audioNodeSetChannelCount ::
                         (IsAudioNode self) => self -> Word -> IO ()
audioNodeSetChannelCount self val
  = ghcjs_dom_audio_node_set_channel_count
      (unAudioNode (toAudioNode self))
      val
 
foreign import javascript unsafe "$1[\"channelCount\"]"
        ghcjs_dom_audio_node_get_channel_count ::
        JSRef AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCount Mozilla AudioNode.channelCount documentation> 
audioNodeGetChannelCount :: (IsAudioNode self) => self -> IO Word
audioNodeGetChannelCount self
  = ghcjs_dom_audio_node_get_channel_count
      (unAudioNode (toAudioNode self))
 
foreign import javascript unsafe "$1[\"channelCountMode\"] = $2;"
        ghcjs_dom_audio_node_set_channel_count_mode ::
        JSRef AudioNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCountMode Mozilla AudioNode.channelCountMode documentation> 
audioNodeSetChannelCountMode ::
                             (IsAudioNode self, ToJSString val) => self -> val -> IO ()
audioNodeSetChannelCountMode self val
  = ghcjs_dom_audio_node_set_channel_count_mode
      (unAudioNode (toAudioNode self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"channelCountMode\"]"
        ghcjs_dom_audio_node_get_channel_count_mode ::
        JSRef AudioNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCountMode Mozilla AudioNode.channelCountMode documentation> 
audioNodeGetChannelCountMode ::
                             (IsAudioNode self, FromJSString result) => self -> IO result
audioNodeGetChannelCountMode self
  = fromJSString <$>
      (ghcjs_dom_audio_node_get_channel_count_mode
         (unAudioNode (toAudioNode self)))
 
foreign import javascript unsafe
        "$1[\"channelInterpretation\"] = $2;"
        ghcjs_dom_audio_node_set_channel_interpretation ::
        JSRef AudioNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelInterpretation Mozilla AudioNode.channelInterpretation documentation> 
audioNodeSetChannelInterpretation ::
                                  (IsAudioNode self, ToJSString val) => self -> val -> IO ()
audioNodeSetChannelInterpretation self val
  = ghcjs_dom_audio_node_set_channel_interpretation
      (unAudioNode (toAudioNode self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"channelInterpretation\"]"
        ghcjs_dom_audio_node_get_channel_interpretation ::
        JSRef AudioNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelInterpretation Mozilla AudioNode.channelInterpretation documentation> 
audioNodeGetChannelInterpretation ::
                                  (IsAudioNode self, FromJSString result) => self -> IO result
audioNodeGetChannelInterpretation self
  = fromJSString <$>
      (ghcjs_dom_audio_node_get_channel_interpretation
         (unAudioNode (toAudioNode self)))
#else
module GHCJS.DOM.AudioNode (
  ) where
#endif
