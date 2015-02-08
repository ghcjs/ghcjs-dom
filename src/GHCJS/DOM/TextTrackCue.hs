{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextTrackCue
       (ghcjs_dom_text_track_cue_new, textTrackCueNew,
        ghcjs_dom_text_track_cue_get_track, textTrackCueGetTrack,
        ghcjs_dom_text_track_cue_set_id, textTrackCueSetId,
        ghcjs_dom_text_track_cue_get_id, textTrackCueGetId,
        ghcjs_dom_text_track_cue_set_start_time, textTrackCueSetStartTime,
        ghcjs_dom_text_track_cue_get_start_time, textTrackCueGetStartTime,
        ghcjs_dom_text_track_cue_set_end_time, textTrackCueSetEndTime,
        ghcjs_dom_text_track_cue_get_end_time, textTrackCueGetEndTime,
        ghcjs_dom_text_track_cue_set_pause_on_exit,
        textTrackCueSetPauseOnExit,
        ghcjs_dom_text_track_cue_get_pause_on_exit,
        textTrackCueGetPauseOnExit, textTrackCueEnter, textTrackCueExit,
        TextTrackCue(..), IsTextTrackCue, castToTextTrackCue,
        gTypeTextTrackCue, toTextTrackCue)
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

 
foreign import javascript unsafe
        "new window[\"TextTrackCue\"]($1,\n$2, $3)"
        ghcjs_dom_text_track_cue_new ::
        Double -> Double -> JSString -> IO (JSRef TextTrackCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue Mozilla TextTrackCue documentation> 
textTrackCueNew ::
                (MonadIO m, ToJSString text) =>
                  Double -> Double -> text -> m TextTrackCue
textTrackCueNew startTime endTime text
  = liftIO
      (ghcjs_dom_text_track_cue_new startTime endTime (toJSString text)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"track\"]"
        ghcjs_dom_text_track_cue_get_track ::
        JSRef TextTrackCue -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
textTrackCueGetTrack ::
                     (MonadIO m, IsTextTrackCue self) => self -> m (Maybe TextTrack)
textTrackCueGetTrack self
  = liftIO
      ((ghcjs_dom_text_track_cue_get_track
          (unTextTrackCue (toTextTrackCue self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"] = $2;"
        ghcjs_dom_text_track_cue_set_id ::
        JSRef TextTrackCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.id Mozilla TextTrackCue.id documentation> 
textTrackCueSetId ::
                  (MonadIO m, IsTextTrackCue self, ToJSString val) =>
                    self -> val -> m ()
textTrackCueSetId self val
  = liftIO
      (ghcjs_dom_text_track_cue_set_id
         (unTextTrackCue (toTextTrackCue self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_text_track_cue_get_id ::
        JSRef TextTrackCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.id Mozilla TextTrackCue.id documentation> 
textTrackCueGetId ::
                  (MonadIO m, IsTextTrackCue self, FromJSString result) =>
                    self -> m result
textTrackCueGetId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_text_track_cue_get_id
            (unTextTrackCue (toTextTrackCue self))))
 
foreign import javascript unsafe "$1[\"startTime\"] = $2;"
        ghcjs_dom_text_track_cue_set_start_time ::
        JSRef TextTrackCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.startTime Mozilla TextTrackCue.startTime documentation> 
textTrackCueSetStartTime ::
                         (MonadIO m, IsTextTrackCue self) => self -> Double -> m ()
textTrackCueSetStartTime self val
  = liftIO
      (ghcjs_dom_text_track_cue_set_start_time
         (unTextTrackCue (toTextTrackCue self))
         val)
 
foreign import javascript unsafe "$1[\"startTime\"]"
        ghcjs_dom_text_track_cue_get_start_time ::
        JSRef TextTrackCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.startTime Mozilla TextTrackCue.startTime documentation> 
textTrackCueGetStartTime ::
                         (MonadIO m, IsTextTrackCue self) => self -> m Double
textTrackCueGetStartTime self
  = liftIO
      (ghcjs_dom_text_track_cue_get_start_time
         (unTextTrackCue (toTextTrackCue self)))
 
foreign import javascript unsafe "$1[\"endTime\"] = $2;"
        ghcjs_dom_text_track_cue_set_end_time ::
        JSRef TextTrackCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.endTime Mozilla TextTrackCue.endTime documentation> 
textTrackCueSetEndTime ::
                       (MonadIO m, IsTextTrackCue self) => self -> Double -> m ()
textTrackCueSetEndTime self val
  = liftIO
      (ghcjs_dom_text_track_cue_set_end_time
         (unTextTrackCue (toTextTrackCue self))
         val)
 
foreign import javascript unsafe "$1[\"endTime\"]"
        ghcjs_dom_text_track_cue_get_end_time ::
        JSRef TextTrackCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.endTime Mozilla TextTrackCue.endTime documentation> 
textTrackCueGetEndTime ::
                       (MonadIO m, IsTextTrackCue self) => self -> m Double
textTrackCueGetEndTime self
  = liftIO
      (ghcjs_dom_text_track_cue_get_end_time
         (unTextTrackCue (toTextTrackCue self)))
 
foreign import javascript unsafe "$1[\"pauseOnExit\"] = $2;"
        ghcjs_dom_text_track_cue_set_pause_on_exit ::
        JSRef TextTrackCue -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.pauseOnExit Mozilla TextTrackCue.pauseOnExit documentation> 
textTrackCueSetPauseOnExit ::
                           (MonadIO m, IsTextTrackCue self) => self -> Bool -> m ()
textTrackCueSetPauseOnExit self val
  = liftIO
      (ghcjs_dom_text_track_cue_set_pause_on_exit
         (unTextTrackCue (toTextTrackCue self))
         val)
 
foreign import javascript unsafe "($1[\"pauseOnExit\"] ? 1 : 0)"
        ghcjs_dom_text_track_cue_get_pause_on_exit ::
        JSRef TextTrackCue -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.pauseOnExit Mozilla TextTrackCue.pauseOnExit documentation> 
textTrackCueGetPauseOnExit ::
                           (MonadIO m, IsTextTrackCue self) => self -> m Bool
textTrackCueGetPauseOnExit self
  = liftIO
      (ghcjs_dom_text_track_cue_get_pause_on_exit
         (unTextTrackCue (toTextTrackCue self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.enter Mozilla TextTrackCue.enter documentation> 
textTrackCueEnter ::
                  (IsTextTrackCue self, IsEventTarget self) => EventName self Event
textTrackCueEnter = unsafeEventName (toJSString "enter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.exit Mozilla TextTrackCue.exit documentation> 
textTrackCueExit ::
                 (IsTextTrackCue self, IsEventTarget self) => EventName self Event
textTrackCueExit = unsafeEventName (toJSString "exit")
#else
module GHCJS.DOM.TextTrackCue (
  ) where
#endif
