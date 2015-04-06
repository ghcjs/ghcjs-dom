{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeyMessageEvent
       (js_getMessage, getMessage, js_getDestinationURL,
        getDestinationURL, MediaKeyMessageEvent,
        castToMediaKeyMessageEvent, gTypeMediaKeyMessageEvent)
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

 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        JSRef MediaKeyMessageEvent -> IO (JSRef Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessage ::
           (MonadIO m) => MediaKeyMessageEvent -> m (Maybe Uint8Array)
getMessage self
  = liftIO
      ((js_getMessage (unMediaKeyMessageEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"destinationURL\"]"
        js_getDestinationURL :: JSRef MediaKeyMessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.destinationURL Mozilla WebKitMediaKeyMessageEvent.destinationURL documentation> 
getDestinationURL ::
                  (MonadIO m, FromJSString result) =>
                    MediaKeyMessageEvent -> m result
getDestinationURL self
  = liftIO
      (fromJSString <$>
         (js_getDestinationURL (unMediaKeyMessageEvent self)))
#else
module GHCJS.DOM.MediaKeyMessageEvent (
  ) where
#endif
