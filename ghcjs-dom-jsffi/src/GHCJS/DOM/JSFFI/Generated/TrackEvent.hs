{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TrackEvent
       (js_newTrackEvent, newTrackEvent, js_getTrack, getTrack,
        getTrackUnsafe, getTrackUnchecked, TrackEvent(..), gTypeTrackEvent)
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
        "new window[\"TrackEvent\"]($1, $2)" js_newTrackEvent ::
        JSString -> Optional TrackEventInit -> IO TrackEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent Mozilla TrackEvent documentation> 
newTrackEvent ::
              (MonadIO m, ToJSString type') =>
                type' -> Maybe TrackEventInit -> m TrackEvent
newTrackEvent type' eventInitDict
  = liftIO
      (js_newTrackEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        TrackEvent -> IO (Nullable Track)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent.track Mozilla TrackEvent.track documentation> 
getTrack :: (MonadIO m) => TrackEvent -> m (Maybe Track)
getTrack self = liftIO (nullableToMaybe <$> (js_getTrack self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent.track Mozilla TrackEvent.track documentation> 
getTrackUnsafe ::
               (MonadIO m, HasCallStack) => TrackEvent -> m Track
getTrackUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTrack self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent.track Mozilla TrackEvent.track documentation> 
getTrackUnchecked :: (MonadIO m) => TrackEvent -> m Track
getTrackUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTrack self))