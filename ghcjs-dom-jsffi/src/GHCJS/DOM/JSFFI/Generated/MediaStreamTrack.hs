{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaStreamTrack
       (js_getSources, getSources, js_getConstraints, getConstraints,
        js_states, states, js_getCapabilities, getCapabilities,
        js_applyConstraints, applyConstraints, js_clone, clone, js_stop,
        stop, js_getKind, getKind, js_getId, getId, js_getLabel, getLabel,
        js_setEnabled, setEnabled, js_getEnabled, getEnabled, js_getMuted,
        getMuted, mute, unmute, js_get_readonly, get_readonly,
        js_getRemote, getRemote, js_getReadyState, getReadyState, started,
        ended, overConstrained, MediaStreamTrack, castToMediaStreamTrack,
        gTypeMediaStreamTrack, IsMediaStreamTrack, toMediaStreamTrack)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"getSources\"]($2)"
        js_getSources ::
        MediaStreamTrack ->
          Nullable MediaStreamTrackSourcesCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSources Mozilla MediaStreamTrack.getSources documentation> 
getSources ::
           (MonadIO m, IsMediaStreamTrack self) =>
             self -> Maybe MediaStreamTrackSourcesCallback -> m ()
getSources self callback
  = liftIO
      (js_getSources (toMediaStreamTrack self)
         (maybeToNullable callback))
 
foreign import javascript unsafe "$1[\"getConstraints\"]()"
        js_getConstraints ::
        MediaStreamTrack -> IO (Nullable MediaTrackConstraints)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraints ::
               (MonadIO m, IsMediaStreamTrack self) =>
                 self -> m (Maybe MediaTrackConstraints)
getConstraints self
  = liftIO
      (nullableToMaybe <$> (js_getConstraints (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"states\"]()" js_states ::
        MediaStreamTrack -> IO (Nullable MediaSourceStates)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.states Mozilla MediaStreamTrack.states documentation> 
states ::
       (MonadIO m, IsMediaStreamTrack self) =>
         self -> m (Maybe MediaSourceStates)
states self
  = liftIO
      (nullableToMaybe <$> (js_states (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"getCapabilities\"]()"
        js_getCapabilities ::
        MediaStreamTrack -> IO (Nullable MediaStreamCapabilities)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilities ::
                (MonadIO m, IsMediaStreamTrack self) =>
                  self -> m (Maybe MediaStreamCapabilities)
getCapabilities self
  = liftIO
      (nullableToMaybe <$>
         (js_getCapabilities (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"applyConstraints\"]($2)"
        js_applyConstraints ::
        MediaStreamTrack -> Nullable Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.applyConstraints Mozilla MediaStreamTrack.applyConstraints documentation> 
applyConstraints ::
                 (MonadIO m, IsMediaStreamTrack self, IsDictionary constraints) =>
                   self -> Maybe constraints -> m ()
applyConstraints self constraints
  = liftIO
      (js_applyConstraints (toMediaStreamTrack self)
         (maybeToNullable (fmap toDictionary constraints)))
 
foreign import javascript unsafe "$1[\"clone\"]()" js_clone ::
        MediaStreamTrack -> IO (Nullable MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
clone ::
      (MonadIO m, IsMediaStreamTrack self) =>
        self -> m (Maybe MediaStreamTrack)
clone self
  = liftIO (nullableToMaybe <$> (js_clone (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"stop\"]()" js_stop ::
        MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.stop Mozilla MediaStreamTrack.stop documentation> 
stop :: (MonadIO m, IsMediaStreamTrack self) => self -> m ()
stop self = liftIO (js_stop (toMediaStreamTrack self))
 
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
 
foreign import javascript unsafe "($1[\"_readonly\"] ? 1 : 0)"
        js_get_readonly :: MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack._readonly Mozilla MediaStreamTrack._readonly documentation> 
get_readonly ::
             (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
get_readonly self
  = liftIO (js_get_readonly (toMediaStreamTrack self))
 
foreign import javascript unsafe "($1[\"remote\"] ? 1 : 0)"
        js_getRemote :: MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.remote Mozilla MediaStreamTrack.remote documentation> 
getRemote :: (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
getRemote self = liftIO (js_getRemote (toMediaStreamTrack self))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onstarted Mozilla MediaStreamTrack.onstarted documentation> 
started ::
        (IsMediaStreamTrack self, IsEventTarget self) =>
          EventName self Event
started = unsafeEventName (toJSString "started")

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