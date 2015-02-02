{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ProgressEvent
       (ghcjs_dom_progress_event_get_length_computable,
        progressEventGetLengthComputable,
        ghcjs_dom_progress_event_get_loaded, progressEventGetLoaded,
        ghcjs_dom_progress_event_get_total, progressEventGetTotal,
        ProgressEvent, IsProgressEvent, castToProgressEvent,
        gTypeProgressEvent, toProgressEvent)
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

 
foreign import javascript unsafe
        "($1[\"lengthComputable\"] ? 1 : 0)"
        ghcjs_dom_progress_event_get_length_computable ::
        JSRef ProgressEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.lengthComputable Mozilla ProgressEvent.lengthComputable documentation> 
progressEventGetLengthComputable ::
                                 (IsProgressEvent self) => self -> IO Bool
progressEventGetLengthComputable self
  = ghcjs_dom_progress_event_get_length_computable
      (unProgressEvent (toProgressEvent self))
 
foreign import javascript unsafe "$1[\"loaded\"]"
        ghcjs_dom_progress_event_get_loaded ::
        JSRef ProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.loaded Mozilla ProgressEvent.loaded documentation> 
progressEventGetLoaded ::
                       (IsProgressEvent self) => self -> IO Word64
progressEventGetLoaded self
  = round <$>
      (ghcjs_dom_progress_event_get_loaded
         (unProgressEvent (toProgressEvent self)))
 
foreign import javascript unsafe "$1[\"total\"]"
        ghcjs_dom_progress_event_get_total ::
        JSRef ProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.total Mozilla ProgressEvent.total documentation> 
progressEventGetTotal ::
                      (IsProgressEvent self) => self -> IO Word64
progressEventGetTotal self
  = round <$>
      (ghcjs_dom_progress_event_get_total
         (unProgressEvent (toProgressEvent self)))
#else
module GHCJS.DOM.ProgressEvent (
  ) where
#endif
