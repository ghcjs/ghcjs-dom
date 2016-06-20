{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DataCue
       (js_newDataCue, newDataCue, js_newDataCue', newDataCue',
        js_setData, setData, js_getData, getData, js_setValue, setValue,
        js_getValue, getValue, js_getType, getType, DataCue, castToDataCue,
        gTypeDataCue)
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
 
foreign import javascript unsafe "new window[\"WebKitDataCue\"]()"
        js_newDataCue :: IO DataCue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
newDataCue :: (MonadIO m) => m DataCue
newDataCue = liftIO (js_newDataCue)
 
foreign import javascript unsafe
        "new window[\"WebKitDataCue\"]($1,\n$2, $3, $4)" js_newDataCue' ::
        Double -> Double -> JSVal -> JSString -> IO DataCue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
newDataCue' ::
            (MonadIO m, ToJSString type') =>
              Double -> Double -> JSVal -> type' -> m DataCue
newDataCue' startTime endTime value type'
  = liftIO
      (js_newDataCue' startTime endTime value (toJSString type'))
 
foreign import javascript unsafe "$1[\"data\"] = $2;" js_setData ::
        DataCue -> Nullable ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
setData ::
        (MonadIO m, IsArrayBuffer val) => DataCue -> Maybe val -> m ()
setData self val
  = liftIO
      (js_setData (self) (maybeToNullable (fmap toArrayBuffer val)))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        DataCue -> IO (Nullable ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
getData :: (MonadIO m) => DataCue -> m (Maybe ArrayBuffer)
getData self = liftIO (nullableToMaybe <$> (js_getData (self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: DataCue -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
setValue :: (MonadIO m) => DataCue -> JSVal -> m ()
setValue self val = liftIO (js_setValue (self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        DataCue -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
getValue :: (MonadIO m) => DataCue -> m JSVal
getValue self = liftIO (js_getValue (self))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        DataCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.type Mozilla WebKitDataCue.type documentation> 
getType :: (MonadIO m, FromJSString result) => DataCue -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))