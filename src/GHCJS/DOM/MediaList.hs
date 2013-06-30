{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.MediaList
       (ghcjs_dom_media_list_item, mediaListItem,
        ghcjs_dom_media_list_delete_medium, mediaListDeleteMedium,
        ghcjs_dom_media_list_append_medium, mediaListAppendMedium,
        ghcjs_dom_media_list_set_media_text, mediaListSetMediaText,
        ghcjs_dom_media_list_get_media_text, mediaListGetMediaText,
        ghcjs_dom_media_list_get_length, mediaListGetLength)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_media_list_item :: JSRef MediaList -> Word -> IO JSString
#else 
ghcjs_dom_media_list_item :: JSRef MediaList -> Word -> IO JSString
ghcjs_dom_media_list_item = undefined
#endif
 
mediaListItem ::
              (IsMediaList self, FromJSString result) =>
                self -> Word -> IO result
mediaListItem self index
  = fromJSString <$>
      (ghcjs_dom_media_list_item (unMediaList (toMediaList self)) index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteMedium\"]($2)"
        ghcjs_dom_media_list_delete_medium ::
        JSRef MediaList -> JSString -> IO ()
#else 
ghcjs_dom_media_list_delete_medium ::
                                     JSRef MediaList -> JSString -> IO ()
ghcjs_dom_media_list_delete_medium = undefined
#endif
 
mediaListDeleteMedium ::
                      (IsMediaList self, ToJSString oldMedium) =>
                        self -> oldMedium -> IO ()
mediaListDeleteMedium self oldMedium
  = ghcjs_dom_media_list_delete_medium
      (unMediaList (toMediaList self))
      (toJSString oldMedium)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appendMedium\"]($2)"
        ghcjs_dom_media_list_append_medium ::
        JSRef MediaList -> JSString -> IO ()
#else 
ghcjs_dom_media_list_append_medium ::
                                     JSRef MediaList -> JSString -> IO ()
ghcjs_dom_media_list_append_medium = undefined
#endif
 
mediaListAppendMedium ::
                      (IsMediaList self, ToJSString newMedium) =>
                        self -> newMedium -> IO ()
mediaListAppendMedium self newMedium
  = ghcjs_dom_media_list_append_medium
      (unMediaList (toMediaList self))
      (toJSString newMedium)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mediaText\"] = $2;"
        ghcjs_dom_media_list_set_media_text ::
        JSRef MediaList -> JSString -> IO ()
#else 
ghcjs_dom_media_list_set_media_text ::
                                      JSRef MediaList -> JSString -> IO ()
ghcjs_dom_media_list_set_media_text = undefined
#endif
 
mediaListSetMediaText ::
                      (IsMediaList self, ToJSString val) => self -> val -> IO ()
mediaListSetMediaText self val
  = ghcjs_dom_media_list_set_media_text
      (unMediaList (toMediaList self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mediaText\"]"
        ghcjs_dom_media_list_get_media_text ::
        JSRef MediaList -> IO JSString
#else 
ghcjs_dom_media_list_get_media_text ::
                                      JSRef MediaList -> IO JSString
ghcjs_dom_media_list_get_media_text = undefined
#endif
 
mediaListGetMediaText ::
                      (IsMediaList self, FromJSString result) => self -> IO result
mediaListGetMediaText self
  = fromJSString <$>
      (ghcjs_dom_media_list_get_media_text
         (unMediaList (toMediaList self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_media_list_get_length :: JSRef MediaList -> IO Word
#else 
ghcjs_dom_media_list_get_length :: JSRef MediaList -> IO Word
ghcjs_dom_media_list_get_length = undefined
#endif
 
mediaListGetLength :: (IsMediaList self) => self -> IO Word
mediaListGetLength self
  = ghcjs_dom_media_list_get_length (unMediaList (toMediaList self))