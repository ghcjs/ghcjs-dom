{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioTrackList
       (ghcjs_dom_audio_track_list_item, audioTrackListItem,
        ghcjs_dom_audio_track_list_get_track_by_id,
        audioTrackListGetTrackById, ghcjs_dom_audio_track_list_get_length,
        audioTrackListGetLength, audioTrackListChange,
        audioTrackListAddTrack, audioTrackListRemoveTrack, AudioTrackList,
        IsAudioTrackList, castToAudioTrackList, gTypeAudioTrackList,
        toAudioTrackList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_audio_track_list_item ::
        JSRef AudioTrackList -> Word -> IO (JSRef AudioTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
audioTrackListItem ::
                   (MonadIO m, IsAudioTrackList self) =>
                     self -> Word -> m (Maybe AudioTrack)
audioTrackListItem self index
  = liftIO
      ((ghcjs_dom_audio_track_list_item
          (unAudioTrackList (toAudioTrackList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        ghcjs_dom_audio_track_list_get_track_by_id ::
        JSRef AudioTrackList -> JSString -> IO (JSRef AudioTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.trackById Mozilla AudioTrackList.trackById documentation> 
audioTrackListGetTrackById ::
                           (MonadIO m, IsAudioTrackList self, ToJSString id) =>
                             self -> id -> m (Maybe AudioTrack)
audioTrackListGetTrackById self id
  = liftIO
      ((ghcjs_dom_audio_track_list_get_track_by_id
          (unAudioTrackList (toAudioTrackList self))
          (toJSString id))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_audio_track_list_get_length ::
        JSRef AudioTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.length Mozilla AudioTrackList.length documentation> 
audioTrackListGetLength ::
                        (MonadIO m, IsAudioTrackList self) => self -> m Word
audioTrackListGetLength self
  = liftIO
      (ghcjs_dom_audio_track_list_get_length
         (unAudioTrackList (toAudioTrackList self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.change Mozilla AudioTrackList.change documentation> 
audioTrackListChange ::
                     (IsAudioTrackList self, IsEventTarget self) => EventName self Event
audioTrackListChange = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.addTrack Mozilla AudioTrackList.addTrack documentation> 
audioTrackListAddTrack ::
                       (IsAudioTrackList self, IsEventTarget self) => EventName self Event
audioTrackListAddTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.removeTrack Mozilla AudioTrackList.removeTrack documentation> 
audioTrackListRemoveTrack ::
                          (IsAudioTrackList self, IsEventTarget self) => EventName self Event
audioTrackListRemoveTrack
  = unsafeEventName (toJSString "removetrack")
#else
module GHCJS.DOM.AudioTrackList (
  ) where
#endif
