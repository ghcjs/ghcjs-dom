{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioListener
       (js_setPosition, setPosition, js_setOrientation, setOrientation,
        js_setVelocity, setVelocity, js_setDopplerFactor, setDopplerFactor,
        js_getDopplerFactor, getDopplerFactor, js_setSpeedOfSound,
        setSpeedOfSound, js_getSpeedOfSound, getSpeedOfSound,
        AudioListener, castToAudioListener, gTypeAudioListener)
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
 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3, $4)"
        js_setPosition :: AudioListener -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.setPosition Mozilla AudioListener.setPosition documentation> 
setPosition ::
            (MonadIO m) => AudioListener -> Float -> Float -> Float -> m ()
setPosition self x y z = liftIO (js_setPosition (self) x y z)
 
foreign import javascript unsafe
        "$1[\"setOrientation\"]($2, $3, $4,\n$5, $6, $7)" js_setOrientation
        ::
        AudioListener ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.setOrientation Mozilla AudioListener.setOrientation documentation> 
setOrientation ::
               (MonadIO m) =>
                 AudioListener ->
                   Float -> Float -> Float -> Float -> Float -> Float -> m ()
setOrientation self x y z xUp yUp zUp
  = liftIO (js_setOrientation (self) x y z xUp yUp zUp)
 
foreign import javascript unsafe "$1[\"setVelocity\"]($2, $3, $4)"
        js_setVelocity :: AudioListener -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.setVelocity Mozilla AudioListener.setVelocity documentation> 
setVelocity ::
            (MonadIO m) => AudioListener -> Float -> Float -> Float -> m ()
setVelocity self x y z = liftIO (js_setVelocity (self) x y z)
 
foreign import javascript unsafe "$1[\"dopplerFactor\"] = $2;"
        js_setDopplerFactor :: AudioListener -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.dopplerFactor Mozilla AudioListener.dopplerFactor documentation> 
setDopplerFactor :: (MonadIO m) => AudioListener -> Float -> m ()
setDopplerFactor self val = liftIO (js_setDopplerFactor (self) val)
 
foreign import javascript unsafe "$1[\"dopplerFactor\"]"
        js_getDopplerFactor :: AudioListener -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.dopplerFactor Mozilla AudioListener.dopplerFactor documentation> 
getDopplerFactor :: (MonadIO m) => AudioListener -> m Float
getDopplerFactor self = liftIO (js_getDopplerFactor (self))
 
foreign import javascript unsafe "$1[\"speedOfSound\"] = $2;"
        js_setSpeedOfSound :: AudioListener -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.speedOfSound Mozilla AudioListener.speedOfSound documentation> 
setSpeedOfSound :: (MonadIO m) => AudioListener -> Float -> m ()
setSpeedOfSound self val = liftIO (js_setSpeedOfSound (self) val)
 
foreign import javascript unsafe "$1[\"speedOfSound\"]"
        js_getSpeedOfSound :: AudioListener -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.speedOfSound Mozilla AudioListener.speedOfSound documentation> 
getSpeedOfSound :: (MonadIO m) => AudioListener -> m Float
getSpeedOfSound self = liftIO (js_getSpeedOfSound (self))