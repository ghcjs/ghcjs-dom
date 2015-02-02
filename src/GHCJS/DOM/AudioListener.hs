{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioListener
       (ghcjs_dom_audio_listener_set_position, audioListenerSetPosition,
        ghcjs_dom_audio_listener_set_orientation,
        audioListenerSetOrientation, ghcjs_dom_audio_listener_set_velocity,
        audioListenerSetVelocity,
        ghcjs_dom_audio_listener_set_doppler_factor,
        audioListenerSetDopplerFactor,
        ghcjs_dom_audio_listener_get_doppler_factor,
        audioListenerGetDopplerFactor,
        ghcjs_dom_audio_listener_set_speed_of_sound,
        audioListenerSetSpeedOfSound,
        ghcjs_dom_audio_listener_get_speed_of_sound,
        audioListenerGetSpeedOfSound, AudioListener, IsAudioListener,
        castToAudioListener, gTypeAudioListener, toAudioListener)
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
        ghcjs_dom_audio_listener_set_position ::
        JSRef AudioListener -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.position Mozilla AudioListener.position documentation> 
audioListenerSetPosition ::
                         (IsAudioListener self) => self -> Float -> Float -> Float -> IO ()
audioListenerSetPosition self x y z
  = ghcjs_dom_audio_listener_set_position
      (unAudioListener (toAudioListener self))
      x
      y
      z
 
foreign import javascript unsafe
        "$1[\"setOrientation\"]($2, $3, $4,\n$5, $6, $7)"
        ghcjs_dom_audio_listener_set_orientation ::
        JSRef AudioListener ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.orientation Mozilla AudioListener.orientation documentation> 
audioListenerSetOrientation ::
                            (IsAudioListener self) =>
                              self -> Float -> Float -> Float -> Float -> Float -> Float -> IO ()
audioListenerSetOrientation self x y z xUp yUp zUp
  = ghcjs_dom_audio_listener_set_orientation
      (unAudioListener (toAudioListener self))
      x
      y
      z
      xUp
      yUp
      zUp
 
foreign import javascript unsafe "$1[\"setVelocity\"]($2, $3, $4)"
        ghcjs_dom_audio_listener_set_velocity ::
        JSRef AudioListener -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.velocity Mozilla AudioListener.velocity documentation> 
audioListenerSetVelocity ::
                         (IsAudioListener self) => self -> Float -> Float -> Float -> IO ()
audioListenerSetVelocity self x y z
  = ghcjs_dom_audio_listener_set_velocity
      (unAudioListener (toAudioListener self))
      x
      y
      z
 
foreign import javascript unsafe "$1[\"dopplerFactor\"] = $2;"
        ghcjs_dom_audio_listener_set_doppler_factor ::
        JSRef AudioListener -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.dopplerFactor Mozilla AudioListener.dopplerFactor documentation> 
audioListenerSetDopplerFactor ::
                              (IsAudioListener self) => self -> Float -> IO ()
audioListenerSetDopplerFactor self val
  = ghcjs_dom_audio_listener_set_doppler_factor
      (unAudioListener (toAudioListener self))
      val
 
foreign import javascript unsafe "$1[\"dopplerFactor\"]"
        ghcjs_dom_audio_listener_get_doppler_factor ::
        JSRef AudioListener -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.dopplerFactor Mozilla AudioListener.dopplerFactor documentation> 
audioListenerGetDopplerFactor ::
                              (IsAudioListener self) => self -> IO Float
audioListenerGetDopplerFactor self
  = ghcjs_dom_audio_listener_get_doppler_factor
      (unAudioListener (toAudioListener self))
 
foreign import javascript unsafe "$1[\"speedOfSound\"] = $2;"
        ghcjs_dom_audio_listener_set_speed_of_sound ::
        JSRef AudioListener -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.speedOfSound Mozilla AudioListener.speedOfSound documentation> 
audioListenerSetSpeedOfSound ::
                             (IsAudioListener self) => self -> Float -> IO ()
audioListenerSetSpeedOfSound self val
  = ghcjs_dom_audio_listener_set_speed_of_sound
      (unAudioListener (toAudioListener self))
      val
 
foreign import javascript unsafe "$1[\"speedOfSound\"]"
        ghcjs_dom_audio_listener_get_speed_of_sound ::
        JSRef AudioListener -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.speedOfSound Mozilla AudioListener.speedOfSound documentation> 
audioListenerGetSpeedOfSound ::
                             (IsAudioListener self) => self -> IO Float
audioListenerGetSpeedOfSound self
  = ghcjs_dom_audio_listener_get_speed_of_sound
      (unAudioListener (toAudioListener self))
#else
module GHCJS.DOM.AudioListener (
  ) where
#endif
