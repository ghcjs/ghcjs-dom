{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PannerNode
       (ghcjs_dom_panner_node_set_position, pannerNodeSetPosition,
        ghcjs_dom_panner_node_set_orientation, pannerNodeSetOrientation,
        ghcjs_dom_panner_node_set_velocity, pannerNodeSetVelocity,
        cEQUALPOWER, cHRTF, cSOUNDFIELD, cLINEAR_DISTANCE,
        cINVERSE_DISTANCE, cEXPONENTIAL_DISTANCE,
        ghcjs_dom_panner_node_set_panning_model, pannerNodeSetPanningModel,
        ghcjs_dom_panner_node_get_panning_model, pannerNodeGetPanningModel,
        ghcjs_dom_panner_node_set_distance_model,
        pannerNodeSetDistanceModel,
        ghcjs_dom_panner_node_get_distance_model,
        pannerNodeGetDistanceModel, ghcjs_dom_panner_node_set_ref_distance,
        pannerNodeSetRefDistance, ghcjs_dom_panner_node_get_ref_distance,
        pannerNodeGetRefDistance, ghcjs_dom_panner_node_set_max_distance,
        pannerNodeSetMaxDistance, ghcjs_dom_panner_node_get_max_distance,
        pannerNodeGetMaxDistance, ghcjs_dom_panner_node_set_rolloff_factor,
        pannerNodeSetRolloffFactor,
        ghcjs_dom_panner_node_get_rolloff_factor,
        pannerNodeGetRolloffFactor,
        ghcjs_dom_panner_node_set_cone_inner_angle,
        pannerNodeSetConeInnerAngle,
        ghcjs_dom_panner_node_get_cone_inner_angle,
        pannerNodeGetConeInnerAngle,
        ghcjs_dom_panner_node_set_cone_outer_angle,
        pannerNodeSetConeOuterAngle,
        ghcjs_dom_panner_node_get_cone_outer_angle,
        pannerNodeGetConeOuterAngle,
        ghcjs_dom_panner_node_set_cone_outer_gain,
        pannerNodeSetConeOuterGain,
        ghcjs_dom_panner_node_get_cone_outer_gain,
        pannerNodeGetConeOuterGain, PannerNode, IsPannerNode,
        castToPannerNode, gTypePannerNode, toPannerNode)
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

 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3, $4)"
        ghcjs_dom_panner_node_set_position ::
        JSRef PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.position Mozilla webkitAudioPannerNode.position documentation> 
pannerNodeSetPosition ::
                      (IsPannerNode self) => self -> Float -> Float -> Float -> IO ()
pannerNodeSetPosition self x y z
  = ghcjs_dom_panner_node_set_position
      (unPannerNode (toPannerNode self))
      x
      y
      z
 
foreign import javascript unsafe
        "$1[\"setOrientation\"]($2, $3, $4)"
        ghcjs_dom_panner_node_set_orientation ::
        JSRef PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.orientation Mozilla webkitAudioPannerNode.orientation documentation> 
pannerNodeSetOrientation ::
                         (IsPannerNode self) => self -> Float -> Float -> Float -> IO ()
pannerNodeSetOrientation self x y z
  = ghcjs_dom_panner_node_set_orientation
      (unPannerNode (toPannerNode self))
      x
      y
      z
 
foreign import javascript unsafe "$1[\"setVelocity\"]($2, $3, $4)"
        ghcjs_dom_panner_node_set_velocity ::
        JSRef PannerNode -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.velocity Mozilla webkitAudioPannerNode.velocity documentation> 
pannerNodeSetVelocity ::
                      (IsPannerNode self) => self -> Float -> Float -> Float -> IO ()
pannerNodeSetVelocity self x y z
  = ghcjs_dom_panner_node_set_velocity
      (unPannerNode (toPannerNode self))
      x
      y
      z
cEQUALPOWER = 0
cHRTF = 1
cSOUNDFIELD = 2
cLINEAR_DISTANCE = 0
cINVERSE_DISTANCE = 1
cEXPONENTIAL_DISTANCE = 2
 
foreign import javascript unsafe "$1[\"panningModel\"] = $2;"
        ghcjs_dom_panner_node_set_panning_model ::
        JSRef PannerNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.panningModel Mozilla webkitAudioPannerNode.panningModel documentation> 
pannerNodeSetPanningModel ::
                          (IsPannerNode self, ToJSString val) => self -> val -> IO ()
pannerNodeSetPanningModel self val
  = ghcjs_dom_panner_node_set_panning_model
      (unPannerNode (toPannerNode self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"panningModel\"]"
        ghcjs_dom_panner_node_get_panning_model ::
        JSRef PannerNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.panningModel Mozilla webkitAudioPannerNode.panningModel documentation> 
pannerNodeGetPanningModel ::
                          (IsPannerNode self, FromJSString result) => self -> IO result
pannerNodeGetPanningModel self
  = fromJSString <$>
      (ghcjs_dom_panner_node_get_panning_model
         (unPannerNode (toPannerNode self)))
 
foreign import javascript unsafe "$1[\"distanceModel\"] = $2;"
        ghcjs_dom_panner_node_set_distance_model ::
        JSRef PannerNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.distanceModel Mozilla webkitAudioPannerNode.distanceModel documentation> 
pannerNodeSetDistanceModel ::
                           (IsPannerNode self, ToJSString val) => self -> val -> IO ()
pannerNodeSetDistanceModel self val
  = ghcjs_dom_panner_node_set_distance_model
      (unPannerNode (toPannerNode self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"distanceModel\"]"
        ghcjs_dom_panner_node_get_distance_model ::
        JSRef PannerNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.distanceModel Mozilla webkitAudioPannerNode.distanceModel documentation> 
pannerNodeGetDistanceModel ::
                           (IsPannerNode self, FromJSString result) => self -> IO result
pannerNodeGetDistanceModel self
  = fromJSString <$>
      (ghcjs_dom_panner_node_get_distance_model
         (unPannerNode (toPannerNode self)))
 
foreign import javascript unsafe "$1[\"refDistance\"] = $2;"
        ghcjs_dom_panner_node_set_ref_distance ::
        JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.refDistance Mozilla webkitAudioPannerNode.refDistance documentation> 
pannerNodeSetRefDistance ::
                         (IsPannerNode self) => self -> Double -> IO ()
pannerNodeSetRefDistance self val
  = ghcjs_dom_panner_node_set_ref_distance
      (unPannerNode (toPannerNode self))
      val
 
foreign import javascript unsafe "$1[\"refDistance\"]"
        ghcjs_dom_panner_node_get_ref_distance ::
        JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.refDistance Mozilla webkitAudioPannerNode.refDistance documentation> 
pannerNodeGetRefDistance ::
                         (IsPannerNode self) => self -> IO Double
pannerNodeGetRefDistance self
  = ghcjs_dom_panner_node_get_ref_distance
      (unPannerNode (toPannerNode self))
 
foreign import javascript unsafe "$1[\"maxDistance\"] = $2;"
        ghcjs_dom_panner_node_set_max_distance ::
        JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.maxDistance Mozilla webkitAudioPannerNode.maxDistance documentation> 
pannerNodeSetMaxDistance ::
                         (IsPannerNode self) => self -> Double -> IO ()
pannerNodeSetMaxDistance self val
  = ghcjs_dom_panner_node_set_max_distance
      (unPannerNode (toPannerNode self))
      val
 
foreign import javascript unsafe "$1[\"maxDistance\"]"
        ghcjs_dom_panner_node_get_max_distance ::
        JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.maxDistance Mozilla webkitAudioPannerNode.maxDistance documentation> 
pannerNodeGetMaxDistance ::
                         (IsPannerNode self) => self -> IO Double
pannerNodeGetMaxDistance self
  = ghcjs_dom_panner_node_get_max_distance
      (unPannerNode (toPannerNode self))
 
foreign import javascript unsafe "$1[\"rolloffFactor\"] = $2;"
        ghcjs_dom_panner_node_set_rolloff_factor ::
        JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.rolloffFactor Mozilla webkitAudioPannerNode.rolloffFactor documentation> 
pannerNodeSetRolloffFactor ::
                           (IsPannerNode self) => self -> Double -> IO ()
pannerNodeSetRolloffFactor self val
  = ghcjs_dom_panner_node_set_rolloff_factor
      (unPannerNode (toPannerNode self))
      val
 
foreign import javascript unsafe "$1[\"rolloffFactor\"]"
        ghcjs_dom_panner_node_get_rolloff_factor ::
        JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.rolloffFactor Mozilla webkitAudioPannerNode.rolloffFactor documentation> 
pannerNodeGetRolloffFactor ::
                           (IsPannerNode self) => self -> IO Double
pannerNodeGetRolloffFactor self
  = ghcjs_dom_panner_node_get_rolloff_factor
      (unPannerNode (toPannerNode self))
 
foreign import javascript unsafe "$1[\"coneInnerAngle\"] = $2;"
        ghcjs_dom_panner_node_set_cone_inner_angle ::
        JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneInnerAngle Mozilla webkitAudioPannerNode.coneInnerAngle documentation> 
pannerNodeSetConeInnerAngle ::
                            (IsPannerNode self) => self -> Double -> IO ()
pannerNodeSetConeInnerAngle self val
  = ghcjs_dom_panner_node_set_cone_inner_angle
      (unPannerNode (toPannerNode self))
      val
 
foreign import javascript unsafe "$1[\"coneInnerAngle\"]"
        ghcjs_dom_panner_node_get_cone_inner_angle ::
        JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneInnerAngle Mozilla webkitAudioPannerNode.coneInnerAngle documentation> 
pannerNodeGetConeInnerAngle ::
                            (IsPannerNode self) => self -> IO Double
pannerNodeGetConeInnerAngle self
  = ghcjs_dom_panner_node_get_cone_inner_angle
      (unPannerNode (toPannerNode self))
 
foreign import javascript unsafe "$1[\"coneOuterAngle\"] = $2;"
        ghcjs_dom_panner_node_set_cone_outer_angle ::
        JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterAngle Mozilla webkitAudioPannerNode.coneOuterAngle documentation> 
pannerNodeSetConeOuterAngle ::
                            (IsPannerNode self) => self -> Double -> IO ()
pannerNodeSetConeOuterAngle self val
  = ghcjs_dom_panner_node_set_cone_outer_angle
      (unPannerNode (toPannerNode self))
      val
 
foreign import javascript unsafe "$1[\"coneOuterAngle\"]"
        ghcjs_dom_panner_node_get_cone_outer_angle ::
        JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterAngle Mozilla webkitAudioPannerNode.coneOuterAngle documentation> 
pannerNodeGetConeOuterAngle ::
                            (IsPannerNode self) => self -> IO Double
pannerNodeGetConeOuterAngle self
  = ghcjs_dom_panner_node_get_cone_outer_angle
      (unPannerNode (toPannerNode self))
 
foreign import javascript unsafe "$1[\"coneOuterGain\"] = $2;"
        ghcjs_dom_panner_node_set_cone_outer_gain ::
        JSRef PannerNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterGain Mozilla webkitAudioPannerNode.coneOuterGain documentation> 
pannerNodeSetConeOuterGain ::
                           (IsPannerNode self) => self -> Double -> IO ()
pannerNodeSetConeOuterGain self val
  = ghcjs_dom_panner_node_set_cone_outer_gain
      (unPannerNode (toPannerNode self))
      val
 
foreign import javascript unsafe "$1[\"coneOuterGain\"]"
        ghcjs_dom_panner_node_get_cone_outer_gain ::
        JSRef PannerNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode.coneOuterGain Mozilla webkitAudioPannerNode.coneOuterGain documentation> 
pannerNodeGetConeOuterGain ::
                           (IsPannerNode self) => self -> IO Double
pannerNodeGetConeOuterGain self
  = ghcjs_dom_panner_node_get_cone_outer_gain
      (unPannerNode (toPannerNode self))
#else
module GHCJS.DOM.PannerNode (
  ) where
#endif
