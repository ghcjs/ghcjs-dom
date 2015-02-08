{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextTrackList
       (ghcjs_dom_text_track_list_item, textTrackListItem,
        ghcjs_dom_text_track_list_get_track_by_id,
        textTrackListGetTrackById, ghcjs_dom_text_track_list_get_length,
        textTrackListGetLength, textTrackListAddTrack, textTrackListChange,
        textTrackListRemoveTrack, TextTrackList(..), IsTextTrackList,
        castToTextTrackList, gTypeTextTrackList, toTextTrackList)
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
        ghcjs_dom_text_track_list_item ::
        JSRef TextTrackList -> Word -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
textTrackListItem ::
                  (MonadIO m, IsTextTrackList self) =>
                    self -> Word -> m (Maybe TextTrack)
textTrackListItem self index
  = liftIO
      ((ghcjs_dom_text_track_list_item
          (unTextTrackList (toTextTrackList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        ghcjs_dom_text_track_list_get_track_by_id ::
        JSRef TextTrackList -> JSString -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.trackById Mozilla TextTrackList.trackById documentation> 
textTrackListGetTrackById ::
                          (MonadIO m, IsTextTrackList self, ToJSString id) =>
                            self -> id -> m (Maybe TextTrack)
textTrackListGetTrackById self id
  = liftIO
      ((ghcjs_dom_text_track_list_get_track_by_id
          (unTextTrackList (toTextTrackList self))
          (toJSString id))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_text_track_list_get_length ::
        JSRef TextTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.length Mozilla TextTrackList.length documentation> 
textTrackListGetLength ::
                       (MonadIO m, IsTextTrackList self) => self -> m Word
textTrackListGetLength self
  = liftIO
      (ghcjs_dom_text_track_list_get_length
         (unTextTrackList (toTextTrackList self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.addTrack Mozilla TextTrackList.addTrack documentation> 
textTrackListAddTrack ::
                      (IsTextTrackList self, IsEventTarget self) => EventName self Event
textTrackListAddTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.change Mozilla TextTrackList.change documentation> 
textTrackListChange ::
                    (IsTextTrackList self, IsEventTarget self) => EventName self Event
textTrackListChange = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.removeTrack Mozilla TextTrackList.removeTrack documentation> 
textTrackListRemoveTrack ::
                         (IsTextTrackList self, IsEventTarget self) => EventName self Event
textTrackListRemoveTrack
  = unsafeEventName (toJSString "removetrack")
#else
module GHCJS.DOM.TextTrackList (
  ) where
#endif
