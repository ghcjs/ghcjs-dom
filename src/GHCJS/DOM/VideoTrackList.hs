{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VideoTrackList
       (ghcjs_dom_video_track_list_item, videoTrackListItem,
        ghcjs_dom_video_track_list_get_track_by_id,
        videoTrackListGetTrackById, ghcjs_dom_video_track_list_get_length,
        videoTrackListGetLength,
        ghcjs_dom_video_track_list_get_selected_index,
        videoTrackListGetSelectedIndex, videoTrackListChange,
        videoTrackListAddTrack, videoTrackListRemoveTrack, VideoTrackList,
        IsVideoTrackList, castToVideoTrackList, gTypeVideoTrackList,
        toVideoTrackList)
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
        ghcjs_dom_video_track_list_item ::
        JSRef VideoTrackList -> Word -> IO (JSRef VideoTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
videoTrackListItem ::
                   (MonadIO m, IsVideoTrackList self) =>
                     self -> Word -> m (Maybe VideoTrack)
videoTrackListItem self index
  = liftIO
      ((ghcjs_dom_video_track_list_item
          (unVideoTrackList (toVideoTrackList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        ghcjs_dom_video_track_list_get_track_by_id ::
        JSRef VideoTrackList -> JSString -> IO (JSRef VideoTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.trackById Mozilla VideoTrackList.trackById documentation> 
videoTrackListGetTrackById ::
                           (MonadIO m, IsVideoTrackList self, ToJSString id) =>
                             self -> id -> m (Maybe VideoTrack)
videoTrackListGetTrackById self id
  = liftIO
      ((ghcjs_dom_video_track_list_get_track_by_id
          (unVideoTrackList (toVideoTrackList self))
          (toJSString id))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_video_track_list_get_length ::
        JSRef VideoTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.length Mozilla VideoTrackList.length documentation> 
videoTrackListGetLength ::
                        (MonadIO m, IsVideoTrackList self) => self -> m Word
videoTrackListGetLength self
  = liftIO
      (ghcjs_dom_video_track_list_get_length
         (unVideoTrackList (toVideoTrackList self)))
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        ghcjs_dom_video_track_list_get_selected_index ::
        JSRef VideoTrackList -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.selectedIndex Mozilla VideoTrackList.selectedIndex documentation> 
videoTrackListGetSelectedIndex ::
                               (MonadIO m, IsVideoTrackList self) => self -> m Int
videoTrackListGetSelectedIndex self
  = liftIO
      (ghcjs_dom_video_track_list_get_selected_index
         (unVideoTrackList (toVideoTrackList self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.change Mozilla VideoTrackList.change documentation> 
videoTrackListChange ::
                     (IsVideoTrackList self, IsEventTarget self) => EventName self Event
videoTrackListChange = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.addTrack Mozilla VideoTrackList.addTrack documentation> 
videoTrackListAddTrack ::
                       (IsVideoTrackList self, IsEventTarget self) => EventName self Event
videoTrackListAddTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.removeTrack Mozilla VideoTrackList.removeTrack documentation> 
videoTrackListRemoveTrack ::
                          (IsVideoTrackList self, IsEventTarget self) => EventName self Event
videoTrackListRemoveTrack
  = unsafeEventName (toJSString "removetrack")
#else
module GHCJS.DOM.VideoTrackList (
  ) where
#endif
