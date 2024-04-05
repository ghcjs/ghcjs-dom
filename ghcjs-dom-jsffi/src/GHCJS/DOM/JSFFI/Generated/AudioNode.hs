{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.AudioNode
       (js_connect, connect, js_connectParam, connectParam, js_disconnect,
        disconnect, js_getContext, getContext, js_getNumberOfInputs,
        getNumberOfInputs, js_getNumberOfOutputs, getNumberOfOutputs,
        js_setChannelCount, setChannelCount, js_getChannelCount,
        getChannelCount, js_setChannelCountMode, setChannelCountMode,
        js_getChannelCountMode, getChannelCountMode,
        js_setChannelInterpretation, setChannelInterpretation,
        js_getChannelInterpretation, getChannelInterpretation,
        AudioNode(..), gTypeAudioNode, IsAudioNode, toAudioNode)
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
 
foreign import javascript safe "$1[\"connect\"]($2, $3, $4)"
        js_connect ::
        AudioNode -> AudioNode -> Optional Word -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connect Mozilla AudioNode.connect documentation> 
connect ::
        (MonadIO m, IsAudioNode self, IsAudioNode destination) =>
          self -> destination -> Maybe Word -> Maybe Word -> m ()
connect self destination output input
  = liftIO
      (js_connect (toAudioNode self) (toAudioNode destination)
         (maybeToOptional output)
         (maybeToOptional input))
 
foreign import javascript safe "$1[\"connect\"]($2, $3)"
        js_connectParam ::
        AudioNode -> AudioParam -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.connect Mozilla AudioNode.connect documentation> 
connectParam ::
             (MonadIO m, IsAudioNode self) =>
               self -> AudioParam -> Maybe Word -> m ()
connectParam self destination output
  = liftIO
      (js_connectParam (toAudioNode self) destination
         (maybeToOptional output))
 
foreign import javascript safe "$1[\"disconnect\"]($2)"
        js_disconnect :: AudioNode -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.disconnect Mozilla AudioNode.disconnect documentation> 
disconnect ::
           (MonadIO m, IsAudioNode self) => self -> Maybe Word -> m ()
disconnect self output
  = liftIO
      (js_disconnect (toAudioNode self) (maybeToOptional output))
 
foreign import javascript unsafe "$1[\"context\"]" js_getContext ::
        AudioNode -> IO AudioContext

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode.context Mozilla AudioNode.context documentation> 
getContext ::
           (MonadIO m, IsAudioNode self) => self -> m AudioContext
getContext self = liftIO (js_getContext (toAudioNode self))
 
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
 
foreign import javascript safe "$1[\"channelCount\"] = $2;"
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
 
foreign import javascript safe "$1[\"channelCountMode\"] = $2;"
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
 
foreign import javascript safe
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