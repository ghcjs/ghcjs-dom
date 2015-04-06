{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStreamTrack
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

 
foreign import javascript unsafe "$1[\"getSources\"]($2)"
        js_getSources ::
        JSRef MediaStreamTrack ->
          JSRef MediaStreamTrackSourcesCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSources Mozilla MediaStreamTrack.getSources documentation> 
getSources ::
           (MonadIO m, IsMediaStreamTrack self) =>
             self -> Maybe MediaStreamTrackSourcesCallback -> m ()
getSources self callback
  = liftIO
      (js_getSources (unMediaStreamTrack (toMediaStreamTrack self))
         (maybe jsNull unMediaStreamTrackSourcesCallback callback))
 
foreign import javascript unsafe "$1[\"getConstraints\"]()"
        js_getConstraints ::
        JSRef MediaStreamTrack -> IO (JSRef MediaTrackConstraints)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getConstraints Mozilla MediaStreamTrack.getConstraints documentation> 
getConstraints ::
               (MonadIO m, IsMediaStreamTrack self) =>
                 self -> m (Maybe MediaTrackConstraints)
getConstraints self
  = liftIO
      ((js_getConstraints (unMediaStreamTrack (toMediaStreamTrack self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"states\"]()" js_states ::
        JSRef MediaStreamTrack -> IO (JSRef MediaSourceStates)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.states Mozilla MediaStreamTrack.states documentation> 
states ::
       (MonadIO m, IsMediaStreamTrack self) =>
         self -> m (Maybe MediaSourceStates)
states self
  = liftIO
      ((js_states (unMediaStreamTrack (toMediaStreamTrack self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"getCapabilities\"]()"
        js_getCapabilities ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamCapabilities)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getCapabilities Mozilla MediaStreamTrack.getCapabilities documentation> 
getCapabilities ::
                (MonadIO m, IsMediaStreamTrack self) =>
                  self -> m (Maybe MediaStreamCapabilities)
getCapabilities self
  = liftIO
      ((js_getCapabilities
          (unMediaStreamTrack (toMediaStreamTrack self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"applyConstraints\"]($2)"
        js_applyConstraints ::
        JSRef MediaStreamTrack -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.applyConstraints Mozilla MediaStreamTrack.applyConstraints documentation> 
applyConstraints ::
                 (MonadIO m, IsMediaStreamTrack self, IsDictionary constraints) =>
                   self -> Maybe constraints -> m ()
applyConstraints self constraints
  = liftIO
      (js_applyConstraints (unMediaStreamTrack (toMediaStreamTrack self))
         (maybe jsNull (unDictionary . toDictionary) constraints))
 
foreign import javascript unsafe "$1[\"clone\"]()" js_clone ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
clone ::
      (MonadIO m, IsMediaStreamTrack self) =>
        self -> m (Maybe MediaStreamTrack)
clone self
  = liftIO
      ((js_clone (unMediaStreamTrack (toMediaStreamTrack self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"stop\"]()" js_stop ::
        JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.stop Mozilla MediaStreamTrack.stop documentation> 
stop :: (MonadIO m, IsMediaStreamTrack self) => self -> m ()
stop self
  = liftIO (js_stop (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.kind Mozilla MediaStreamTrack.kind documentation> 
getKind ::
        (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
          self -> m result
getKind self
  = liftIO
      (fromJSString <$>
         (js_getKind (unMediaStreamTrack (toMediaStreamTrack self))))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.id Mozilla MediaStreamTrack.id documentation> 
getId ::
      (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
        self -> m result
getId self
  = liftIO
      (fromJSString <$>
         (js_getId (unMediaStreamTrack (toMediaStreamTrack self))))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.label Mozilla MediaStreamTrack.label documentation> 
getLabel ::
         (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
           self -> m result
getLabel self
  = liftIO
      (fromJSString <$>
         (js_getLabel (unMediaStreamTrack (toMediaStreamTrack self))))
 
foreign import javascript unsafe "$1[\"enabled\"] = $2;"
        js_setEnabled :: JSRef MediaStreamTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
setEnabled ::
           (MonadIO m, IsMediaStreamTrack self) => self -> Bool -> m ()
setEnabled self val
  = liftIO
      (js_setEnabled (unMediaStreamTrack (toMediaStreamTrack self)) val)
 
foreign import javascript unsafe "($1[\"enabled\"] ? 1 : 0)"
        js_getEnabled :: JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
getEnabled ::
           (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
getEnabled self
  = liftIO
      (js_getEnabled (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        js_getMuted :: JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.muted Mozilla MediaStreamTrack.muted documentation> 
getMuted :: (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
getMuted self
  = liftIO
      (js_getMuted (unMediaStreamTrack (toMediaStreamTrack self)))

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
        js_get_readonly :: JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack._readonly Mozilla MediaStreamTrack._readonly documentation> 
get_readonly ::
             (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
get_readonly self
  = liftIO
      (js_get_readonly (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "($1[\"remote\"] ? 1 : 0)"
        js_getRemote :: JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.remote Mozilla MediaStreamTrack.remote documentation> 
getRemote :: (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
getRemote self
  = liftIO
      (js_getRemote (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamTrackState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.readyState Mozilla MediaStreamTrack.readyState documentation> 
getReadyState ::
              (MonadIO m, IsMediaStreamTrack self) =>
                self -> m MediaStreamTrackState
getReadyState self
  = liftIO
      ((js_getReadyState (unMediaStreamTrack (toMediaStreamTrack self)))
         >>= fromJSRefUnchecked)

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
#else
module GHCJS.DOM.MediaStreamTrack (
  ) where
#endif
