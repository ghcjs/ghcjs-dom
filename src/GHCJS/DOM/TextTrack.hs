{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextTrack
       (ghcjs_dom_text_track_add_cue, textTrackAddCue,
        ghcjs_dom_text_track_remove_cue, textTrackRemoveCue,
        ghcjs_dom_text_track_add_region, textTrackAddRegion,
        ghcjs_dom_text_track_remove_region, textTrackRemoveRegion,
        ghcjs_dom_text_track_get_id, textTrackGetId,
        ghcjs_dom_text_track_set_kind, textTrackSetKind,
        ghcjs_dom_text_track_get_kind, textTrackGetKind,
        ghcjs_dom_text_track_get_label, textTrackGetLabel,
        ghcjs_dom_text_track_set_language, textTrackSetLanguage,
        ghcjs_dom_text_track_get_language, textTrackGetLanguage,
        ghcjs_dom_text_track_get_in_band_metadata_track_dispatch_type,
        textTrackGetInBandMetadataTrackDispatchType,
        ghcjs_dom_text_track_set_mode, textTrackSetMode,
        ghcjs_dom_text_track_get_mode, textTrackGetMode,
        ghcjs_dom_text_track_get_cues, textTrackGetCues,
        ghcjs_dom_text_track_get_active_cues, textTrackGetActiveCues,
        textTrackCueChange, ghcjs_dom_text_track_get_regions,
        textTrackGetRegions, ghcjs_dom_text_track_get_source_buffer,
        textTrackGetSourceBuffer, TextTrack(..), IsTextTrack,
        castToTextTrack, gTypeTextTrack, toTextTrack)
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

 
foreign import javascript unsafe "$1[\"addCue\"]($2)"
        ghcjs_dom_text_track_add_cue ::
        JSRef TextTrack -> JSRef TextTrackCue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.addCue Mozilla TextTrack.addCue documentation> 
textTrackAddCue ::
                (MonadIO m, IsTextTrack self, IsTextTrackCue cue) =>
                  self -> Maybe cue -> m ()
textTrackAddCue self cue
  = liftIO
      (ghcjs_dom_text_track_add_cue (unTextTrack (toTextTrack self))
         (maybe jsNull (unTextTrackCue . toTextTrackCue) cue))
 
foreign import javascript unsafe "$1[\"removeCue\"]($2)"
        ghcjs_dom_text_track_remove_cue ::
        JSRef TextTrack -> JSRef TextTrackCue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.removeCue Mozilla TextTrack.removeCue documentation> 
textTrackRemoveCue ::
                   (MonadIO m, IsTextTrack self, IsTextTrackCue cue) =>
                     self -> Maybe cue -> m ()
textTrackRemoveCue self cue
  = liftIO
      (ghcjs_dom_text_track_remove_cue (unTextTrack (toTextTrack self))
         (maybe jsNull (unTextTrackCue . toTextTrackCue) cue))
 
foreign import javascript unsafe "$1[\"addRegion\"]($2)"
        ghcjs_dom_text_track_add_region ::
        JSRef TextTrack -> JSRef VTTRegion -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.addRegion Mozilla TextTrack.addRegion documentation> 
textTrackAddRegion ::
                   (MonadIO m, IsTextTrack self, IsVTTRegion region) =>
                     self -> Maybe region -> m ()
textTrackAddRegion self region
  = liftIO
      (ghcjs_dom_text_track_add_region (unTextTrack (toTextTrack self))
         (maybe jsNull (unVTTRegion . toVTTRegion) region))
 
foreign import javascript unsafe "$1[\"removeRegion\"]($2)"
        ghcjs_dom_text_track_remove_region ::
        JSRef TextTrack -> JSRef VTTRegion -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.removeRegion Mozilla TextTrack.removeRegion documentation> 
textTrackRemoveRegion ::
                      (MonadIO m, IsTextTrack self, IsVTTRegion region) =>
                        self -> Maybe region -> m ()
textTrackRemoveRegion self region
  = liftIO
      (ghcjs_dom_text_track_remove_region
         (unTextTrack (toTextTrack self))
         (maybe jsNull (unVTTRegion . toVTTRegion) region))
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_text_track_get_id :: JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.id Mozilla TextTrack.id documentation> 
textTrackGetId ::
               (MonadIO m, IsTextTrack self, FromJSString result) =>
                 self -> m result
textTrackGetId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_text_track_get_id (unTextTrack (toTextTrack self))))
 
foreign import javascript unsafe "$1[\"kind\"] = $2;"
        ghcjs_dom_text_track_set_kind ::
        JSRef TextTrack -> JSRef TextTrackKind -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.kind Mozilla TextTrack.kind documentation> 
textTrackSetKind ::
                 (MonadIO m, IsTextTrack self) => self -> TextTrackKind -> m ()
textTrackSetKind self val
  = liftIO
      (ghcjs_dom_text_track_set_kind (unTextTrack (toTextTrack self))
         (ptoJSRef val))
 
foreign import javascript unsafe "$1[\"kind\"]"
        ghcjs_dom_text_track_get_kind ::
        JSRef TextTrack -> IO (JSRef TextTrackKind)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.kind Mozilla TextTrack.kind documentation> 
textTrackGetKind ::
                 (MonadIO m, IsTextTrack self) => self -> m TextTrackKind
textTrackGetKind self
  = liftIO
      ((ghcjs_dom_text_track_get_kind (unTextTrack (toTextTrack self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_text_track_get_label :: JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.label Mozilla TextTrack.label documentation> 
textTrackGetLabel ::
                  (MonadIO m, IsTextTrack self, FromJSString result) =>
                    self -> m result
textTrackGetLabel self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_text_track_get_label (unTextTrack (toTextTrack self))))
 
foreign import javascript unsafe "$1[\"language\"] = $2;"
        ghcjs_dom_text_track_set_language ::
        JSRef TextTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.language Mozilla TextTrack.language documentation> 
textTrackSetLanguage ::
                     (MonadIO m, IsTextTrack self, ToJSString val) =>
                       self -> val -> m ()
textTrackSetLanguage self val
  = liftIO
      (ghcjs_dom_text_track_set_language (unTextTrack (toTextTrack self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"language\"]"
        ghcjs_dom_text_track_get_language :: JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.language Mozilla TextTrack.language documentation> 
textTrackGetLanguage ::
                     (MonadIO m, IsTextTrack self, FromJSString result) =>
                       self -> m result
textTrackGetLanguage self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_text_track_get_language
            (unTextTrack (toTextTrack self))))
 
foreign import javascript unsafe
        "$1[\"inBandMetadataTrackDispatchType\"]"
        ghcjs_dom_text_track_get_in_band_metadata_track_dispatch_type ::
        JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.inBandMetadataTrackDispatchType Mozilla TextTrack.inBandMetadataTrackDispatchType documentation> 
textTrackGetInBandMetadataTrackDispatchType ::
                                            (MonadIO m, IsTextTrack self, FromJSString result) =>
                                              self -> m result
textTrackGetInBandMetadataTrackDispatchType self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_text_track_get_in_band_metadata_track_dispatch_type
            (unTextTrack (toTextTrack self))))
 
foreign import javascript unsafe "$1[\"mode\"] = $2;"
        ghcjs_dom_text_track_set_mode ::
        JSRef TextTrack -> JSRef TextTrackMode -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.mode Mozilla TextTrack.mode documentation> 
textTrackSetMode ::
                 (MonadIO m, IsTextTrack self) => self -> TextTrackMode -> m ()
textTrackSetMode self val
  = liftIO
      (ghcjs_dom_text_track_set_mode (unTextTrack (toTextTrack self))
         (ptoJSRef val))
 
foreign import javascript unsafe "$1[\"mode\"]"
        ghcjs_dom_text_track_get_mode ::
        JSRef TextTrack -> IO (JSRef TextTrackMode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.mode Mozilla TextTrack.mode documentation> 
textTrackGetMode ::
                 (MonadIO m, IsTextTrack self) => self -> m TextTrackMode
textTrackGetMode self
  = liftIO
      ((ghcjs_dom_text_track_get_mode (unTextTrack (toTextTrack self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"cues\"]"
        ghcjs_dom_text_track_get_cues ::
        JSRef TextTrack -> IO (JSRef TextTrackCueList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.cues Mozilla TextTrack.cues documentation> 
textTrackGetCues ::
                 (MonadIO m, IsTextTrack self) => self -> m (Maybe TextTrackCueList)
textTrackGetCues self
  = liftIO
      ((ghcjs_dom_text_track_get_cues (unTextTrack (toTextTrack self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"activeCues\"]"
        ghcjs_dom_text_track_get_active_cues ::
        JSRef TextTrack -> IO (JSRef TextTrackCueList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.activeCues Mozilla TextTrack.activeCues documentation> 
textTrackGetActiveCues ::
                       (MonadIO m, IsTextTrack self) => self -> m (Maybe TextTrackCueList)
textTrackGetActiveCues self
  = liftIO
      ((ghcjs_dom_text_track_get_active_cues
          (unTextTrack (toTextTrack self)))
         >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.cueChange Mozilla TextTrack.cueChange documentation> 
textTrackCueChange ::
                   (IsTextTrack self, IsEventTarget self) => EventName self Event
textTrackCueChange = unsafeEventName (toJSString "cuechange")
 
foreign import javascript unsafe "$1[\"regions\"]"
        ghcjs_dom_text_track_get_regions ::
        JSRef TextTrack -> IO (JSRef VTTRegionList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.regions Mozilla TextTrack.regions documentation> 
textTrackGetRegions ::
                    (MonadIO m, IsTextTrack self) => self -> m (Maybe VTTRegionList)
textTrackGetRegions self
  = liftIO
      ((ghcjs_dom_text_track_get_regions
          (unTextTrack (toTextTrack self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"sourceBuffer\"]"
        ghcjs_dom_text_track_get_source_buffer ::
        JSRef TextTrack -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.sourceBuffer Mozilla TextTrack.sourceBuffer documentation> 
textTrackGetSourceBuffer ::
                         (MonadIO m, IsTextTrack self) => self -> m (Maybe SourceBuffer)
textTrackGetSourceBuffer self
  = liftIO
      ((ghcjs_dom_text_track_get_source_buffer
          (unTextTrack (toTextTrack self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.TextTrack (
  ) where
#endif
