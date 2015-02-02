{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VideoTrackList
       (ghcjs_dom_video_track_list_item, videoTrackListItem,
        ghcjs_dom_video_track_list_get_track_by_id,
        videoTrackListGetTrackById,
        ghcjs_dom_video_track_list_dispatch_event,
        videoTrackListDispatchEvent, ghcjs_dom_video_track_list_get_length,
        videoTrackListGetLength,
        ghcjs_dom_video_track_list_get_selected_index,
        videoTrackListGetSelectedIndex, videoTrackListOnchange,
        videoTrackListOnaddtrack, videoTrackListOnremovetrack,
        VideoTrackList, IsVideoTrackList, castToVideoTrackList,
        gTypeVideoTrackList, toVideoTrackList)
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
        ghcjs_dom_video_track_list_item ::
        JSRef VideoTrackList -> Word -> IO (JSRef VideoTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
videoTrackListItem ::
                   (IsVideoTrackList self) => self -> Word -> IO (Maybe VideoTrack)
videoTrackListItem self index
  = (ghcjs_dom_video_track_list_item
       (unVideoTrackList (toVideoTrackList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        ghcjs_dom_video_track_list_get_track_by_id ::
        JSRef VideoTrackList -> JSString -> IO (JSRef VideoTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.trackById Mozilla VideoTrackList.trackById documentation> 
videoTrackListGetTrackById ::
                           (IsVideoTrackList self, ToJSString id) =>
                             self -> id -> IO (Maybe VideoTrack)
videoTrackListGetTrackById self id
  = (ghcjs_dom_video_track_list_get_track_by_id
       (unVideoTrackList (toVideoTrackList self))
       (toJSString id))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_video_track_list_dispatch_event ::
        JSRef VideoTrackList -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.dispatchEvent Mozilla VideoTrackList.dispatchEvent documentation> 
videoTrackListDispatchEvent ::
                            (IsVideoTrackList self, IsEvent evt) =>
                              self -> Maybe evt -> IO Bool
videoTrackListDispatchEvent self evt
  = ghcjs_dom_video_track_list_dispatch_event
      (unVideoTrackList (toVideoTrackList self))
      (maybe jsNull (unEvent . toEvent) evt)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_video_track_list_get_length ::
        JSRef VideoTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.length Mozilla VideoTrackList.length documentation> 
videoTrackListGetLength ::
                        (IsVideoTrackList self) => self -> IO Word
videoTrackListGetLength self
  = ghcjs_dom_video_track_list_get_length
      (unVideoTrackList (toVideoTrackList self))
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        ghcjs_dom_video_track_list_get_selected_index ::
        JSRef VideoTrackList -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.selectedIndex Mozilla VideoTrackList.selectedIndex documentation> 
videoTrackListGetSelectedIndex ::
                               (IsVideoTrackList self) => self -> IO Int
videoTrackListGetSelectedIndex self
  = ghcjs_dom_video_track_list_get_selected_index
      (unVideoTrackList (toVideoTrackList self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onchange Mozilla VideoTrackList.onchange documentation> 
videoTrackListOnchange ::
                       (IsVideoTrackList self) => Signal self (EventM UIEvent self ())
videoTrackListOnchange = (connect "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onaddtrack Mozilla VideoTrackList.onaddtrack documentation> 
videoTrackListOnaddtrack ::
                         (IsVideoTrackList self) => Signal self (EventM UIEvent self ())
videoTrackListOnaddtrack = (connect "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onremovetrack Mozilla VideoTrackList.onremovetrack documentation> 
videoTrackListOnremovetrack ::
                            (IsVideoTrackList self) => Signal self (EventM UIEvent self ())
videoTrackListOnremovetrack = (connect "removetrack")
#else
module GHCJS.DOM.VideoTrackList (
  ) where
#endif
