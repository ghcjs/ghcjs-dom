{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextTrackList
       (ghcjs_dom_text_track_list_item, textTrackListItem,
        ghcjs_dom_text_track_list_get_track_by_id,
        textTrackListGetTrackById,
        ghcjs_dom_text_track_list_dispatch_event,
        textTrackListDispatchEvent, ghcjs_dom_text_track_list_get_length,
        textTrackListGetLength, textTrackListOnaddtrack,
        textTrackListOnchange, textTrackListOnremovetrack,
        TextTrackList(..), IsTextTrackList, castToTextTrackList,
        gTypeTextTrackList, toTextTrackList)
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
        ghcjs_dom_text_track_list_item ::
        JSRef TextTrackList -> Word -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
textTrackListItem ::
                  (IsTextTrackList self) => self -> Word -> IO (Maybe TextTrack)
textTrackListItem self index
  = (ghcjs_dom_text_track_list_item
       (unTextTrackList (toTextTrackList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        ghcjs_dom_text_track_list_get_track_by_id ::
        JSRef TextTrackList -> JSString -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.trackById Mozilla TextTrackList.trackById documentation> 
textTrackListGetTrackById ::
                          (IsTextTrackList self, ToJSString id) =>
                            self -> id -> IO (Maybe TextTrack)
textTrackListGetTrackById self id
  = (ghcjs_dom_text_track_list_get_track_by_id
       (unTextTrackList (toTextTrackList self))
       (toJSString id))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_text_track_list_dispatch_event ::
        JSRef TextTrackList -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.dispatchEvent Mozilla TextTrackList.dispatchEvent documentation> 
textTrackListDispatchEvent ::
                           (IsTextTrackList self, IsEvent evt) => self -> Maybe evt -> IO Bool
textTrackListDispatchEvent self evt
  = ghcjs_dom_text_track_list_dispatch_event
      (unTextTrackList (toTextTrackList self))
      (maybe jsNull (unEvent . toEvent) evt)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_text_track_list_get_length ::
        JSRef TextTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.length Mozilla TextTrackList.length documentation> 
textTrackListGetLength :: (IsTextTrackList self) => self -> IO Word
textTrackListGetLength self
  = ghcjs_dom_text_track_list_get_length
      (unTextTrackList (toTextTrackList self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onaddtrack Mozilla TextTrackList.onaddtrack documentation> 
textTrackListOnaddtrack ::
                        (IsTextTrackList self) => Signal self (EventM UIEvent self ())
textTrackListOnaddtrack = (connect "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onchange Mozilla TextTrackList.onchange documentation> 
textTrackListOnchange ::
                      (IsTextTrackList self) => Signal self (EventM UIEvent self ())
textTrackListOnchange = (connect "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onremovetrack Mozilla TextTrackList.onremovetrack documentation> 
textTrackListOnremovetrack ::
                           (IsTextTrackList self) => Signal self (EventM UIEvent self ())
textTrackListOnremovetrack = (connect "removetrack")
#else
module GHCJS.DOM.TextTrackList (
  ) where
#endif
