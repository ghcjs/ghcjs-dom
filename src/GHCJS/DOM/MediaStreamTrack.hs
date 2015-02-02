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
        ghcjs_dom_media_stream_track_dispatch_event,
        mediaStreamTrackDispatchEvent,
        ghcjs_dom_media_stream_track_get_kind, mediaStreamTrackGetKind,
        ghcjs_dom_media_stream_track_get_id, mediaStreamTrackGetId,
        ghcjs_dom_media_stream_track_get_label, mediaStreamTrackGetLabel,
        ghcjs_dom_media_stream_track_set_enabled,
        mediaStreamTrackSetEnabled,
        ghcjs_dom_media_stream_track_get_enabled,
        mediaStreamTrackGetEnabled, ghcjs_dom_media_stream_track_get_muted,
        mediaStreamTrackGetMuted, mediaStreamTrackOnmute,
        mediaStreamTrackOnunmute,
        ghcjs_dom_media_stream_track_get_readonly,
        mediaStreamTrackGet_readonly,
        ghcjs_dom_media_stream_track_get_remote, mediaStreamTrackGetRemote,
        ghcjs_dom_media_stream_track_get_ready_state,
        mediaStreamTrackGetReadyState, mediaStreamTrackOnstarted,
        mediaStreamTrackOnended, mediaStreamTrackOnoverconstrained,
        MediaStreamTrack, IsMediaStreamTrack, castToMediaStreamTrack,
        gTypeMediaStreamTrack, toMediaStreamTrack)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
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
                           (IsMediaStreamTrack self,
                            IsMediaStreamTrackSourcesCallback callback) =>
                             self -> Maybe callback -> IO ()
mediaStreamTrackGetSources self callback
  = ghcjs_dom_media_stream_track_get_sources
      (unMediaStreamTrack (toMediaStreamTrack self))
      (maybe jsNull
         (unMediaStreamTrackSourcesCallback .
            toMediaStreamTrackSourcesCallback)
         callback)
 
foreign import javascript unsafe "$1[\"getConstraints\"]()"
        ghcjs_dom_media_stream_track_get_constraints ::
        JSRef MediaStreamTrack -> IO (JSRef MediaTrackConstraints)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.constraints Mozilla MediaStreamTrack.constraints documentation> 
mediaStreamTrackGetConstraints ::
                               (IsMediaStreamTrack self) =>
                                 self -> IO (Maybe MediaTrackConstraints)
mediaStreamTrackGetConstraints self
  = (ghcjs_dom_media_stream_track_get_constraints
       (unMediaStreamTrack (toMediaStreamTrack self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"states\"]()"
        ghcjs_dom_media_stream_track_states ::
        JSRef MediaStreamTrack -> IO (JSRef MediaSourceStates)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.states Mozilla MediaStreamTrack.states documentation> 
mediaStreamTrackStates ::
                       (IsMediaStreamTrack self) => self -> IO (Maybe MediaSourceStates)
mediaStreamTrackStates self
  = (ghcjs_dom_media_stream_track_states
       (unMediaStreamTrack (toMediaStreamTrack self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getCapabilities\"]()"
        ghcjs_dom_media_stream_track_get_capabilities ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamCapabilities)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.capabilities Mozilla MediaStreamTrack.capabilities documentation> 
mediaStreamTrackGetCapabilities ::
                                (IsMediaStreamTrack self) =>
                                  self -> IO (Maybe MediaStreamCapabilities)
mediaStreamTrackGetCapabilities self
  = (ghcjs_dom_media_stream_track_get_capabilities
       (unMediaStreamTrack (toMediaStreamTrack self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"applyConstraints\"]($2)"
        ghcjs_dom_media_stream_track_apply_constraints ::
        JSRef MediaStreamTrack -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.applyConstraints Mozilla MediaStreamTrack.applyConstraints documentation> 
mediaStreamTrackApplyConstraints ::
                                 (IsMediaStreamTrack self, IsDictionary constraints) =>
                                   self -> Maybe constraints -> IO ()
mediaStreamTrackApplyConstraints self constraints
  = ghcjs_dom_media_stream_track_apply_constraints
      (unMediaStreamTrack (toMediaStreamTrack self))
      (maybe jsNull (unDictionary . toDictionary) constraints)
 
foreign import javascript unsafe "$1[\"clone\"]()"
        ghcjs_dom_media_stream_track_clone ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.clone Mozilla MediaStreamTrack.clone documentation> 
mediaStreamTrackClone ::
                      (IsMediaStreamTrack self) => self -> IO (Maybe MediaStreamTrack)
mediaStreamTrackClone self
  = (ghcjs_dom_media_stream_track_clone
       (unMediaStreamTrack (toMediaStreamTrack self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"stop\"]()"
        ghcjs_dom_media_stream_track_stop ::
        JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.stop Mozilla MediaStreamTrack.stop documentation> 
mediaStreamTrackStop :: (IsMediaStreamTrack self) => self -> IO ()
mediaStreamTrackStop self
  = ghcjs_dom_media_stream_track_stop
      (unMediaStreamTrack (toMediaStreamTrack self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_media_stream_track_dispatch_event ::
        JSRef MediaStreamTrack -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.dispatchEvent Mozilla MediaStreamTrack.dispatchEvent documentation> 
mediaStreamTrackDispatchEvent ::
                              (IsMediaStreamTrack self, IsEvent event) =>
                                self -> Maybe event -> IO Bool
mediaStreamTrackDispatchEvent self event
  = ghcjs_dom_media_stream_track_dispatch_event
      (unMediaStreamTrack (toMediaStreamTrack self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "$1[\"kind\"]"
        ghcjs_dom_media_stream_track_get_kind ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.kind Mozilla MediaStreamTrack.kind documentation> 
mediaStreamTrackGetKind ::
                        (IsMediaStreamTrack self, FromJSString result) => self -> IO result
mediaStreamTrackGetKind self
  = fromJSString <$>
      (ghcjs_dom_media_stream_track_get_kind
         (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_media_stream_track_get_id ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.id Mozilla MediaStreamTrack.id documentation> 
mediaStreamTrackGetId ::
                      (IsMediaStreamTrack self, FromJSString result) => self -> IO result
mediaStreamTrackGetId self
  = fromJSString <$>
      (ghcjs_dom_media_stream_track_get_id
         (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_media_stream_track_get_label ::
        JSRef MediaStreamTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.label Mozilla MediaStreamTrack.label documentation> 
mediaStreamTrackGetLabel ::
                         (IsMediaStreamTrack self, FromJSString result) => self -> IO result
mediaStreamTrackGetLabel self
  = fromJSString <$>
      (ghcjs_dom_media_stream_track_get_label
         (unMediaStreamTrack (toMediaStreamTrack self)))
 
foreign import javascript unsafe "$1[\"enabled\"] = $2;"
        ghcjs_dom_media_stream_track_set_enabled ::
        JSRef MediaStreamTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
mediaStreamTrackSetEnabled ::
                           (IsMediaStreamTrack self) => self -> Bool -> IO ()
mediaStreamTrackSetEnabled self val
  = ghcjs_dom_media_stream_track_set_enabled
      (unMediaStreamTrack (toMediaStreamTrack self))
      val
 
foreign import javascript unsafe "($1[\"enabled\"] ? 1 : 0)"
        ghcjs_dom_media_stream_track_get_enabled ::
        JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.enabled Mozilla MediaStreamTrack.enabled documentation> 
mediaStreamTrackGetEnabled ::
                           (IsMediaStreamTrack self) => self -> IO Bool
mediaStreamTrackGetEnabled self
  = ghcjs_dom_media_stream_track_get_enabled
      (unMediaStreamTrack (toMediaStreamTrack self))
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        ghcjs_dom_media_stream_track_get_muted ::
        JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.muted Mozilla MediaStreamTrack.muted documentation> 
mediaStreamTrackGetMuted ::
                         (IsMediaStreamTrack self) => self -> IO Bool
mediaStreamTrackGetMuted self
  = ghcjs_dom_media_stream_track_get_muted
      (unMediaStreamTrack (toMediaStreamTrack self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onmute Mozilla MediaStreamTrack.onmute documentation> 
mediaStreamTrackOnmute ::
                       (IsMediaStreamTrack self) => Signal self (EventM UIEvent self ())
mediaStreamTrackOnmute = (connect "mute")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onunmute Mozilla MediaStreamTrack.onunmute documentation> 
mediaStreamTrackOnunmute ::
                         (IsMediaStreamTrack self) => Signal self (EventM UIEvent self ())
mediaStreamTrackOnunmute = (connect "unmute")
 
foreign import javascript unsafe "($1[\"_readonly\"] ? 1 : 0)"
        ghcjs_dom_media_stream_track_get_readonly ::
        JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.get_readonly Mozilla MediaStreamTrack.get_readonly documentation> 
mediaStreamTrackGet_readonly ::
                             (IsMediaStreamTrack self) => self -> IO Bool
mediaStreamTrackGet_readonly self
  = ghcjs_dom_media_stream_track_get_readonly
      (unMediaStreamTrack (toMediaStreamTrack self))
 
foreign import javascript unsafe "($1[\"remote\"] ? 1 : 0)"
        ghcjs_dom_media_stream_track_get_remote ::
        JSRef MediaStreamTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.remote Mozilla MediaStreamTrack.remote documentation> 
mediaStreamTrackGetRemote ::
                          (IsMediaStreamTrack self) => self -> IO Bool
mediaStreamTrackGetRemote self
  = ghcjs_dom_media_stream_track_get_remote
      (unMediaStreamTrack (toMediaStreamTrack self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_media_stream_track_get_ready_state ::
        JSRef MediaStreamTrack -> IO (JSRef MediaStreamTrackState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.readyState Mozilla MediaStreamTrack.readyState documentation> 
mediaStreamTrackGetReadyState ::
                              (IsMediaStreamTrack self) => self -> IO MediaStreamTrackState
mediaStreamTrackGetReadyState self
  = (ghcjs_dom_media_stream_track_get_ready_state
       (unMediaStreamTrack (toMediaStreamTrack self)))
      >>= fromJSRefUnchecked

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onstarted Mozilla MediaStreamTrack.onstarted documentation> 
mediaStreamTrackOnstarted ::
                          (IsMediaStreamTrack self) => Signal self (EventM UIEvent self ())
mediaStreamTrackOnstarted = (connect "started")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onended Mozilla MediaStreamTrack.onended documentation> 
mediaStreamTrackOnended ::
                        (IsMediaStreamTrack self) => Signal self (EventM UIEvent self ())
mediaStreamTrackOnended = (connect "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.onoverconstrained Mozilla MediaStreamTrack.onoverconstrained documentation> 
mediaStreamTrackOnoverconstrained ::
                                  (IsMediaStreamTrack self) => Signal self (EventM UIEvent self ())
mediaStreamTrackOnoverconstrained = (connect "overconstrained")
#else
module GHCJS.DOM.MediaStreamTrack (
  ) where
#endif
