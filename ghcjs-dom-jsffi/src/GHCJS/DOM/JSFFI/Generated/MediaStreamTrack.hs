{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaStreamTrack
       (js_clone, clone, clone_, js_stop, stop, js_getCapabilities,
        getCapabilities, getCapabilities_, js_getConstraints,
        getConstraints, getConstraints_, js_getSettings, getSettings,
        getSettings_, js_applyConstraints, applyConstraints, js_getKind,
        getKind, js_getId, getId, js_getLabel, getLabel, js_setEnabled,
        setEnabled, js_getEnabled, getEnabled, js_getMuted, getMuted, mute,
        unmute, js_getReadyState, getReadyState, ended, overConstrained,
        MediaStreamTrack(..), gTypeMediaStreamTrack, IsMediaStreamTrack,
        toMediaStreamTrack)
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
 
foreign import javascript unsafe "$1[\"clone\"]()" js_clone ::
        MediaStreamTrack -> IO MediaStreamTrack

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
clone ::
      (MonadIO m, IsMediaStreamTrack self) => self -> m MediaStreamTrack
clone self = liftIO (js_clone (toMediaStreamTrack self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
clone_ :: (MonadIO m, IsMediaStreamTrack self) => self -> m ()
clone_ self = liftIO (void (js_clone (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"stop\"]()" js_stop ::
        MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.stop Mozilla MediaStreamTrack.stop documentation> 
stop :: (MonadIO m, IsMediaStreamTrack self) => self -> m ()
stop self = liftIO (js_stop (toMediaStreamTrack self))
 
foreign import javascript unsafe "$1[\"getCapabilities\"]()"
        js_getCapabilities :: MediaStreamTrack -> IO MediaTrackCapabilities

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilities ::
                (MonadIO m, IsMediaStreamTrack self) =>
                  self -> m MediaTrackCapabilities
getCapabilities self
  = liftIO (js_getCapabilities (toMediaStreamTrack self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilities_ ::
                 (MonadIO m, IsMediaStreamTrack self) => self -> m ()
getCapabilities_ self
  = liftIO (void (js_getCapabilities (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"getConstraints\"]()"
        js_getConstraints :: MediaStreamTrack -> IO MediaTrackConstraints

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraints ::
               (MonadIO m, IsMediaStreamTrack self) =>
                 self -> m MediaTrackConstraints
getConstraints self
  = liftIO (js_getConstraints (toMediaStreamTrack self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraints_ ::
                (MonadIO m, IsMediaStreamTrack self) => self -> m ()
getConstraints_ self
  = liftIO (void (js_getConstraints (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"getSettings\"]()"
        js_getSettings :: MediaStreamTrack -> IO MediaTrackSettings

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSettings Mozilla MediaStreamTrack.getSettings documentation> 
getSettings ::
            (MonadIO m, IsMediaStreamTrack self) =>
              self -> m MediaTrackSettings
getSettings self
  = liftIO (js_getSettings (toMediaStreamTrack self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSettings Mozilla MediaStreamTrack.getSettings documentation> 
getSettings_ ::
             (MonadIO m, IsMediaStreamTrack self) => self -> m ()
getSettings_ self
  = liftIO (void (js_getSettings (toMediaStreamTrack self)))
 
foreign import javascript interruptible
        "$1[\"applyConstraints\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_applyConstraints ::
        MediaStreamTrack -> Optional MediaTrackConstraints -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.applyConstraints Mozilla MediaStreamTrack.applyConstraints documentation> 
applyConstraints ::
                 (MonadIO m, IsMediaStreamTrack self) =>
                   self -> Maybe MediaTrackConstraints -> m ()
applyConstraints self constraints
  = liftIO
      ((js_applyConstraints (toMediaStreamTrack self)
          (maybeToOptional constraints))
         >>= maybeThrowPromiseRejected)
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.kind Mozilla MediaStreamTrack.kind documentation> 
getKind ::
        (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
          self -> m result
getKind self
  = liftIO (fromJSString <$> (js_getKind (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.id Mozilla MediaStreamTrack.id documentation> 
getId ::
      (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
        self -> m result
getId self
  = liftIO (fromJSString <$> (js_getId (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.label Mozilla MediaStreamTrack.label documentation> 
getLabel ::
         (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
           self -> m result
getLabel self
  = liftIO (fromJSString <$> (js_getLabel (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"enabled\"] = $2;"
        js_setEnabled :: MediaStreamTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
setEnabled ::
           (MonadIO m, IsMediaStreamTrack self) => self -> Bool -> m ()
setEnabled self val
  = liftIO (js_setEnabled (toMediaStreamTrack self) val)
 
foreign import javascript unsafe "($1[\"enabled\"] ? 1 : 0)"
        js_getEnabled :: MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
getEnabled ::
           (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
getEnabled self = liftIO (js_getEnabled (toMediaStreamTrack self))
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        js_getMuted :: MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.muted Mozilla MediaStreamTrack.muted documentation> 
getMuted :: (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
getMuted self = liftIO (js_getMuted (toMediaStreamTrack self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onmute Mozilla MediaStreamTrack.onmute documentation> 
mute ::
     (IsMediaStreamTrack self, IsEventTarget self) =>
       EventName self Event
mute = unsafeEventName (toJSString "mute")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onunmute Mozilla MediaStreamTrack.onunmute documentation> 
unmute ::
       (IsMediaStreamTrack self, IsEventTarget self) =>
         EventName self Event
unmute = unsafeEventName (toJSString "unmute")
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: MediaStreamTrack -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.readyState Mozilla MediaStreamTrack.readyState documentation> 
getReadyState ::
              (MonadIO m, IsMediaStreamTrack self) =>
                self -> m MediaStreamTrackState
getReadyState self
  = liftIO
      ((js_getReadyState (toMediaStreamTrack self)) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onended Mozilla MediaStreamTrack.onended documentation> 
ended ::
      (IsMediaStreamTrack self, IsEventTarget self) =>
        EventName self Event
ended = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onoverconstrained Mozilla MediaStreamTrack.onoverconstrained documentation> 
overConstrained ::
                (IsMediaStreamTrack self, IsEventTarget self) =>
                  EventName self Event
overConstrained = unsafeEventName (toJSString "overconstrained")