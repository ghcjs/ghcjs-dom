{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DataCue
       (js_newDataCue, newDataCue, js_newDataCue', newDataCue',
        js_setData, setData, js_getData, getData, js_setValue, setValue,
        js_getValue, getValue, DataCue, castToDataCue, gTypeDataCue)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"WebKitDataCue\"]()"
        js_newDataCue :: IO (JSRef DataCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
newDataCue :: (MonadIO m) => m DataCue
newDataCue = liftIO (js_newDataCue >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"WebKitDataCue\"]($1,\n$2, $3, $4)" js_newDataCue' ::
        Double -> Double -> JSRef a -> JSString -> IO (JSRef DataCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
newDataCue' ::
            (MonadIO m, ToJSString type') =>
              Double -> Double -> JSRef a -> type' -> m DataCue
newDataCue' startTime endTime value type'
  = liftIO
      (js_newDataCue' startTime endTime value (toJSString type') >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"data\"] = $2;" js_setData ::
        JSRef DataCue -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
setData ::
        (MonadIO m, IsArrayBuffer val) => DataCue -> Maybe val -> m ()
setData self val
  = liftIO
      (js_setData (unDataCue self)
         (maybe jsNull (unArrayBuffer . toArrayBuffer) val))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        JSRef DataCue -> IO (JSRef ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
getData :: (MonadIO m) => DataCue -> m (Maybe ArrayBuffer)
getData self = liftIO ((js_getData (unDataCue self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef DataCue -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
setValue :: (MonadIO m) => DataCue -> JSRef a -> m ()
setValue self val = liftIO (js_setValue (unDataCue self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef DataCue -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
getValue :: (MonadIO m) => DataCue -> m (JSRef a)
getValue self = liftIO (js_getValue (unDataCue self))
#else
module GHCJS.DOM.DataCue (
  ) where
#endif
