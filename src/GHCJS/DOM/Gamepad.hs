{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Gamepad
       (js_getId, getId, js_getIndex, getIndex, js_getConnected,
        getConnected, js_getTimestamp, getTimestamp, js_getMapping,
        getMapping, js_getAxes, getAxes, js_getButtons, getButtons,
        Gamepad, castToGamepad, gTypeGamepad)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef Gamepad -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.id Mozilla Gamepad.id documentation> 
getId :: (MonadIO m, FromJSString result) => Gamepad -> m result
getId self = liftIO (fromJSString <$> (js_getId (unGamepad self)))
 
foreign import javascript unsafe "$1[\"index\"]" js_getIndex ::
        JSRef Gamepad -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.index Mozilla Gamepad.index documentation> 
getIndex :: (MonadIO m) => Gamepad -> m Word
getIndex self = liftIO (js_getIndex (unGamepad self))
 
foreign import javascript unsafe "($1[\"connected\"] ? 1 : 0)"
        js_getConnected :: JSRef Gamepad -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.connected Mozilla Gamepad.connected documentation> 
getConnected :: (MonadIO m) => Gamepad -> m Bool
getConnected self = liftIO (js_getConnected (unGamepad self))
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        js_getTimestamp :: JSRef Gamepad -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.timestamp Mozilla Gamepad.timestamp documentation> 
getTimestamp :: (MonadIO m) => Gamepad -> m Double
getTimestamp self = liftIO (js_getTimestamp (unGamepad self))
 
foreign import javascript unsafe "$1[\"mapping\"]" js_getMapping ::
        JSRef Gamepad -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.mapping Mozilla Gamepad.mapping documentation> 
getMapping ::
           (MonadIO m, FromJSString result) => Gamepad -> m result
getMapping self
  = liftIO (fromJSString <$> (js_getMapping (unGamepad self)))
 
foreign import javascript unsafe "$1[\"axes\"]" js_getAxes ::
        JSRef Gamepad -> IO (JSRef [Double])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.axes Mozilla Gamepad.axes documentation> 
getAxes :: (MonadIO m) => Gamepad -> m [Double]
getAxes self
  = liftIO ((js_getAxes (unGamepad self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"buttons\"]" js_getButtons ::
        JSRef Gamepad -> IO (JSRef [Maybe GamepadButton])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.buttons Mozilla Gamepad.buttons documentation> 
getButtons :: (MonadIO m) => Gamepad -> m [Maybe GamepadButton]
getButtons self
  = liftIO ((js_getButtons (unGamepad self)) >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.Gamepad (
  ) where
#endif
