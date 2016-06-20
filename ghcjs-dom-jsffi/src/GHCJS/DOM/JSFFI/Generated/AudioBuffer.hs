{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioBuffer
       (js_getChannelData, getChannelData, js_getLength, getLength,
        js_getDuration, getDuration, js_getSampleRate, getSampleRate,
        js_setGain, setGain, js_getGain, getGain, js_getNumberOfChannels,
        getNumberOfChannels, AudioBuffer, castToAudioBuffer,
        gTypeAudioBuffer)
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
 
foreign import javascript unsafe "$1[\"getChannelData\"]($2)"
        js_getChannelData ::
        AudioBuffer -> Word -> IO (Nullable Float32Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.getChannelData Mozilla AudioBuffer.getChannelData documentation> 
getChannelData ::
               (MonadIO m) => AudioBuffer -> Word -> m (Maybe Float32Array)
getChannelData self channelIndex
  = liftIO
      (nullableToMaybe <$> (js_getChannelData (self) channelIndex))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        AudioBuffer -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.length Mozilla AudioBuffer.length documentation> 
getLength :: (MonadIO m) => AudioBuffer -> m Int
getLength self = liftIO (js_getLength (self))
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.duration Mozilla AudioBuffer.duration documentation> 
getDuration :: (MonadIO m) => AudioBuffer -> m Float
getDuration self = liftIO (js_getDuration (self))
 
foreign import javascript unsafe "$1[\"sampleRate\"]"
        js_getSampleRate :: AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.sampleRate Mozilla AudioBuffer.sampleRate documentation> 
getSampleRate :: (MonadIO m) => AudioBuffer -> m Float
getSampleRate self = liftIO (js_getSampleRate (self))
 
foreign import javascript unsafe "$1[\"gain\"] = $2;" js_setGain ::
        AudioBuffer -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
setGain :: (MonadIO m) => AudioBuffer -> Float -> m ()
setGain self val = liftIO (js_setGain (self) val)
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
getGain :: (MonadIO m) => AudioBuffer -> m Float
getGain self = liftIO (js_getGain (self))
 
foreign import javascript unsafe "$1[\"numberOfChannels\"]"
        js_getNumberOfChannels :: AudioBuffer -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.numberOfChannels Mozilla AudioBuffer.numberOfChannels documentation> 
getNumberOfChannels :: (MonadIO m) => AudioBuffer -> m Word
getNumberOfChannels self = liftIO (js_getNumberOfChannels (self))