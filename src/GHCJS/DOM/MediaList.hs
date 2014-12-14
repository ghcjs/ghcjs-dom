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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_media_list_item :: JSRef MediaList -> Word -> IO JSString
 
mediaListItem ::
              (IsMediaList self, FromJSString result) =>
                self -> Word -> IO result
mediaListItem self index
  = fromJSString <$>
      (ghcjs_dom_media_list_item (unMediaList (toMediaList self)) index)
 
foreign import javascript unsafe "$1[\"deleteMedium\"]($2)"
        ghcjs_dom_media_list_delete_medium ::
        JSRef MediaList -> JSString -> IO ()
 
mediaListDeleteMedium ::
                      (IsMediaList self, ToJSString oldMedium) =>
                        self -> oldMedium -> IO ()
mediaListDeleteMedium self oldMedium
  = ghcjs_dom_media_list_delete_medium
      (unMediaList (toMediaList self))
      (toJSString oldMedium)
 
foreign import javascript unsafe "$1[\"appendMedium\"]($2)"
        ghcjs_dom_media_list_append_medium ::
        JSRef MediaList -> JSString -> IO ()
 
mediaListAppendMedium ::
                      (IsMediaList self, ToJSString newMedium) =>
                        self -> newMedium -> IO ()
mediaListAppendMedium self newMedium
  = ghcjs_dom_media_list_append_medium
      (unMediaList (toMediaList self))
      (toJSString newMedium)
 
foreign import javascript unsafe "$1[\"mediaText\"] = $2;"
        ghcjs_dom_media_list_set_media_text ::
        JSRef MediaList -> JSString -> IO ()
 
mediaListSetMediaText ::
                      (IsMediaList self, ToJSString val) => self -> val -> IO ()
mediaListSetMediaText self val
  = ghcjs_dom_media_list_set_media_text
      (unMediaList (toMediaList self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"mediaText\"]"
        ghcjs_dom_media_list_get_media_text ::
        JSRef MediaList -> IO JSString
 
mediaListGetMediaText ::
                      (IsMediaList self, FromJSString result) => self -> IO result
mediaListGetMediaText self
  = fromJSString <$>
      (ghcjs_dom_media_list_get_media_text
         (unMediaList (toMediaList self)))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_media_list_get_length :: JSRef MediaList -> IO Word
 
mediaListGetLength :: (IsMediaList self) => self -> IO Word
mediaListGetLength self
  = ghcjs_dom_media_list_get_length (unMediaList (toMediaList self))
#else
module GHCJS.DOM.MediaList (
  module Graphics.UI.Gtk.WebKit.DOM.MediaList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MediaList
#endif
