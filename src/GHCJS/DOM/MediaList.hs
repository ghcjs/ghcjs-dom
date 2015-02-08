{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaList
       (ghcjs_dom_media_list_item, mediaListItem,
        ghcjs_dom_media_list_delete_medium, mediaListDeleteMedium,
        ghcjs_dom_media_list_append_medium, mediaListAppendMedium,
        ghcjs_dom_media_list_set_media_text, mediaListSetMediaText,
        ghcjs_dom_media_list_get_media_text, mediaListGetMediaText,
        ghcjs_dom_media_list_get_length, mediaListGetLength, MediaList,
        IsMediaList, castToMediaList, gTypeMediaList, toMediaList)
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
        ghcjs_dom_media_list_item :: JSRef MediaList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
mediaListItem ::
              (MonadIO m, IsMediaList self, FromJSString result) =>
                self -> Word -> m result
mediaListItem self index
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_list_item (unMediaList (toMediaList self)) index))
 
foreign import javascript unsafe "$1[\"deleteMedium\"]($2)"
        ghcjs_dom_media_list_delete_medium ::
        JSRef MediaList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.deleteMedium Mozilla MediaList.deleteMedium documentation> 
mediaListDeleteMedium ::
                      (MonadIO m, IsMediaList self, ToJSString oldMedium) =>
                        self -> oldMedium -> m ()
mediaListDeleteMedium self oldMedium
  = liftIO
      (ghcjs_dom_media_list_delete_medium
         (unMediaList (toMediaList self))
         (toJSString oldMedium))
 
foreign import javascript unsafe "$1[\"appendMedium\"]($2)"
        ghcjs_dom_media_list_append_medium ::
        JSRef MediaList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.appendMedium Mozilla MediaList.appendMedium documentation> 
mediaListAppendMedium ::
                      (MonadIO m, IsMediaList self, ToJSString newMedium) =>
                        self -> newMedium -> m ()
mediaListAppendMedium self newMedium
  = liftIO
      (ghcjs_dom_media_list_append_medium
         (unMediaList (toMediaList self))
         (toJSString newMedium))
 
foreign import javascript unsafe "$1[\"mediaText\"] = $2;"
        ghcjs_dom_media_list_set_media_text ::
        JSRef MediaList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
mediaListSetMediaText ::
                      (MonadIO m, IsMediaList self, ToJSString val) =>
                        self -> val -> m ()
mediaListSetMediaText self val
  = liftIO
      (ghcjs_dom_media_list_set_media_text
         (unMediaList (toMediaList self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"mediaText\"]"
        ghcjs_dom_media_list_get_media_text ::
        JSRef MediaList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
mediaListGetMediaText ::
                      (MonadIO m, IsMediaList self, FromJSString result) =>
                        self -> m result
mediaListGetMediaText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_list_get_media_text
            (unMediaList (toMediaList self))))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_media_list_get_length :: JSRef MediaList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.length Mozilla MediaList.length documentation> 
mediaListGetLength ::
                   (MonadIO m, IsMediaList self) => self -> m Word
mediaListGetLength self
  = liftIO
      (ghcjs_dom_media_list_get_length (unMediaList (toMediaList self)))
#else
module GHCJS.DOM.MediaList (
  module Graphics.UI.Gtk.WebKit.DOM.MediaList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MediaList
#endif
