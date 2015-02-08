{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioNode
       (ghcjs_dom_audio_node_connect, audioNodeConnect,
        ghcjs_dom_audio_node_connectParam, audioNodeConnectParam,
        ghcjs_dom_audio_node_disconnect, audioNodeDisconnect,
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
import Control.Monad.IO.Class (MonadIO(..))
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
                 (MonadIO m, IsAudioNode self, IsAudioNode destination) =>
                   self -> Maybe destination -> Word -> Word -> m ()
audioNodeConnect self destination output input
  = liftIO
      (ghcjs_dom_audio_node_connect (unAudioNode (toAudioNode self))
         (maybe jsNull (unAudioNode . toAudioNode) destination)
         output
         input)
 
foreign import javascript unsafe "$1[\"connect\"]($2, $3)"
        ghcjs_dom_audio_node_connectParam ::
        JSRef AudioNode -> JSRef AudioParam -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connectParam Mozilla AudioNode.connectParam documentation> 
audioNodeConnectParam ::
                      (MonadIO m, IsAudioNode self, IsAudioParam destination) =>
                        self -> Maybe destination -> Word -> m ()
audioNodeConnectParam self destination output
  = liftIO
      (ghcjs_dom_audio_node_connectParam (unAudioNode (toAudioNode self))
         (maybe jsNull (unAudioParam . toAudioParam) destination)
         output)
 
foreign import javascript unsafe "$1[\"disconnect\"]($2)"
        ghcjs_dom_audio_node_disconnect :: JSRef AudioNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.disconnect Mozilla AudioNode.disconnect documentation> 
audioNodeDisconnect ::
                    (MonadIO m, IsAudioNode self) => self -> Word -> m ()
audioNodeDisconnect self output
  = liftIO
      (ghcjs_dom_audio_node_disconnect (unAudioNode (toAudioNode self))
         output)
 
foreign import javascript unsafe "$1[\"context\"]"
        ghcjs_dom_audio_node_get_context ::
        JSRef AudioNode -> IO (JSRef AudioContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.context Mozilla AudioNode.context documentation> 
audioNodeGetContext ::
                    (MonadIO m, IsAudioNode self) => self -> m (Maybe AudioContext)
audioNodeGetContext self
  = liftIO
      ((ghcjs_dom_audio_node_get_context
          (unAudioNode (toAudioNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"numberOfInputs\"]"
        ghcjs_dom_audio_node_get_number_of_inputs ::
        JSRef AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.numberOfInputs Mozilla AudioNode.numberOfInputs documentation> 
audioNodeGetNumberOfInputs ::
                           (MonadIO m, IsAudioNode self) => self -> m Word
audioNodeGetNumberOfInputs self
  = liftIO
      (ghcjs_dom_audio_node_get_number_of_inputs
         (unAudioNode (toAudioNode self)))
 
foreign import javascript unsafe "$1[\"numberOfOutputs\"]"
        ghcjs_dom_audio_node_get_number_of_outputs ::
        JSRef AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.numberOfOutputs Mozilla AudioNode.numberOfOutputs documentation> 
audioNodeGetNumberOfOutputs ::
                            (MonadIO m, IsAudioNode self) => self -> m Word
audioNodeGetNumberOfOutputs self
  = liftIO
      (ghcjs_dom_audio_node_get_number_of_outputs
         (unAudioNode (toAudioNode self)))
 
foreign import javascript unsafe "$1[\"channelCount\"] = $2;"
        ghcjs_dom_audio_node_set_channel_count ::
        JSRef AudioNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCount Mozilla AudioNode.channelCount documentation> 
audioNodeSetChannelCount ::
                         (MonadIO m, IsAudioNode self) => self -> Word -> m ()
audioNodeSetChannelCount self val
  = liftIO
      (ghcjs_dom_audio_node_set_channel_count
         (unAudioNode (toAudioNode self))
         val)
 
foreign import javascript unsafe "$1[\"channelCount\"]"
        ghcjs_dom_audio_node_get_channel_count ::
        JSRef AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCount Mozilla AudioNode.channelCount documentation> 
audioNodeGetChannelCount ::
                         (MonadIO m, IsAudioNode self) => self -> m Word
audioNodeGetChannelCount self
  = liftIO
      (ghcjs_dom_audio_node_get_channel_count
         (unAudioNode (toAudioNode self)))
 
foreign import javascript unsafe "$1[\"channelCountMode\"] = $2;"
        ghcjs_dom_audio_node_set_channel_count_mode ::
        JSRef AudioNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCountMode Mozilla AudioNode.channelCountMode documentation> 
audioNodeSetChannelCountMode ::
                             (MonadIO m, IsAudioNode self, ToJSString val) =>
                               self -> val -> m ()
audioNodeSetChannelCountMode self val
  = liftIO
      (ghcjs_dom_audio_node_set_channel_count_mode
         (unAudioNode (toAudioNode self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"channelCountMode\"]"
        ghcjs_dom_audio_node_get_channel_count_mode ::
        JSRef AudioNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCountMode Mozilla AudioNode.channelCountMode documentation> 
audioNodeGetChannelCountMode ::
                             (MonadIO m, IsAudioNode self, FromJSString result) =>
                               self -> m result
audioNodeGetChannelCountMode self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_audio_node_get_channel_count_mode
            (unAudioNode (toAudioNode self))))
 
foreign import javascript unsafe
        "$1[\"channelInterpretation\"] = $2;"
        ghcjs_dom_audio_node_set_channel_interpretation ::
        JSRef AudioNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelInterpretation Mozilla AudioNode.channelInterpretation documentation> 
audioNodeSetChannelInterpretation ::
                                  (MonadIO m, IsAudioNode self, ToJSString val) =>
                                    self -> val -> m ()
audioNodeSetChannelInterpretation self val
  = liftIO
      (ghcjs_dom_audio_node_set_channel_interpretation
         (unAudioNode (toAudioNode self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"channelInterpretation\"]"
        ghcjs_dom_audio_node_get_channel_interpretation ::
        JSRef AudioNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelInterpretation Mozilla AudioNode.channelInterpretation documentation> 
audioNodeGetChannelInterpretation ::
                                  (MonadIO m, IsAudioNode self, FromJSString result) =>
                                    self -> m result
audioNodeGetChannelInterpretation self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_audio_node_get_channel_interpretation
            (unAudioNode (toAudioNode self))))
#else
module GHCJS.DOM.AudioNode (
  ) where
#endif
