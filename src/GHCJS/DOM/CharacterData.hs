{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CharacterData
       (ghcjs_dom_character_data_substring_data,
        characterDataSubstringData, ghcjs_dom_character_data_append_data,
        characterDataAppendData, ghcjs_dom_character_data_insert_data,
        characterDataInsertData, ghcjs_dom_character_data_delete_data,
        characterDataDeleteData, ghcjs_dom_character_data_replace_data,
        characterDataReplaceData, ghcjs_dom_character_data_set_data,
        characterDataSetData, ghcjs_dom_character_data_get_data,
        characterDataGetData, ghcjs_dom_character_data_get_length,
        characterDataGetLength, CharacterData, IsCharacterData,
        castToCharacterData, gTypeCharacterData, toCharacterData)
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
foreign import javascript unsafe "$1[\"substringData\"]($2, $3)"
        ghcjs_dom_character_data_substring_data ::
        JSRef CharacterData -> Word -> Word -> IO JSString
#else 
ghcjs_dom_character_data_substring_data ::
                                          JSRef CharacterData -> Word -> Word -> IO JSString
ghcjs_dom_character_data_substring_data = undefined
#endif
 
characterDataSubstringData ::
                           (IsCharacterData self, FromJSString result) =>
                             self -> Word -> Word -> IO result
characterDataSubstringData self offset length
  = fromJSString <$>
      (ghcjs_dom_character_data_substring_data
         (unCharacterData (toCharacterData self))
         offset
         length)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appendData\"]($2)"
        ghcjs_dom_character_data_append_data ::
        JSRef CharacterData -> JSString -> IO ()
#else 
ghcjs_dom_character_data_append_data ::
                                       JSRef CharacterData -> JSString -> IO ()
ghcjs_dom_character_data_append_data = undefined
#endif
 
characterDataAppendData ::
                        (IsCharacterData self, ToJSString data') => self -> data' -> IO ()
characterDataAppendData self data'
  = ghcjs_dom_character_data_append_data
      (unCharacterData (toCharacterData self))
      (toJSString data')


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"insertData\"]($2, $3)"
        ghcjs_dom_character_data_insert_data ::
        JSRef CharacterData -> Word -> JSString -> IO ()
#else 
ghcjs_dom_character_data_insert_data ::
                                       JSRef CharacterData -> Word -> JSString -> IO ()
ghcjs_dom_character_data_insert_data = undefined
#endif
 
characterDataInsertData ::
                        (IsCharacterData self, ToJSString data') =>
                          self -> Word -> data' -> IO ()
characterDataInsertData self offset data'
  = ghcjs_dom_character_data_insert_data
      (unCharacterData (toCharacterData self))
      offset
      (toJSString data')


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteData\"]($2, $3)"
        ghcjs_dom_character_data_delete_data ::
        JSRef CharacterData -> Word -> Word -> IO ()
#else 
ghcjs_dom_character_data_delete_data ::
                                       JSRef CharacterData -> Word -> Word -> IO ()
ghcjs_dom_character_data_delete_data = undefined
#endif
 
characterDataDeleteData ::
                        (IsCharacterData self) => self -> Word -> Word -> IO ()
characterDataDeleteData self offset length
  = ghcjs_dom_character_data_delete_data
      (unCharacterData (toCharacterData self))
      offset
      length


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"replaceData\"]($2, $3, $4)"
        ghcjs_dom_character_data_replace_data ::
        JSRef CharacterData -> Word -> Word -> JSString -> IO ()
#else 
ghcjs_dom_character_data_replace_data ::
                                        JSRef CharacterData -> Word -> Word -> JSString -> IO ()
ghcjs_dom_character_data_replace_data = undefined
#endif
 
characterDataReplaceData ::
                         (IsCharacterData self, ToJSString data') =>
                           self -> Word -> Word -> data' -> IO ()
characterDataReplaceData self offset length data'
  = ghcjs_dom_character_data_replace_data
      (unCharacterData (toCharacterData self))
      offset
      length
      (toJSString data')


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        ghcjs_dom_character_data_set_data ::
        JSRef CharacterData -> JSString -> IO ()
#else 
ghcjs_dom_character_data_set_data ::
                                    JSRef CharacterData -> JSString -> IO ()
ghcjs_dom_character_data_set_data = undefined
#endif
 
characterDataSetData ::
                     (IsCharacterData self, ToJSString val) => self -> val -> IO ()
characterDataSetData self val
  = ghcjs_dom_character_data_set_data
      (unCharacterData (toCharacterData self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_character_data_get_data ::
        JSRef CharacterData -> IO JSString
#else 
ghcjs_dom_character_data_get_data ::
                                    JSRef CharacterData -> IO JSString
ghcjs_dom_character_data_get_data = undefined
#endif
 
characterDataGetData ::
                     (IsCharacterData self, FromJSString result) => self -> IO result
characterDataGetData self
  = fromJSString <$>
      (ghcjs_dom_character_data_get_data
         (unCharacterData (toCharacterData self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_character_data_get_length ::
        JSRef CharacterData -> IO Word
#else 
ghcjs_dom_character_data_get_length ::
                                      JSRef CharacterData -> IO Word
ghcjs_dom_character_data_get_length = undefined
#endif
 
characterDataGetLength :: (IsCharacterData self) => self -> IO Word
characterDataGetLength self
  = ghcjs_dom_character_data_get_length
      (unCharacterData (toCharacterData self))
#else
module GHCJS.DOM.CharacterData (
  module Graphics.UI.Gtk.WebKit.DOM.CharacterData
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CharacterData
#endif
