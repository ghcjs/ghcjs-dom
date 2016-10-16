{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.BiquadFilterNode
       (js_getFrequencyResponse, getFrequencyResponse, pattern LOWPASS,
        pattern HIGHPASS, pattern BANDPASS, pattern LOWSHELF,
        pattern HIGHSHELF, pattern PEAKING, pattern NOTCH, pattern ALLPASS,
        js_setType, setType, js_getType, getType, js_getFrequency,
        getFrequency, getFrequencyUnsafe, getFrequencyUnchecked,
        js_getDetune, getDetune, getDetuneUnsafe, getDetuneUnchecked,
        js_getQ, getQ, getQUnsafe, getQUnchecked, js_getGain, getGain,
        getGainUnsafe, getGainUnchecked, BiquadFilterNode(..),
        gTypeBiquadFilterNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe
        "$1[\"getFrequencyResponse\"]($2,\n$3, $4)" js_getFrequencyResponse
        ::
        BiquadFilterNode ->
          Nullable Float32Array ->
            Nullable Float32Array -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.getFrequencyResponse Mozilla BiquadFilterNode.getFrequencyResponse documentation> 
getFrequencyResponse ::
                     (MonadIO m, IsFloat32Array frequencyHz, IsFloat32Array magResponse,
                      IsFloat32Array phaseResponse) =>
                       BiquadFilterNode ->
                         Maybe frequencyHz ->
                           Maybe magResponse -> Maybe phaseResponse -> m ()
getFrequencyResponse self frequencyHz magResponse phaseResponse
  = liftIO
      (js_getFrequencyResponse (self)
         (maybeToNullable (fmap toFloat32Array frequencyHz))
         (maybeToNullable (fmap toFloat32Array magResponse))
         (maybeToNullable (fmap toFloat32Array phaseResponse)))
pattern LOWPASS = 0
pattern HIGHPASS = 1
pattern BANDPASS = 2
pattern LOWSHELF = 3
pattern HIGHSHELF = 4
pattern PEAKING = 5
pattern NOTCH = 6
pattern ALLPASS = 7
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        BiquadFilterNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.type Mozilla BiquadFilterNode.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => BiquadFilterNode -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        BiquadFilterNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.type Mozilla BiquadFilterNode.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => BiquadFilterNode -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"frequency\"]"
        js_getFrequency :: BiquadFilterNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.frequency Mozilla BiquadFilterNode.frequency documentation> 
getFrequency ::
             (MonadIO m) => BiquadFilterNode -> m (Maybe AudioParam)
getFrequency self
  = liftIO (nullableToMaybe <$> (js_getFrequency (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.frequency Mozilla BiquadFilterNode.frequency documentation> 
getFrequencyUnsafe ::
                   (MonadIO m, HasCallStack) => BiquadFilterNode -> m AudioParam
getFrequencyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFrequency (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.frequency Mozilla BiquadFilterNode.frequency documentation> 
getFrequencyUnchecked ::
                      (MonadIO m) => BiquadFilterNode -> m AudioParam
getFrequencyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFrequency (self)))
 
foreign import javascript unsafe "$1[\"detune\"]" js_getDetune ::
        BiquadFilterNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.detune Mozilla BiquadFilterNode.detune documentation> 
getDetune ::
          (MonadIO m) => BiquadFilterNode -> m (Maybe AudioParam)
getDetune self = liftIO (nullableToMaybe <$> (js_getDetune (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.detune Mozilla BiquadFilterNode.detune documentation> 
getDetuneUnsafe ::
                (MonadIO m, HasCallStack) => BiquadFilterNode -> m AudioParam
getDetuneUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDetune (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.detune Mozilla BiquadFilterNode.detune documentation> 
getDetuneUnchecked ::
                   (MonadIO m) => BiquadFilterNode -> m AudioParam
getDetuneUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getDetune (self)))
 
foreign import javascript unsafe "$1[\"Q\"]" js_getQ ::
        BiquadFilterNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.Q Mozilla BiquadFilterNode.Q documentation> 
getQ :: (MonadIO m) => BiquadFilterNode -> m (Maybe AudioParam)
getQ self = liftIO (nullableToMaybe <$> (js_getQ (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.Q Mozilla BiquadFilterNode.Q documentation> 
getQUnsafe ::
           (MonadIO m, HasCallStack) => BiquadFilterNode -> m AudioParam
getQUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getQ (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.Q Mozilla BiquadFilterNode.Q documentation> 
getQUnchecked :: (MonadIO m) => BiquadFilterNode -> m AudioParam
getQUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getQ (self)))
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        BiquadFilterNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.gain Mozilla BiquadFilterNode.gain documentation> 
getGain :: (MonadIO m) => BiquadFilterNode -> m (Maybe AudioParam)
getGain self = liftIO (nullableToMaybe <$> (js_getGain (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.gain Mozilla BiquadFilterNode.gain documentation> 
getGainUnsafe ::
              (MonadIO m, HasCallStack) => BiquadFilterNode -> m AudioParam
getGainUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getGain (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.gain Mozilla BiquadFilterNode.gain documentation> 
getGainUnchecked :: (MonadIO m) => BiquadFilterNode -> m AudioParam
getGainUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getGain (self)))