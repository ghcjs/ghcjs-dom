{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextTrackCueList
       (ghcjs_dom_text_track_cue_list_item, textTrackCueListItem,
        ghcjs_dom_text_track_cue_list_get_cue_by_id,
        textTrackCueListGetCueById,
        ghcjs_dom_text_track_cue_list_get_length,
        textTrackCueListGetLength, TextTrackCueList(..),
        IsTextTrackCueList, castToTextTrackCueList, gTypeTextTrackCueList,
        toTextTrackCueList)
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
        ghcjs_dom_text_track_cue_list_item ::
        JSRef TextTrackCueList -> Word -> IO (JSRef TextTrackCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
textTrackCueListItem ::
                     (IsTextTrackCueList self) =>
                       self -> Word -> IO (Maybe TextTrackCue)
textTrackCueListItem self index
  = (ghcjs_dom_text_track_cue_list_item
       (unTextTrackCueList (toTextTrackCueList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getCueById\"]($2)"
        ghcjs_dom_text_track_cue_list_get_cue_by_id ::
        JSRef TextTrackCueList -> JSString -> IO (JSRef TextTrackCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.cueById Mozilla TextTrackCueList.cueById documentation> 
textTrackCueListGetCueById ::
                           (IsTextTrackCueList self, ToJSString id) =>
                             self -> id -> IO (Maybe TextTrackCue)
textTrackCueListGetCueById self id
  = (ghcjs_dom_text_track_cue_list_get_cue_by_id
       (unTextTrackCueList (toTextTrackCueList self))
       (toJSString id))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_text_track_cue_list_get_length ::
        JSRef TextTrackCueList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.length Mozilla TextTrackCueList.length documentation> 
textTrackCueListGetLength ::
                          (IsTextTrackCueList self) => self -> IO Word
textTrackCueListGetLength self
  = ghcjs_dom_text_track_cue_list_get_length
      (unTextTrackCueList (toTextTrackCueList self))
#else
module GHCJS.DOM.TextTrackCueList (
  ) where
#endif
