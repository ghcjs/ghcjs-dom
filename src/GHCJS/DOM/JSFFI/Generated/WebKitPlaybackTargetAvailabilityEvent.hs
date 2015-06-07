{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebKitPlaybackTargetAvailabilityEvent
       (js_getAvailability, getAvailability,
        WebKitPlaybackTargetAvailabilityEvent,
        castToWebKitPlaybackTargetAvailabilityEvent,
        gTypeWebKitPlaybackTargetAvailabilityEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"availability\"]"
        js_getAvailability ::
        JSRef WebKitPlaybackTargetAvailabilityEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPlaybackTargetAvailabilityEvent.availability Mozilla WebKitPlaybackTargetAvailabilityEvent.availability documentation> 
getAvailability ::
                (MonadIO m, FromJSString result) =>
                  WebKitPlaybackTargetAvailabilityEvent -> m result
getAvailability self
  = liftIO
      (fromJSString <$>
         (js_getAvailability
            (unWebKitPlaybackTargetAvailabilityEvent self)))