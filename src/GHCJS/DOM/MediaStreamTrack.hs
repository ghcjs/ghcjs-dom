{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStreamTrack
       (ghcjs_dom_media_stream_track_get_sources,
        mediaStreamTrackGetSources,
        ghcjs_dom_media_stream_track_get_constraints,
        mediaStreamTrackGetConstraints,
        ghcjs_dom_media_stream_track_states, mediaStreamTrackStates,
        ghcjs_dom_media_stream_track_get_capabilities,
        mediaStreamTrackGetCapabilities,
        ghcjs_dom_media_stream_track_apply_constraints,
        mediaStreamTrackApplyConstraints,
        ghcjs_dom_media_stream_track_clone, mediaStreamTrackClone,
        ghcjs_dom_media_stream_track_stop, mediaStreamTrackStop,
        ghcjs_dom_media_stream_track_get_kind, mediaStreamTrackGetKind,
        ghcjs_dom_media_stream_track_get_id, mediaStreamTrackGetId,
        ghcjs_dom_media_stream_track_get_label, mediaStreamTrackGetLabel,
        ghcjs_dom_media_stream_track_set_enabled,
        mediaStreamTrackSetEnabled,
        ghcjs_dom_media_stream_track_get_enabled,
        mediaStreamTrackGetEnabled, ghcjs_dom_media_stream_track_get_muted,
        mediaStreamTrackGetMuted, mediaStreamTrackMute,
        mediaStreamTrackUnmute, ghcjs_dom_media_stream_track_get_readonly,
        mediaStreamTrackGet_readonly,
        ghcjs_dom_media_stream_track_get_remote, mediaStreamTrackGetRemote,
        ghcjs_dom_media_stream_track_get_ready_state,
        mediaStreamTrackGetReadyState, mediaStreamTrackStarted,
        mediaStreamTrackEnded, mediaStreamTrackOverConstrained,
        MediaStreamTrack, IsMediaStreamTrack, castToMediaStreamTrack,
        gTypeMediaStreamTrack, toMediaStreamTrack)
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

 
foreign import javascript unsafe "$1[\"getSources\"]($2)"
        ghcjs_dom_media_stream_track_get_sources ::
        JSRef MediaStreamTrack ->
          JSRef MediaStreamTrackSourcesCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.sources Mozilla MediaStreamTrack.sources documentation> 
mediaStreamTrackGetSources ::
                           (MonadIO m, IsMediaStreamTrack self,
                            IsMediaStreamTrackSourcesCallback callback) =>
                             self -> Maybe callback -> m ()
mediaStreamTrackGetSources self callback
  = liftIO
      (ghcjs_dom_media_stream_track_get_sources
         (unMediaStreamTrack (toMediaStreamTrack self))
         (maybe jsNull
            (unMediaStreamTrackSourcesCallback .
               toMediaStreamTrackSourcesCallback)
            callback))
 
foreign import javascript unsafe "$1[\"getConstraints\"]()"
        ghcjs_dom_media_stream_track_get_constraints ::
        JSRef MediaStreamTrack -> IO (JSRef MediaTrackConstraints)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.constraints Mozilla MediaStreamTrack.constraints documentation> 
mediaStreamTrackGetConstraints ::
                               (MonadIO m, IsMediaStreamTrack self) =>
                                 self -> m (Maybe MediaTrackConstraints)
mediaStreamTrackGetConstraints self
  = liftIO
      ((ghcjs_dom_media_stream_track_get_constraints
          (unMediaStreamTrack (toMediaStreamTrack self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"states\"]()"
        ghcjs_dom_media_stream_track_states ::
        JSRef MediaStreamTrack -> IO (JSRef MediaSourceStates)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.states Mozilla MediaStreamTrack.states documentation> 
mediaStreamTrackStates ::
                       (MonadIO m, IsMediaStreamTrack self) =>
                         self -> m (Maybe MediaSourceStates)
mediaStreamTrackStates self
  = liftIO
      ((ghcjs_dom_media_stream_track_states
          (unMediaStreamTrack (toMediaStreamTrack self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getCapabilities\"]()"
        ghcjs_dom_media_stream_track_get_capabilities ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamCapabilities)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.capabilities Mozilla MediaStreamTrack.capabilities documentation> 
mediaStreamTrackGetCapabilities ::
                                (MonadIO m, IsMediaStreamTrack self) =>
                                  self -> m (Maybe MediaStreamCapabilities)
mediaStreamTrackGetCapabilities self
  = liftIO
      ((ghcjs_dom_media_stream_track_get_capabilities
          (unMediaStreamTrack (toMediaStreamTrack self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"applyConstraints\"]($2)"
        ghcjs_dom_media_stream_track_apply_constraints ::
        JSRef MediaStreamTrack -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.applyConstraints Mozilla MediaStreamTrack.applyConstraints documentation> 
mediaStreamTrackApplyConstraints ::
                                 (MonadIO m, IsMediaStreamTrack self, IsDictionary constraints) =>
                                   self -> Maybe constraints -> m ()
mediaStreamTrackApplyConstraints self constraints
  = liftIO
      (ghcjs_dom_media_stream_track_apply_constraints
         (unMediaStreamTrack (toMediaStreamTrack self))
         (maybe jsNull (unDictionary . toDictionary) constraints))
 
foreign import javascript unsafe "$1[\"clone\"]()"
        ghcjs_dom_media_stream_track_clone ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
mediaStreamTrackClone ::
                      (MonadIO m, IsMediaStreamTrack self) =>
                        self -> m (Maybe MediaStreamTrack)
mediaStreamTrackClone self
  = liftIO
      ((ghcjs_dom_media_stream_track_clone
          (unMediaStreamTrack (toMediaStreamTrack self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"stop\"]()"
        ghcjs_dom_media_stream_track_stop ::
        JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.stop Mozilla MediaStreamTrack.stop documentation> 
mediaStreamTrackStop ::
                     (MonadIO m, IsMediaStreamTrack self) => self -> m ()
mediaStreamTrackStop self
  = liftIO
      (ghcjs_dom_media_stream_track_stop
         (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"kind\"]"
        ghcjs_dom_media_stream_track_get_kind ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.kind Mozilla MediaStreamTrack.kind documentation> 
mediaStreamTrackGetKind ::
                        (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
                          self -> m result
mediaStreamTrackGetKind self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_stream_track_get_kind
            (unMediaStreamTrack (toMediaStreamTrack self))))
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_media_stream_track_get_id ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.id Mozilla MediaStreamTrack.id documentation> 
mediaStreamTrackGetId ::
                      (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
                        self -> m result
mediaStreamTrackGetId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_stream_track_get_id
            (unMediaStreamTrack (toMediaStreamTrack self))))
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_media_stream_track_get_label ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.label Mozilla MediaStreamTrack.label documentation> 
mediaStreamTrackGetLabel ::
                         (MonadIO m, IsMediaStreamTrack self, FromJSString result) =>
                           self -> m result
mediaStreamTrackGetLabel self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_stream_track_get_label
            (unMediaStreamTrack (toMediaStreamTrack self))))
 
foreign import javascript unsafe "$1[\"enabled\"] = $2;"
        ghcjs_dom_media_stream_track_set_enabled ::
        JSRef MediaStreamTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
mediaStreamTrackSetEnabled ::
                           (MonadIO m, IsMediaStreamTrack self) => self -> Bool -> m ()
mediaStreamTrackSetEnabled self val
  = liftIO
      (ghcjs_dom_media_stream_track_set_enabled
         (unMediaStreamTrack (toMediaStreamTrack self))
         val)
 
foreign import javascript unsafe "($1[\"enabled\"] ? 1 : 0)"
        ghcjs_dom_media_stream_track_get_enabled ::
        JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
mediaStreamTrackGetEnabled ::
                           (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
mediaStreamTrackGetEnabled self
  = liftIO
      (ghcjs_dom_media_stream_track_get_enabled
         (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        ghcjs_dom_media_stream_track_get_muted ::
        JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.muted Mozilla MediaStreamTrack.muted documentation> 
mediaStreamTrackGetMuted ::
                         (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
mediaStreamTrackGetMuted self
  = liftIO
      (ghcjs_dom_media_stream_track_get_muted
         (unMediaStreamTrack (toMediaStreamTrack self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.mute Mozilla MediaStreamTrack.mute documentation> 
mediaStreamTrackMute ::
                     (IsMediaStreamTrack self, IsEventTarget self) =>
                       EventName self Event
mediaStreamTrackMute = unsafeEventName (toJSString "mute")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.unmute Mozilla MediaStreamTrack.unmute documentation> 
mediaStreamTrackUnmute ::
                       (IsMediaStreamTrack self, IsEventTarget self) =>
                         EventName self Event
mediaStreamTrackUnmute = unsafeEventName (toJSString "unmute")
 
foreign import javascript unsafe "($1[\"_readonly\"] ? 1 : 0)"
        ghcjs_dom_media_stream_track_get_readonly ::
        JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.get_readonly Mozilla MediaStreamTrack.get_readonly documentation> 
mediaStreamTrackGet_readonly ::
                             (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
mediaStreamTrackGet_readonly self
  = liftIO
      (ghcjs_dom_media_stream_track_get_readonly
         (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "($1[\"remote\"] ? 1 : 0)"
        ghcjs_dom_media_stream_track_get_remote ::
        JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.remote Mozilla MediaStreamTrack.remote documentation> 
mediaStreamTrackGetRemote ::
                          (MonadIO m, IsMediaStreamTrack self) => self -> m Bool
mediaStreamTrackGetRemote self
  = liftIO
      (ghcjs_dom_media_stream_track_get_remote
         (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_media_stream_track_get_ready_state ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamTrackState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.readyState Mozilla MediaStreamTrack.readyState documentation> 
mediaStreamTrackGetReadyState ::
                              (MonadIO m, IsMediaStreamTrack self) =>
                                self -> m MediaStreamTrackState
mediaStreamTrackGetReadyState self
  = liftIO
      ((ghcjs_dom_media_stream_track_get_ready_state
          (unMediaStreamTrack (toMediaStreamTrack self)))
         >>= fromJSRefUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.started Mozilla MediaStreamTrack.started documentation> 
mediaStreamTrackStarted ::
                        (IsMediaStreamTrack self, IsEventTarget self) =>
                          EventName self Event
mediaStreamTrackStarted = unsafeEventName (toJSString "started")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.ended Mozilla MediaStreamTrack.ended documentation> 
mediaStreamTrackEnded ::
                      (IsMediaStreamTrack self, IsEventTarget self) =>
                        EventName self Event
mediaStreamTrackEnded = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.overConstrained Mozilla MediaStreamTrack.overConstrained documentation> 
mediaStreamTrackOverConstrained ::
                                (IsMediaStreamTrack self, IsEventTarget self) =>
                                  EventName self Event
mediaStreamTrackOverConstrained
  = unsafeEventName (toJSString "overconstrained")
#else
module GHCJS.DOM.MediaStreamTrack (
  ) where
#endif
