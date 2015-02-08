{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DataCue
       (ghcjs_dom_data_cue_new, dataCueNew, ghcjs_dom_data_cue_set_data,
        dataCueSetData, ghcjs_dom_data_cue_get_data, dataCueGetData,
        ghcjs_dom_data_cue_set_value, dataCueSetValue,
        ghcjs_dom_data_cue_get_value, dataCueGetValue, DataCue, IsDataCue,
        castToDataCue, gTypeDataCue, toDataCue)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"WebKitDataCue\"]()"
        ghcjs_dom_data_cue_new :: IO (JSRef DataCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
dataCueNew :: (MonadIO m) => m DataCue
dataCueNew = liftIO (ghcjs_dom_data_cue_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"WebKitDataCue\"]($1,\n$2, $3, $4)"
        ghcjs_dom_data_cue_new' ::
        Double -> Double -> JSRef a -> JSString -> IO (JSRef DataCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
dataCueNew' ::
            (MonadIO m, ToJSString type') =>
              Double -> Double -> JSRef a -> type' -> m DataCue
dataCueNew' startTime endTime value type'
  = liftIO
      (ghcjs_dom_data_cue_new' startTime endTime value (toJSString type')
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        ghcjs_dom_data_cue_set_data ::
        JSRef DataCue -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
dataCueSetData ::
               (MonadIO m, IsDataCue self, IsArrayBuffer val) =>
                 self -> Maybe val -> m ()
dataCueSetData self val
  = liftIO
      (ghcjs_dom_data_cue_set_data (unDataCue (toDataCue self))
         (maybe jsNull (unArrayBuffer . toArrayBuffer) val))
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_data_cue_get_data ::
        JSRef DataCue -> IO (JSRef ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
dataCueGetData ::
               (MonadIO m, IsDataCue self) => self -> m (Maybe ArrayBuffer)
dataCueGetData self
  = liftIO
      ((ghcjs_dom_data_cue_get_data (unDataCue (toDataCue self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_data_cue_set_value :: JSRef DataCue -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
dataCueSetValue ::
                (MonadIO m, IsDataCue self) => self -> JSRef a -> m ()
dataCueSetValue self val
  = liftIO
      (ghcjs_dom_data_cue_set_value (unDataCue (toDataCue self)) val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_data_cue_get_value :: JSRef DataCue -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
dataCueGetValue ::
                (MonadIO m, IsDataCue self) => self -> m (JSRef a)
dataCueGetValue self
  = liftIO
      (ghcjs_dom_data_cue_get_value (unDataCue (toDataCue self)))
#else
module GHCJS.DOM.DataCue (
  ) where
#endif
