{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLHttpRequestProgressEvent
       (ghcjs_dom_xml_http_request_progress_event_get_position,
        xmlHttpRequestProgressEventGetPosition,
        ghcjs_dom_xml_http_request_progress_event_get_total_size,
        xmlHttpRequestProgressEventGetTotalSize,
        XMLHttpRequestProgressEvent, IsXMLHttpRequestProgressEvent,
        castToXMLHttpRequestProgressEvent,
        gTypeXMLHttpRequestProgressEvent, toXMLHttpRequestProgressEvent)
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

 
foreign import javascript unsafe "$1[\"position\"]"
        ghcjs_dom_xml_http_request_progress_event_get_position ::
        JSRef XMLHttpRequestProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent.position Mozilla XMLHttpRequestProgressEvent.position documentation> 
xmlHttpRequestProgressEventGetPosition ::
                                       (IsXMLHttpRequestProgressEvent self) => self -> IO Word64
xmlHttpRequestProgressEventGetPosition self
  = round <$>
      (ghcjs_dom_xml_http_request_progress_event_get_position
         (unXMLHttpRequestProgressEvent
            (toXMLHttpRequestProgressEvent self)))
 
foreign import javascript unsafe "$1[\"totalSize\"]"
        ghcjs_dom_xml_http_request_progress_event_get_total_size ::
        JSRef XMLHttpRequestProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent.totalSize Mozilla XMLHttpRequestProgressEvent.totalSize documentation> 
xmlHttpRequestProgressEventGetTotalSize ::
                                        (IsXMLHttpRequestProgressEvent self) => self -> IO Word64
xmlHttpRequestProgressEventGetTotalSize self
  = round <$>
      (ghcjs_dom_xml_http_request_progress_event_get_total_size
         (unXMLHttpRequestProgressEvent
            (toXMLHttpRequestProgressEvent self)))
#else
module GHCJS.DOM.XMLHttpRequestProgressEvent (
  ) where
#endif
