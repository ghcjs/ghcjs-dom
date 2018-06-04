{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitPlaybackTargetAvailabilityEvent
       (js_newWebKitPlaybackTargetAvailabilityEvent,
        newWebKitPlaybackTargetAvailabilityEvent, js_getAvailability,
        getAvailability, WebKitPlaybackTargetAvailabilityEvent(..),
        gTypeWebKitPlaybackTargetAvailabilityEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new window[\"WebKitPlaybackTargetAvailabilityEvent\"]($1,\n$2)"
        js_newWebKitPlaybackTargetAvailabilityEvent ::
        JSString ->
          Optional WebKitPlaybackTargetAvailabilityEventInit ->
            IO WebKitPlaybackTargetAvailabilityEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPlaybackTargetAvailabilityEvent Mozilla WebKitPlaybackTargetAvailabilityEvent documentation> 
newWebKitPlaybackTargetAvailabilityEvent ::
                                         (MonadIO m, ToJSString type') =>
                                           type' ->
                                             Maybe WebKitPlaybackTargetAvailabilityEventInit ->
                                               m WebKitPlaybackTargetAvailabilityEvent
newWebKitPlaybackTargetAvailabilityEvent type' eventInitDict
  = liftIO
      (js_newWebKitPlaybackTargetAvailabilityEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"availability\"]"
        js_getAvailability ::
        WebKitPlaybackTargetAvailabilityEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPlaybackTargetAvailabilityEvent.availability Mozilla WebKitPlaybackTargetAvailabilityEvent.availability documentation> 
getAvailability ::
                (MonadIO m, FromJSString result) =>
                  WebKitPlaybackTargetAvailabilityEvent -> m result
getAvailability self
  = liftIO (fromJSString <$> (js_getAvailability self))