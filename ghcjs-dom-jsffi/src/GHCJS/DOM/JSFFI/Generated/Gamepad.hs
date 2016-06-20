{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Gamepad
       (js_getId, getId, js_getIndex, getIndex, js_getConnected,
        getConnected, js_getTimestamp, getTimestamp, js_getMapping,
        getMapping, js_getAxes, getAxes, js_getButtons, getButtons,
        Gamepad, castToGamepad, gTypeGamepad)
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
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        Gamepad -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.id Mozilla Gamepad.id documentation> 
getId :: (MonadIO m, FromJSString result) => Gamepad -> m result
getId self = liftIO (fromJSString <$> (js_getId (self)))
 
foreign import javascript unsafe "$1[\"index\"]" js_getIndex ::
        Gamepad -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.index Mozilla Gamepad.index documentation> 
getIndex :: (MonadIO m) => Gamepad -> m Word
getIndex self = liftIO (js_getIndex (self))
 
foreign import javascript unsafe "($1[\"connected\"] ? 1 : 0)"
        js_getConnected :: Gamepad -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.connected Mozilla Gamepad.connected documentation> 
getConnected :: (MonadIO m) => Gamepad -> m Bool
getConnected self = liftIO (js_getConnected (self))
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        js_getTimestamp :: Gamepad -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.timestamp Mozilla Gamepad.timestamp documentation> 
getTimestamp :: (MonadIO m) => Gamepad -> m Double
getTimestamp self = liftIO (js_getTimestamp (self))
 
foreign import javascript unsafe "$1[\"mapping\"]" js_getMapping ::
        Gamepad -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.mapping Mozilla Gamepad.mapping documentation> 
getMapping ::
           (MonadIO m, FromJSString result) => Gamepad -> m result
getMapping self = liftIO (fromJSString <$> (js_getMapping (self)))
 
foreign import javascript unsafe "$1[\"axes\"]" js_getAxes ::
        Gamepad -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.axes Mozilla Gamepad.axes documentation> 
getAxes :: (MonadIO m) => Gamepad -> m [Double]
getAxes self = liftIO ((js_getAxes (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"buttons\"]" js_getButtons ::
        Gamepad -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.buttons Mozilla Gamepad.buttons documentation> 
getButtons :: (MonadIO m) => Gamepad -> m [Maybe GamepadButton]
getButtons self
  = liftIO ((js_getButtons (self)) >>= fromJSValUnchecked)