{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaSession
       (js_newMediaSession, newMediaSession, js_setMetadata, setMetadata,
        js_deactivate, deactivate, js_getKind, getKind, js_getControls,
        getControls, getControlsUnsafe, getControlsUnchecked,
        MediaSession(..), gTypeMediaSession)
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
 
foreign import javascript unsafe "new window[\"MediaSession\"]($1)"
        js_newMediaSession :: Optional MediaSessionKind -> IO MediaSession

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession Mozilla MediaSession documentation> 
newMediaSession ::
                (MonadIO m) => Maybe MediaSessionKind -> m MediaSession
newMediaSession kind
  = liftIO (js_newMediaSession (maybeToOptional kind))
 
foreign import javascript unsafe "$1[\"setMetadata\"]($2)"
        js_setMetadata :: MediaSession -> Optional MediaMetadata -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.setMetadata Mozilla MediaSession.setMetadata documentation> 
setMetadata ::
            (MonadIO m) => MediaSession -> Maybe MediaMetadata -> m ()
setMetadata self metadata
  = liftIO (js_setMetadata self (maybeToOptional metadata))
 
foreign import javascript unsafe "$1[\"deactivate\"]()"
        js_deactivate :: MediaSession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.deactivate Mozilla MediaSession.deactivate documentation> 
deactivate :: (MonadIO m) => MediaSession -> m ()
deactivate self = liftIO (js_deactivate self)
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        MediaSession -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.kind Mozilla MediaSession.kind documentation> 
getKind :: (MonadIO m) => MediaSession -> m MediaSessionKind
getKind self = liftIO ((js_getKind self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"controls\"]" js_getControls
        :: MediaSession -> IO (Nullable MediaRemoteControls)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.controls Mozilla MediaSession.controls documentation> 
getControls ::
            (MonadIO m) => MediaSession -> m (Maybe MediaRemoteControls)
getControls self
  = liftIO (nullableToMaybe <$> (js_getControls self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.controls Mozilla MediaSession.controls documentation> 
getControlsUnsafe ::
                  (MonadIO m, HasCallStack) => MediaSession -> m MediaRemoteControls
getControlsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getControls self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSession.controls Mozilla MediaSession.controls documentation> 
getControlsUnchecked ::
                     (MonadIO m) => MediaSession -> m MediaRemoteControls
getControlsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getControls self))