{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.AudioBuffer
       (js_getChannelData, getChannelData, getChannelData_, js_getLength,
        getLength, js_getDuration, getDuration, js_getSampleRate,
        getSampleRate, js_setGain, setGain, js_getGain, getGain,
        js_getNumberOfChannels, getNumberOfChannels, AudioBuffer(..),
        gTypeAudioBuffer)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe "$1[\"getChannelData\"]($2)"
        js_getChannelData :: AudioBuffer -> Word -> IO Float32Array

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.getChannelData Mozilla AudioBuffer.getChannelData documentation> 
getChannelData ::
               (MonadIO m) => AudioBuffer -> Word -> m Float32Array
getChannelData self channelIndex
  = liftIO (js_getChannelData self channelIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.getChannelData Mozilla AudioBuffer.getChannelData documentation> 
getChannelData_ :: (MonadIO m) => AudioBuffer -> Word -> m ()
getChannelData_ self channelIndex
  = liftIO (void (js_getChannelData self channelIndex))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        AudioBuffer -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.length Mozilla AudioBuffer.length documentation> 
getLength :: (MonadIO m) => AudioBuffer -> m Int
getLength self = liftIO (js_getLength self)
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.duration Mozilla AudioBuffer.duration documentation> 
getDuration :: (MonadIO m) => AudioBuffer -> m Float
getDuration self = liftIO (js_getDuration self)
 
foreign import javascript unsafe "$1[\"sampleRate\"]"
        js_getSampleRate :: AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.sampleRate Mozilla AudioBuffer.sampleRate documentation> 
getSampleRate :: (MonadIO m) => AudioBuffer -> m Float
getSampleRate self = liftIO (js_getSampleRate self)
 
foreign import javascript unsafe "$1[\"gain\"] = $2;" js_setGain ::
        AudioBuffer -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
setGain :: (MonadIO m) => AudioBuffer -> Float -> m ()
setGain self val = liftIO (js_setGain self val)
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
getGain :: (MonadIO m) => AudioBuffer -> m Float
getGain self = liftIO (js_getGain self)
 
foreign import javascript unsafe "$1[\"numberOfChannels\"]"
        js_getNumberOfChannels :: AudioBuffer -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.numberOfChannels Mozilla AudioBuffer.numberOfChannels documentation> 
getNumberOfChannels :: (MonadIO m) => AudioBuffer -> m Word
getNumberOfChannels self = liftIO (js_getNumberOfChannels self)