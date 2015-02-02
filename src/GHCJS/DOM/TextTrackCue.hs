{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextTrackCue
       (ghcjs_dom_text_track_cue_new, textTrackCueNew,
        ghcjs_dom_text_track_cue_dispatch_event, textTrackCueDispatchEvent,
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
        textTrackCueGetPauseOnExit, textTrackCueOnenter,
        textTrackCueOnexit, TextTrackCue(..), IsTextTrackCue,
        castToTextTrackCue, gTypeTextTrackCue, toTextTrackCue)
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

 
foreign import javascript unsafe
        "new window[\"TextTrackCue\"]($1,\n$2, $3)"
        ghcjs_dom_text_track_cue_new ::
        Double -> Double -> JSString -> IO (JSRef TextTrackCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue Mozilla TextTrackCue documentation> 
textTrackCueNew ::
                (ToJSString text) => Double -> Double -> text -> IO TextTrackCue
textTrackCueNew startTime endTime text
  = ghcjs_dom_text_track_cue_new startTime endTime (toJSString text)
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_text_track_cue_dispatch_event ::
        JSRef TextTrackCue -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.dispatchEvent Mozilla TextTrackCue.dispatchEvent documentation> 
textTrackCueDispatchEvent ::
                          (IsTextTrackCue self, IsEvent evt) => self -> Maybe evt -> IO Bool
textTrackCueDispatchEvent self evt
  = ghcjs_dom_text_track_cue_dispatch_event
      (unTextTrackCue (toTextTrackCue self))
      (maybe jsNull (unEvent . toEvent) evt)
 
foreign import javascript unsafe "$1[\"track\"]"
        ghcjs_dom_text_track_cue_get_track ::
        JSRef TextTrackCue -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
textTrackCueGetTrack ::
                     (IsTextTrackCue self) => self -> IO (Maybe TextTrack)
textTrackCueGetTrack self
  = (ghcjs_dom_text_track_cue_get_track
       (unTextTrackCue (toTextTrackCue self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"id\"] = $2;"
        ghcjs_dom_text_track_cue_set_id ::
        JSRef TextTrackCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.id Mozilla TextTrackCue.id documentation> 
textTrackCueSetId ::
                  (IsTextTrackCue self, ToJSString val) => self -> val -> IO ()
textTrackCueSetId self val
  = ghcjs_dom_text_track_cue_set_id
      (unTextTrackCue (toTextTrackCue self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_text_track_cue_get_id ::
        JSRef TextTrackCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.id Mozilla TextTrackCue.id documentation> 
textTrackCueGetId ::
                  (IsTextTrackCue self, FromJSString result) => self -> IO result
textTrackCueGetId self
  = fromJSString <$>
      (ghcjs_dom_text_track_cue_get_id
         (unTextTrackCue (toTextTrackCue self)))
 
foreign import javascript unsafe "$1[\"startTime\"] = $2;"
        ghcjs_dom_text_track_cue_set_start_time ::
        JSRef TextTrackCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.startTime Mozilla TextTrackCue.startTime documentation> 
textTrackCueSetStartTime ::
                         (IsTextTrackCue self) => self -> Double -> IO ()
textTrackCueSetStartTime self val
  = ghcjs_dom_text_track_cue_set_start_time
      (unTextTrackCue (toTextTrackCue self))
      val
 
foreign import javascript unsafe "$1[\"startTime\"]"
        ghcjs_dom_text_track_cue_get_start_time ::
        JSRef TextTrackCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.startTime Mozilla TextTrackCue.startTime documentation> 
textTrackCueGetStartTime ::
                         (IsTextTrackCue self) => self -> IO Double
textTrackCueGetStartTime self
  = ghcjs_dom_text_track_cue_get_start_time
      (unTextTrackCue (toTextTrackCue self))
 
foreign import javascript unsafe "$1[\"endTime\"] = $2;"
        ghcjs_dom_text_track_cue_set_end_time ::
        JSRef TextTrackCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.endTime Mozilla TextTrackCue.endTime documentation> 
textTrackCueSetEndTime ::
                       (IsTextTrackCue self) => self -> Double -> IO ()
textTrackCueSetEndTime self val
  = ghcjs_dom_text_track_cue_set_end_time
      (unTextTrackCue (toTextTrackCue self))
      val
 
foreign import javascript unsafe "$1[\"endTime\"]"
        ghcjs_dom_text_track_cue_get_end_time ::
        JSRef TextTrackCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.endTime Mozilla TextTrackCue.endTime documentation> 
textTrackCueGetEndTime ::
                       (IsTextTrackCue self) => self -> IO Double
textTrackCueGetEndTime self
  = ghcjs_dom_text_track_cue_get_end_time
      (unTextTrackCue (toTextTrackCue self))
 
foreign import javascript unsafe "$1[\"pauseOnExit\"] = $2;"
        ghcjs_dom_text_track_cue_set_pause_on_exit ::
        JSRef TextTrackCue -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.pauseOnExit Mozilla TextTrackCue.pauseOnExit documentation> 
textTrackCueSetPauseOnExit ::
                           (IsTextTrackCue self) => self -> Bool -> IO ()
textTrackCueSetPauseOnExit self val
  = ghcjs_dom_text_track_cue_set_pause_on_exit
      (unTextTrackCue (toTextTrackCue self))
      val
 
foreign import javascript unsafe "($1[\"pauseOnExit\"] ? 1 : 0)"
        ghcjs_dom_text_track_cue_get_pause_on_exit ::
        JSRef TextTrackCue -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.pauseOnExit Mozilla TextTrackCue.pauseOnExit documentation> 
textTrackCueGetPauseOnExit ::
                           (IsTextTrackCue self) => self -> IO Bool
textTrackCueGetPauseOnExit self
  = ghcjs_dom_text_track_cue_get_pause_on_exit
      (unTextTrackCue (toTextTrackCue self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.onenter Mozilla TextTrackCue.onenter documentation> 
textTrackCueOnenter ::
                    (IsTextTrackCue self) => Signal self (EventM UIEvent self ())
textTrackCueOnenter = (connect "enter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.onexit Mozilla TextTrackCue.onexit documentation> 
textTrackCueOnexit ::
                   (IsTextTrackCue self) => Signal self (EventM UIEvent self ())
textTrackCueOnexit = (connect "exit")
#else
module GHCJS.DOM.TextTrackCue (
  ) where
#endif
