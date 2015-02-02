{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DataCue
       (ghcjs_dom_data_cue_set_data, dataCueSetData,
        ghcjs_dom_data_cue_get_data, dataCueGetData,
        ghcjs_dom_data_cue_set_value, dataCueSetValue,
        ghcjs_dom_data_cue_get_value, dataCueGetValue, DataCue, IsDataCue,
        castToDataCue, gTypeDataCue, toDataCue)
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

 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        ghcjs_dom_data_cue_set_data ::
        JSRef DataCue -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
dataCueSetData ::
               (IsDataCue self, IsArrayBuffer val) => self -> Maybe val -> IO ()
dataCueSetData self val
  = ghcjs_dom_data_cue_set_data (unDataCue (toDataCue self))
      (maybe jsNull (unArrayBuffer . toArrayBuffer) val)
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_data_cue_get_data ::
        JSRef DataCue -> IO (JSRef ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
dataCueGetData ::
               (IsDataCue self) => self -> IO (Maybe ArrayBuffer)
dataCueGetData self
  = (ghcjs_dom_data_cue_get_data (unDataCue (toDataCue self))) >>=
      fromJSRef
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_data_cue_set_value :: JSRef DataCue -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
dataCueSetValue :: (IsDataCue self) => self -> JSRef a -> IO ()
dataCueSetValue self val
  = ghcjs_dom_data_cue_set_value (unDataCue (toDataCue self)) val
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_data_cue_get_value :: JSRef DataCue -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
dataCueGetValue :: (IsDataCue self) => self -> IO (JSRef a)
dataCueGetValue self
  = ghcjs_dom_data_cue_get_value (unDataCue (toDataCue self))
#else
module GHCJS.DOM.DataCue (
  ) where
#endif
