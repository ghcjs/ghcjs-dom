{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLHttpRequestUpload
       (xmlHttpRequestUploadAbort, xmlHttpRequestUploadError,
        xmlHttpRequestUploadLoad, xmlHttpRequestUploadLoadEnd,
        xmlHttpRequestUploadLoadStart, xmlHttpRequestUploadProgress,
        XMLHttpRequestUpload, IsXMLHttpRequestUpload,
        castToXMLHttpRequestUpload, gTypeXMLHttpRequestUpload,
        toXMLHttpRequestUpload)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.abort Mozilla XMLHttpRequestUpload.abort documentation> 
xmlHttpRequestUploadAbort ::
                          (IsXMLHttpRequestUpload self, IsEventTarget self) =>
                            EventName self XMLHttpRequestProgressEvent
xmlHttpRequestUploadAbort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.error Mozilla XMLHttpRequestUpload.error documentation> 
xmlHttpRequestUploadError ::
                          (IsXMLHttpRequestUpload self, IsEventTarget self) =>
                            EventName self XMLHttpRequestProgressEvent
xmlHttpRequestUploadError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.load Mozilla XMLHttpRequestUpload.load documentation> 
xmlHttpRequestUploadLoad ::
                         (IsXMLHttpRequestUpload self, IsEventTarget self) =>
                           EventName self XMLHttpRequestProgressEvent
xmlHttpRequestUploadLoad = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.loadEnd Mozilla XMLHttpRequestUpload.loadEnd documentation> 
xmlHttpRequestUploadLoadEnd ::
                            (IsXMLHttpRequestUpload self, IsEventTarget self) =>
                              EventName self ProgressEvent
xmlHttpRequestUploadLoadEnd
  = unsafeEventName (toJSString "loadend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.loadStart Mozilla XMLHttpRequestUpload.loadStart documentation> 
xmlHttpRequestUploadLoadStart ::
                              (IsXMLHttpRequestUpload self, IsEventTarget self) =>
                                EventName self ProgressEvent
xmlHttpRequestUploadLoadStart
  = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.progress Mozilla XMLHttpRequestUpload.progress documentation> 
xmlHttpRequestUploadProgress ::
                             (IsXMLHttpRequestUpload self, IsEventTarget self) =>
                               EventName self XMLHttpRequestProgressEvent
xmlHttpRequestUploadProgress
  = unsafeEventName (toJSString "progress")
#else
module GHCJS.DOM.XMLHttpRequestUpload (
  ) where
#endif
