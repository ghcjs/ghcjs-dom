{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioNode
       (js_connect, connect, js_connectParam, connectParam, js_disconnect,
        disconnect, js_getContext, getContext, js_getNumberOfInputs,
        getNumberOfInputs, js_getNumberOfOutputs, getNumberOfOutputs,
        js_setChannelCount, setChannelCount, js_getChannelCount,
        getChannelCount, js_setChannelCountMode, setChannelCountMode,
        js_getChannelCountMode, getChannelCountMode,
        js_setChannelInterpretation, setChannelInterpretation,
        js_getChannelInterpretation, getChannelInterpretation, AudioNode,
        castToAudioNode, gTypeAudioNode, IsAudioNode, toAudioNode)
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
 
foreign import javascript unsafe "$1[\"connect\"]($2, $3, $4)"
        js_connect ::
        AudioNode -> Nullable AudioNode -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connect Mozilla AudioNode.connect documentation> 
connect ::
        (MonadIO m, IsAudioNode self, IsAudioNode destination) =>
          self -> Maybe destination -> Word -> Word -> m ()
connect self destination output input
  = liftIO
      (js_connect (toAudioNode self)
         (maybeToNullable (fmap toAudioNode destination))
         output
         input)
 
foreign import javascript unsafe "$1[\"connect\"]($2, $3)"
        js_connectParam ::
        AudioNode -> Nullable AudioParam -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connect Mozilla AudioNode.connect documentation> 
connectParam ::
             (MonadIO m, IsAudioNode self) =>
               self -> Maybe AudioParam -> Word -> m ()
connectParam self destination output
  = liftIO
      (js_connectParam (toAudioNode self) (maybeToNullable destination)
         output)
 
foreign import javascript unsafe "$1[\"disconnect\"]($2)"
        js_disconnect :: AudioNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.disconnect Mozilla AudioNode.disconnect documentation> 
disconnect :: (MonadIO m, IsAudioNode self) => self -> Word -> m ()
disconnect self output
  = liftIO (js_disconnect (toAudioNode self) output)
 
foreign import javascript unsafe "$1[\"context\"]" js_getContext ::
        AudioNode -> IO (Nullable AudioContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.context Mozilla AudioNode.context documentation> 
getContext ::
           (MonadIO m, IsAudioNode self) => self -> m (Maybe AudioContext)
getContext self
  = liftIO (nullableToMaybe <$> (js_getContext (toAudioNode self)))
 
foreign import javascript unsafe "$1[\"numberOfInputs\"]"
        js_getNumberOfInputs :: AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.numberOfInputs Mozilla AudioNode.numberOfInputs documentation> 
getNumberOfInputs ::
                  (MonadIO m, IsAudioNode self) => self -> m Word
getNumberOfInputs self
  = liftIO (js_getNumberOfInputs (toAudioNode self))
 
foreign import javascript unsafe "$1[\"numberOfOutputs\"]"
        js_getNumberOfOutputs :: AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.numberOfOutputs Mozilla AudioNode.numberOfOutputs documentation> 
getNumberOfOutputs ::
                   (MonadIO m, IsAudioNode self) => self -> m Word
getNumberOfOutputs self
  = liftIO (js_getNumberOfOutputs (toAudioNode self))
 
foreign import javascript unsafe "$1[\"channelCount\"] = $2;"
        js_setChannelCount :: AudioNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCount Mozilla AudioNode.channelCount documentation> 
setChannelCount ::
                (MonadIO m, IsAudioNode self) => self -> Word -> m ()
setChannelCount self val
  = liftIO (js_setChannelCount (toAudioNode self) val)
 
foreign import javascript unsafe "$1[\"channelCount\"]"
        js_getChannelCount :: AudioNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCount Mozilla AudioNode.channelCount documentation> 
getChannelCount :: (MonadIO m, IsAudioNode self) => self -> m Word
getChannelCount self
  = liftIO (js_getChannelCount (toAudioNode self))
 
foreign import javascript unsafe "$1[\"channelCountMode\"] = $2;"
        js_setChannelCountMode :: AudioNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCountMode Mozilla AudioNode.channelCountMode documentation> 
setChannelCountMode ::
                    (MonadIO m, IsAudioNode self, ToJSString val) =>
                      self -> val -> m ()
setChannelCountMode self val
  = liftIO
      (js_setChannelCountMode (toAudioNode self) (toJSString val))
 
foreign import javascript unsafe "$1[\"channelCountMode\"]"
        js_getChannelCountMode :: AudioNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelCountMode Mozilla AudioNode.channelCountMode documentation> 
getChannelCountMode ::
                    (MonadIO m, IsAudioNode self, FromJSString result) =>
                      self -> m result
getChannelCountMode self
  = liftIO
      (fromJSString <$> (js_getChannelCountMode (toAudioNode self)))
 
foreign import javascript unsafe
        "$1[\"channelInterpretation\"] = $2;" js_setChannelInterpretation
        :: AudioNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelInterpretation Mozilla AudioNode.channelInterpretation documentation> 
setChannelInterpretation ::
                         (MonadIO m, IsAudioNode self, ToJSString val) =>
                           self -> val -> m ()
setChannelInterpretation self val
  = liftIO
      (js_setChannelInterpretation (toAudioNode self) (toJSString val))
 
foreign import javascript unsafe "$1[\"channelInterpretation\"]"
        js_getChannelInterpretation :: AudioNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.channelInterpretation Mozilla AudioNode.channelInterpretation documentation> 
getChannelInterpretation ::
                         (MonadIO m, IsAudioNode self, FromJSString result) =>
                           self -> m result
getChannelInterpretation self
  = liftIO
      (fromJSString <$> (js_getChannelInterpretation (toAudioNode self)))