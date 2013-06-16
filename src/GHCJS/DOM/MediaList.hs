{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.MediaList
       (webkit_dom_media_list_item, mediaListItem,
        webkit_dom_media_list_delete_medium, mediaListDeleteMedium,
        webkit_dom_media_list_append_medium, mediaListAppendMedium,
        webkit_dom_media_list_set_media_text, mediaListSetMediaText,
        webkit_dom_media_list_get_media_text, mediaListGetMediaText,
        webkit_dom_media_list_get_length, mediaListGetLength)
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
        webkit_dom_media_list_item ::
        JSRef MediaList -> Word -> IO JSString
#else 
webkit_dom_media_list_item ::
                             JSRef MediaList -> Word -> IO JSString
webkit_dom_media_list_item = undefined
#endif
 
mediaListItem ::
              (MediaListClass self, FromJSString result) =>
                self -> Word -> IO result
mediaListItem self index
  = fromJSString <$>
      (webkit_dom_media_list_item (unMediaList (toMediaList self)) index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteMedium\"]($2)"
        webkit_dom_media_list_delete_medium ::
        JSRef MediaList -> JSString -> IO ()
#else 
webkit_dom_media_list_delete_medium ::
                                      JSRef MediaList -> JSString -> IO ()
webkit_dom_media_list_delete_medium = undefined
#endif
 
mediaListDeleteMedium ::
                      (MediaListClass self, ToJSString oldMedium) =>
                        self -> oldMedium -> IO ()
mediaListDeleteMedium self oldMedium
  = webkit_dom_media_list_delete_medium
      (unMediaList (toMediaList self))
      (toJSString oldMedium)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appendMedium\"]($2)"
        webkit_dom_media_list_append_medium ::
        JSRef MediaList -> JSString -> IO ()
#else 
webkit_dom_media_list_append_medium ::
                                      JSRef MediaList -> JSString -> IO ()
webkit_dom_media_list_append_medium = undefined
#endif
 
mediaListAppendMedium ::
                      (MediaListClass self, ToJSString newMedium) =>
                        self -> newMedium -> IO ()
mediaListAppendMedium self newMedium
  = webkit_dom_media_list_append_medium
      (unMediaList (toMediaList self))
      (toJSString newMedium)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mediaText\"] = $2;"
        webkit_dom_media_list_set_media_text ::
        JSRef MediaList -> JSString -> IO ()
#else 
webkit_dom_media_list_set_media_text ::
                                       JSRef MediaList -> JSString -> IO ()
webkit_dom_media_list_set_media_text = undefined
#endif
 
mediaListSetMediaText ::
                      (MediaListClass self, ToJSString val) => self -> val -> IO ()
mediaListSetMediaText self val
  = webkit_dom_media_list_set_media_text
      (unMediaList (toMediaList self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mediaText\"]"
        webkit_dom_media_list_get_media_text ::
        JSRef MediaList -> IO JSString
#else 
webkit_dom_media_list_get_media_text ::
                                       JSRef MediaList -> IO JSString
webkit_dom_media_list_get_media_text = undefined
#endif
 
mediaListGetMediaText ::
                      (MediaListClass self, FromJSString result) => self -> IO result
mediaListGetMediaText self
  = fromJSString <$>
      (webkit_dom_media_list_get_media_text
         (unMediaList (toMediaList self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_media_list_get_length :: JSRef MediaList -> IO Word
#else 
webkit_dom_media_list_get_length :: JSRef MediaList -> IO Word
webkit_dom_media_list_get_length = undefined
#endif
 
mediaListGetLength :: (MediaListClass self) => self -> IO Word
mediaListGetLength self
  = webkit_dom_media_list_get_length (unMediaList (toMediaList self))