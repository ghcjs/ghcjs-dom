{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VTTCue
       (ghcjs_dom_vtt_cue_new, vttCueNew,
        ghcjs_dom_vtt_cue_get_cue_as_html, vttCueGetCueAsHTML,
        ghcjs_dom_vtt_cue_set_vertical, vttCueSetVertical,
        ghcjs_dom_vtt_cue_get_vertical, vttCueGetVertical,
        ghcjs_dom_vtt_cue_set_snap_to_lines, vttCueSetSnapToLines,
        ghcjs_dom_vtt_cue_get_snap_to_lines, vttCueGetSnapToLines,
        ghcjs_dom_vtt_cue_set_line, vttCueSetLine,
        ghcjs_dom_vtt_cue_get_line, vttCueGetLine,
        ghcjs_dom_vtt_cue_set_position, vttCueSetPosition,
        ghcjs_dom_vtt_cue_get_position, vttCueGetPosition,
        ghcjs_dom_vtt_cue_set_size, vttCueSetSize,
        ghcjs_dom_vtt_cue_get_size, vttCueGetSize,
        ghcjs_dom_vtt_cue_set_align, vttCueSetAlign,
        ghcjs_dom_vtt_cue_get_align, vttCueGetAlign,
        ghcjs_dom_vtt_cue_set_text, vttCueSetText,
        ghcjs_dom_vtt_cue_get_text, vttCueGetText,
        ghcjs_dom_vtt_cue_set_region_id, vttCueSetRegionId,
        ghcjs_dom_vtt_cue_get_region_id, vttCueGetRegionId, VTTCue,
        IsVTTCue, castToVTTCue, gTypeVTTCue, toVTTCue)
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
        "new window[\"VTTCue\"]($1, $2, $3)" ghcjs_dom_vtt_cue_new ::
        Double -> Double -> JSString -> IO (JSRef VTTCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue Mozilla VTTCue documentation> 
vttCueNew ::
          (ToJSString text) => Double -> Double -> text -> IO VTTCue
vttCueNew startTime endTime text
  = ghcjs_dom_vtt_cue_new startTime endTime (toJSString text) >>=
      fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"getCueAsHTML\"]()"
        ghcjs_dom_vtt_cue_get_cue_as_html ::
        JSRef VTTCue -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.cueAsHTML Mozilla VTTCue.cueAsHTML documentation> 
vttCueGetCueAsHTML ::
                   (IsVTTCue self) => self -> IO (Maybe DocumentFragment)
vttCueGetCueAsHTML self
  = (ghcjs_dom_vtt_cue_get_cue_as_html (unVTTCue (toVTTCue self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"vertical\"] = $2;"
        ghcjs_dom_vtt_cue_set_vertical :: JSRef VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.vertical Mozilla VTTCue.vertical documentation> 
vttCueSetVertical ::
                  (IsVTTCue self, ToJSString val) => self -> val -> IO ()
vttCueSetVertical self val
  = ghcjs_dom_vtt_cue_set_vertical (unVTTCue (toVTTCue self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"vertical\"]"
        ghcjs_dom_vtt_cue_get_vertical :: JSRef VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.vertical Mozilla VTTCue.vertical documentation> 
vttCueGetVertical ::
                  (IsVTTCue self, FromJSString result) => self -> IO result
vttCueGetVertical self
  = fromJSString <$>
      (ghcjs_dom_vtt_cue_get_vertical (unVTTCue (toVTTCue self)))
 
foreign import javascript unsafe "$1[\"snapToLines\"] = $2;"
        ghcjs_dom_vtt_cue_set_snap_to_lines ::
        JSRef VTTCue -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.snapToLines Mozilla VTTCue.snapToLines documentation> 
vttCueSetSnapToLines :: (IsVTTCue self) => self -> Bool -> IO ()
vttCueSetSnapToLines self val
  = ghcjs_dom_vtt_cue_set_snap_to_lines (unVTTCue (toVTTCue self))
      val
 
foreign import javascript unsafe "($1[\"snapToLines\"] ? 1 : 0)"
        ghcjs_dom_vtt_cue_get_snap_to_lines :: JSRef VTTCue -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.snapToLines Mozilla VTTCue.snapToLines documentation> 
vttCueGetSnapToLines :: (IsVTTCue self) => self -> IO Bool
vttCueGetSnapToLines self
  = ghcjs_dom_vtt_cue_get_snap_to_lines (unVTTCue (toVTTCue self))
 
foreign import javascript unsafe "$1[\"line\"] = $2;"
        ghcjs_dom_vtt_cue_set_line :: JSRef VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.line Mozilla VTTCue.line documentation> 
vttCueSetLine :: (IsVTTCue self) => self -> Double -> IO ()
vttCueSetLine self val
  = ghcjs_dom_vtt_cue_set_line (unVTTCue (toVTTCue self)) val
 
foreign import javascript unsafe "$1[\"line\"]"
        ghcjs_dom_vtt_cue_get_line :: JSRef VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.line Mozilla VTTCue.line documentation> 
vttCueGetLine :: (IsVTTCue self) => self -> IO Double
vttCueGetLine self
  = ghcjs_dom_vtt_cue_get_line (unVTTCue (toVTTCue self))
 
foreign import javascript unsafe "$1[\"position\"] = $2;"
        ghcjs_dom_vtt_cue_set_position :: JSRef VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.position Mozilla VTTCue.position documentation> 
vttCueSetPosition :: (IsVTTCue self) => self -> Double -> IO ()
vttCueSetPosition self val
  = ghcjs_dom_vtt_cue_set_position (unVTTCue (toVTTCue self)) val
 
foreign import javascript unsafe "$1[\"position\"]"
        ghcjs_dom_vtt_cue_get_position :: JSRef VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.position Mozilla VTTCue.position documentation> 
vttCueGetPosition :: (IsVTTCue self) => self -> IO Double
vttCueGetPosition self
  = ghcjs_dom_vtt_cue_get_position (unVTTCue (toVTTCue self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_vtt_cue_set_size :: JSRef VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.size Mozilla VTTCue.size documentation> 
vttCueSetSize :: (IsVTTCue self) => self -> Double -> IO ()
vttCueSetSize self val
  = ghcjs_dom_vtt_cue_set_size (unVTTCue (toVTTCue self)) val
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_vtt_cue_get_size :: JSRef VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.size Mozilla VTTCue.size documentation> 
vttCueGetSize :: (IsVTTCue self) => self -> IO Double
vttCueGetSize self
  = ghcjs_dom_vtt_cue_get_size (unVTTCue (toVTTCue self))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_vtt_cue_set_align :: JSRef VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.align Mozilla VTTCue.align documentation> 
vttCueSetAlign ::
               (IsVTTCue self, ToJSString val) => self -> val -> IO ()
vttCueSetAlign self val
  = ghcjs_dom_vtt_cue_set_align (unVTTCue (toVTTCue self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_vtt_cue_get_align :: JSRef VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.align Mozilla VTTCue.align documentation> 
vttCueGetAlign ::
               (IsVTTCue self, FromJSString result) => self -> IO result
vttCueGetAlign self
  = fromJSString <$>
      (ghcjs_dom_vtt_cue_get_align (unVTTCue (toVTTCue self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_vtt_cue_set_text :: JSRef VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.text Mozilla VTTCue.text documentation> 
vttCueSetText ::
              (IsVTTCue self, ToJSString val) => self -> val -> IO ()
vttCueSetText self val
  = ghcjs_dom_vtt_cue_set_text (unVTTCue (toVTTCue self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_vtt_cue_get_text :: JSRef VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.text Mozilla VTTCue.text documentation> 
vttCueGetText ::
              (IsVTTCue self, FromJSString result) => self -> IO result
vttCueGetText self
  = fromJSString <$>
      (ghcjs_dom_vtt_cue_get_text (unVTTCue (toVTTCue self)))
 
foreign import javascript unsafe "$1[\"regionId\"] = $2;"
        ghcjs_dom_vtt_cue_set_region_id ::
        JSRef VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.regionId Mozilla VTTCue.regionId documentation> 
vttCueSetRegionId ::
                  (IsVTTCue self, ToJSString val) => self -> val -> IO ()
vttCueSetRegionId self val
  = ghcjs_dom_vtt_cue_set_region_id (unVTTCue (toVTTCue self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"regionId\"]"
        ghcjs_dom_vtt_cue_get_region_id :: JSRef VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.regionId Mozilla VTTCue.regionId documentation> 
vttCueGetRegionId ::
                  (IsVTTCue self, FromJSString result) => self -> IO result
vttCueGetRegionId self
  = fromJSString <$>
      (ghcjs_dom_vtt_cue_get_region_id (unVTTCue (toVTTCue self)))
#else
module GHCJS.DOM.VTTCue (
  ) where
#endif
