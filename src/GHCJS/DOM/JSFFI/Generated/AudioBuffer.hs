{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioBuffer
       (js_getChannelData, getChannelData, js_getLength, getLength,
        js_getDuration, getDuration, js_getSampleRate, getSampleRate,
        js_setGain, setGain, js_getGain, getGain, js_getNumberOfChannels,
        getNumberOfChannels, AudioBuffer, castToAudioBuffer,
        gTypeAudioBuffer)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"getChannelData\"]($2)"
        js_getChannelData ::
        JSRef AudioBuffer -> Word -> IO (JSRef Float32Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.getChannelData Mozilla AudioBuffer.getChannelData documentation> 
getChannelData ::
               (MonadIO m) => AudioBuffer -> Word -> m (Maybe Float32Array)
getChannelData self channelIndex
  = liftIO
      ((js_getChannelData (unAudioBuffer self) channelIndex) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef AudioBuffer -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.length Mozilla AudioBuffer.length documentation> 
getLength :: (MonadIO m) => AudioBuffer -> m Int
getLength self = liftIO (js_getLength (unAudioBuffer self))
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: JSRef AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.duration Mozilla AudioBuffer.duration documentation> 
getDuration :: (MonadIO m) => AudioBuffer -> m Float
getDuration self = liftIO (js_getDuration (unAudioBuffer self))
 
foreign import javascript unsafe "$1[\"sampleRate\"]"
        js_getSampleRate :: JSRef AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.sampleRate Mozilla AudioBuffer.sampleRate documentation> 
getSampleRate :: (MonadIO m) => AudioBuffer -> m Float
getSampleRate self = liftIO (js_getSampleRate (unAudioBuffer self))
 
foreign import javascript unsafe "$1[\"gain\"] = $2;" js_setGain ::
        JSRef AudioBuffer -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
setGain :: (MonadIO m) => AudioBuffer -> Float -> m ()
setGain self val = liftIO (js_setGain (unAudioBuffer self) val)
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        JSRef AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
getGain :: (MonadIO m) => AudioBuffer -> m Float
getGain self = liftIO (js_getGain (unAudioBuffer self))
 
foreign import javascript unsafe "$1[\"numberOfChannels\"]"
        js_getNumberOfChannels :: JSRef AudioBuffer -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.numberOfChannels Mozilla AudioBuffer.numberOfChannels documentation> 
getNumberOfChannels :: (MonadIO m) => AudioBuffer -> m Word
getNumberOfChannels self
  = liftIO (js_getNumberOfChannels (unAudioBuffer self))