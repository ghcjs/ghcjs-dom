{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PannerNode
       (js_setPosition, setPosition, js_setOrientation, setOrientation,
        js_setVelocity, setVelocity, pattern EQUALPOWER, pattern HRTF,
        pattern SOUNDFIELD, pattern LINEAR_DISTANCE,
        pattern INVERSE_DISTANCE, pattern EXPONENTIAL_DISTANCE,
        js_setPanningModel, setPanningModel, js_getPanningModel,
        getPanningModel, js_setDistanceModel, setDistanceModel,
        js_getDistanceModel, getDistanceModel, js_setRefDistance,
        setRefDistance, js_getRefDistance, getRefDistance,
        js_setMaxDistance, setMaxDistance, js_getMaxDistance,
        getMaxDistance, js_setRolloffFactor, setRolloffFactor,
        js_getRolloffFactor, getRolloffFactor, js_setConeInnerAngle,
        setConeInnerAngle, js_getConeInnerAngle, getConeInnerAngle,
        js_setConeOuterAngle, setConeOuterAngle, js_getConeOuterAngle,
        getConeOuterAngle, js_setConeOuterGain, setConeOuterGain,
        js_getConeOuterGain, getConeOuterGain, PannerNode,
        castToPannerNode, gTypePannerNode)
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
 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3, $4)"
        js_setPosition ::
        JSRef PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setPosition Mozilla webkitAudioPannerNode.setPosition documentation> 
setPosition ::
            (MonadIO m) => PannerNode -> Float -> Float -> Float -> m ()
setPosition self x y z
  = liftIO (js_setPosition (unPannerNode self) x y z)
 
foreign import javascript unsafe
        "$1[\"setOrientation\"]($2, $3, $4)" js_setOrientation ::
        JSRef PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setOrientation Mozilla webkitAudioPannerNode.setOrientation documentation> 
setOrientation ::
               (MonadIO m) => PannerNode -> Float -> Float -> Float -> m ()
setOrientation self x y z
  = liftIO (js_setOrientation (unPannerNode self) x y z)
 
foreign import javascript unsafe "$1[\"setVelocity\"]($2, $3, $4)"
        js_setVelocity ::
        JSRef PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.setVelocity Mozilla webkitAudioPannerNode.setVelocity documentation> 
setVelocity ::
            (MonadIO m) => PannerNode -> Float -> Float -> Float -> m ()
setVelocity self x y z
  = liftIO (js_setVelocity (unPannerNode self) x y z)
pattern EQUALPOWER = 0
pattern HRTF = 1
pattern SOUNDFIELD = 2
pattern LINEAR_DISTANCE = 0
pattern INVERSE_DISTANCE = 1
pattern EXPONENTIAL_DISTANCE = 2
 
foreign import javascript unsafe "$1[\"panningModel\"] = $2;"
        js_setPanningModel :: JSRef PannerNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.panningModel Mozilla webkitAudioPannerNode.panningModel documentation> 
setPanningModel ::
                (MonadIO m, ToJSString val) => PannerNode -> val -> m ()
setPanningModel self val
  = liftIO (js_setPanningModel (unPannerNode self) (toJSString val))
 
foreign import javascript unsafe "$1[\"panningModel\"]"
        js_getPanningModel :: JSRef PannerNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.panningModel Mozilla webkitAudioPannerNode.panningModel documentation> 
getPanningModel ::
                (MonadIO m, FromJSString result) => PannerNode -> m result
getPanningModel self
  = liftIO
      (fromJSString <$> (js_getPanningModel (unPannerNode self)))
 
foreign import javascript unsafe "$1[\"distanceModel\"] = $2;"
        js_setDistanceModel :: JSRef PannerNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.distanceModel Mozilla webkitAudioPannerNode.distanceModel documentation> 
setDistanceModel ::
                 (MonadIO m, ToJSString val) => PannerNode -> val -> m ()
setDistanceModel self val
  = liftIO (js_setDistanceModel (unPannerNode self) (toJSString val))
 
foreign import javascript unsafe "$1[\"distanceModel\"]"
        js_getDistanceModel :: JSRef PannerNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.distanceModel Mozilla webkitAudioPannerNode.distanceModel documentation> 
getDistanceModel ::
                 (MonadIO m, FromJSString result) => PannerNode -> m result
getDistanceModel self
  = liftIO
      (fromJSString <$> (js_getDistanceModel (unPannerNode self)))
 
foreign import javascript unsafe "$1[\"refDistance\"] = $2;"
        js_setRefDistance :: JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.refDistance Mozilla webkitAudioPannerNode.refDistance documentation> 
setRefDistance :: (MonadIO m) => PannerNode -> Double -> m ()
setRefDistance self val
  = liftIO (js_setRefDistance (unPannerNode self) val)
 
foreign import javascript unsafe "$1[\"refDistance\"]"
        js_getRefDistance :: JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.refDistance Mozilla webkitAudioPannerNode.refDistance documentation> 
getRefDistance :: (MonadIO m) => PannerNode -> m Double
getRefDistance self
  = liftIO (js_getRefDistance (unPannerNode self))
 
foreign import javascript unsafe "$1[\"maxDistance\"] = $2;"
        js_setMaxDistance :: JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.maxDistance Mozilla webkitAudioPannerNode.maxDistance documentation> 
setMaxDistance :: (MonadIO m) => PannerNode -> Double -> m ()
setMaxDistance self val
  = liftIO (js_setMaxDistance (unPannerNode self) val)
 
foreign import javascript unsafe "$1[\"maxDistance\"]"
        js_getMaxDistance :: JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.maxDistance Mozilla webkitAudioPannerNode.maxDistance documentation> 
getMaxDistance :: (MonadIO m) => PannerNode -> m Double
getMaxDistance self
  = liftIO (js_getMaxDistance (unPannerNode self))
 
foreign import javascript unsafe "$1[\"rolloffFactor\"] = $2;"
        js_setRolloffFactor :: JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.rolloffFactor Mozilla webkitAudioPannerNode.rolloffFactor documentation> 
setRolloffFactor :: (MonadIO m) => PannerNode -> Double -> m ()
setRolloffFactor self val
  = liftIO (js_setRolloffFactor (unPannerNode self) val)
 
foreign import javascript unsafe "$1[\"rolloffFactor\"]"
        js_getRolloffFactor :: JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.rolloffFactor Mozilla webkitAudioPannerNode.rolloffFactor documentation> 
getRolloffFactor :: (MonadIO m) => PannerNode -> m Double
getRolloffFactor self
  = liftIO (js_getRolloffFactor (unPannerNode self))
 
foreign import javascript unsafe "$1[\"coneInnerAngle\"] = $2;"
        js_setConeInnerAngle :: JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneInnerAngle Mozilla webkitAudioPannerNode.coneInnerAngle documentation> 
setConeInnerAngle :: (MonadIO m) => PannerNode -> Double -> m ()
setConeInnerAngle self val
  = liftIO (js_setConeInnerAngle (unPannerNode self) val)
 
foreign import javascript unsafe "$1[\"coneInnerAngle\"]"
        js_getConeInnerAngle :: JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneInnerAngle Mozilla webkitAudioPannerNode.coneInnerAngle documentation> 
getConeInnerAngle :: (MonadIO m) => PannerNode -> m Double
getConeInnerAngle self
  = liftIO (js_getConeInnerAngle (unPannerNode self))
 
foreign import javascript unsafe "$1[\"coneOuterAngle\"] = $2;"
        js_setConeOuterAngle :: JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterAngle Mozilla webkitAudioPannerNode.coneOuterAngle documentation> 
setConeOuterAngle :: (MonadIO m) => PannerNode -> Double -> m ()
setConeOuterAngle self val
  = liftIO (js_setConeOuterAngle (unPannerNode self) val)
 
foreign import javascript unsafe "$1[\"coneOuterAngle\"]"
        js_getConeOuterAngle :: JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterAngle Mozilla webkitAudioPannerNode.coneOuterAngle documentation> 
getConeOuterAngle :: (MonadIO m) => PannerNode -> m Double
getConeOuterAngle self
  = liftIO (js_getConeOuterAngle (unPannerNode self))
 
foreign import javascript unsafe "$1[\"coneOuterGain\"] = $2;"
        js_setConeOuterGain :: JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterGain Mozilla webkitAudioPannerNode.coneOuterGain documentation> 
setConeOuterGain :: (MonadIO m) => PannerNode -> Double -> m ()
setConeOuterGain self val
  = liftIO (js_setConeOuterGain (unPannerNode self) val)
 
foreign import javascript unsafe "$1[\"coneOuterGain\"]"
        js_getConeOuterGain :: JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterGain Mozilla webkitAudioPannerNode.coneOuterGain documentation> 
getConeOuterGain :: (MonadIO m) => PannerNode -> m Double
getConeOuterGain self
  = liftIO (js_getConeOuterGain (unPannerNode self))