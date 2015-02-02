{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioTrackList
       (ghcjs_dom_audio_track_list_item, audioTrackListItem,
        ghcjs_dom_audio_track_list_get_track_by_id,
        audioTrackListGetTrackById,
        ghcjs_dom_audio_track_list_dispatch_event,
        audioTrackListDispatchEvent, ghcjs_dom_audio_track_list_get_length,
        audioTrackListGetLength, audioTrackListOnchange,
        audioTrackListOnaddtrack, audioTrackListOnremovetrack,
        AudioTrackList, IsAudioTrackList, castToAudioTrackList,
        gTypeAudioTrackList, toAudioTrackList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_audio_track_list_item ::
        JSRef AudioTrackList -> Word -> IO (JSRef AudioTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
audioTrackListItem ::
                   (IsAudioTrackList self) => self -> Word -> IO (Maybe AudioTrack)
audioTrackListItem self index
  = (ghcjs_dom_audio_track_list_item
       (unAudioTrackList (toAudioTrackList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        ghcjs_dom_audio_track_list_get_track_by_id ::
        JSRef AudioTrackList -> JSString -> IO (JSRef AudioTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.trackById Mozilla AudioTrackList.trackById documentation> 
audioTrackListGetTrackById ::
                           (IsAudioTrackList self, ToJSString id) =>
                             self -> id -> IO (Maybe AudioTrack)
audioTrackListGetTrackById self id
  = (ghcjs_dom_audio_track_list_get_track_by_id
       (unAudioTrackList (toAudioTrackList self))
       (toJSString id))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_audio_track_list_dispatch_event ::
        JSRef AudioTrackList -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.dispatchEvent Mozilla AudioTrackList.dispatchEvent documentation> 
audioTrackListDispatchEvent ::
                            (IsAudioTrackList self, IsEvent evt) =>
                              self -> Maybe evt -> IO Bool
audioTrackListDispatchEvent self evt
  = ghcjs_dom_audio_track_list_dispatch_event
      (unAudioTrackList (toAudioTrackList self))
      (maybe jsNull (unEvent . toEvent) evt)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_audio_track_list_get_length ::
        JSRef AudioTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.length Mozilla AudioTrackList.length documentation> 
audioTrackListGetLength ::
                        (IsAudioTrackList self) => self -> IO Word
audioTrackListGetLength self
  = ghcjs_dom_audio_track_list_get_length
      (unAudioTrackList (toAudioTrackList self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onchange Mozilla AudioTrackList.onchange documentation> 
audioTrackListOnchange ::
                       (IsAudioTrackList self) => Signal self (EventM UIEvent self ())
audioTrackListOnchange = (connect "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onaddtrack Mozilla AudioTrackList.onaddtrack documentation> 
audioTrackListOnaddtrack ::
                         (IsAudioTrackList self) => Signal self (EventM UIEvent self ())
audioTrackListOnaddtrack = (connect "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onremovetrack Mozilla AudioTrackList.onremovetrack documentation> 
audioTrackListOnremovetrack ::
                            (IsAudioTrackList self) => Signal self (EventM UIEvent self ())
audioTrackListOnremovetrack = (connect "removetrack")
#else
module GHCJS.DOM.AudioTrackList (
  ) where
#endif
