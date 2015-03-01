{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLHttpRequestProgressEvent
       (js_getPosition, getPosition, js_getTotalSize, getTotalSize,
        XMLHttpRequestProgressEvent, castToXMLHttpRequestProgressEvent,
        gTypeXMLHttpRequestProgressEvent)
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

 
foreign import javascript unsafe "$1[\"position\"]" js_getPosition
        :: JSRef XMLHttpRequestProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent.position Mozilla XMLHttpRequestProgressEvent.position documentation> 
getPosition ::
            (MonadIO m) => XMLHttpRequestProgressEvent -> m Word64
getPosition self
  = liftIO
      (round <$> (js_getPosition (unXMLHttpRequestProgressEvent self)))
 
foreign import javascript unsafe "$1[\"totalSize\"]"
        js_getTotalSize :: JSRef XMLHttpRequestProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent.totalSize Mozilla XMLHttpRequestProgressEvent.totalSize documentation> 
getTotalSize ::
             (MonadIO m) => XMLHttpRequestProgressEvent -> m Word64
getTotalSize self
  = liftIO
      (round <$> (js_getTotalSize (unXMLHttpRequestProgressEvent self)))
#else
module GHCJS.DOM.XMLHttpRequestProgressEvent (
  ) where
#endif
