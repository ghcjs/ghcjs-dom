{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CharacterData
       (webkit_dom_character_data_substring_data,
        characterDataSubstringData, webkit_dom_character_data_append_data,
        characterDataAppendData, webkit_dom_character_data_insert_data,
        characterDataInsertData, webkit_dom_character_data_delete_data,
        characterDataDeleteData, webkit_dom_character_data_replace_data,
        characterDataReplaceData, webkit_dom_character_data_set_data,
        characterDataSetData, webkit_dom_character_data_get_data,
        characterDataGetData, webkit_dom_character_data_get_length,
        characterDataGetLength)
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
        webkit_dom_character_data_substring_data ::
        JSRef CharacterData -> Word -> Word -> IO JSString
#else 
webkit_dom_character_data_substring_data ::
                                           JSRef CharacterData -> Word -> Word -> IO JSString
webkit_dom_character_data_substring_data = undefined
#endif
 
characterDataSubstringData ::
                           (CharacterDataClass self, FromJSString result) =>
                             self -> Word -> Word -> IO result
characterDataSubstringData self offset length
  = fromJSString <$>
      (webkit_dom_character_data_substring_data
         (unCharacterData (toCharacterData self))
         offset
         length)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appendData\"]($2)"
        webkit_dom_character_data_append_data ::
        JSRef CharacterData -> JSString -> IO ()
#else 
webkit_dom_character_data_append_data ::
                                        JSRef CharacterData -> JSString -> IO ()
webkit_dom_character_data_append_data = undefined
#endif
 
characterDataAppendData ::
                        (CharacterDataClass self, ToJSString data') =>
                          self -> data' -> IO ()
characterDataAppendData self data'
  = webkit_dom_character_data_append_data
      (unCharacterData (toCharacterData self))
      (toJSString data')


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"insertData\"]($2, $3)"
        webkit_dom_character_data_insert_data ::
        JSRef CharacterData -> Word -> JSString -> IO ()
#else 
webkit_dom_character_data_insert_data ::
                                        JSRef CharacterData -> Word -> JSString -> IO ()
webkit_dom_character_data_insert_data = undefined
#endif
 
characterDataInsertData ::
                        (CharacterDataClass self, ToJSString data') =>
                          self -> Word -> data' -> IO ()
characterDataInsertData self offset data'
  = webkit_dom_character_data_insert_data
      (unCharacterData (toCharacterData self))
      offset
      (toJSString data')


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteData\"]($2, $3)"
        webkit_dom_character_data_delete_data ::
        JSRef CharacterData -> Word -> Word -> IO ()
#else 
webkit_dom_character_data_delete_data ::
                                        JSRef CharacterData -> Word -> Word -> IO ()
webkit_dom_character_data_delete_data = undefined
#endif
 
characterDataDeleteData ::
                        (CharacterDataClass self) => self -> Word -> Word -> IO ()
characterDataDeleteData self offset length
  = webkit_dom_character_data_delete_data
      (unCharacterData (toCharacterData self))
      offset
      length


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"replaceData\"]($2, $3, $4)"
        webkit_dom_character_data_replace_data ::
        JSRef CharacterData -> Word -> Word -> JSString -> IO ()
#else 
webkit_dom_character_data_replace_data ::
                                         JSRef CharacterData -> Word -> Word -> JSString -> IO ()
webkit_dom_character_data_replace_data = undefined
#endif
 
characterDataReplaceData ::
                         (CharacterDataClass self, ToJSString data') =>
                           self -> Word -> Word -> data' -> IO ()
characterDataReplaceData self offset length data'
  = webkit_dom_character_data_replace_data
      (unCharacterData (toCharacterData self))
      offset
      length
      (toJSString data')


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        webkit_dom_character_data_set_data ::
        JSRef CharacterData -> JSString -> IO ()
#else 
webkit_dom_character_data_set_data ::
                                     JSRef CharacterData -> JSString -> IO ()
webkit_dom_character_data_set_data = undefined
#endif
 
characterDataSetData ::
                     (CharacterDataClass self, ToJSString val) => self -> val -> IO ()
characterDataSetData self val
  = webkit_dom_character_data_set_data
      (unCharacterData (toCharacterData self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"]"
        webkit_dom_character_data_get_data ::
        JSRef CharacterData -> IO JSString
#else 
webkit_dom_character_data_get_data ::
                                     JSRef CharacterData -> IO JSString
webkit_dom_character_data_get_data = undefined
#endif
 
characterDataGetData ::
                     (CharacterDataClass self, FromJSString result) => self -> IO result
characterDataGetData self
  = fromJSString <$>
      (webkit_dom_character_data_get_data
         (unCharacterData (toCharacterData self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_character_data_get_length ::
        JSRef CharacterData -> IO Word
#else 
webkit_dom_character_data_get_length ::
                                       JSRef CharacterData -> IO Word
webkit_dom_character_data_get_length = undefined
#endif
 
characterDataGetLength ::
                       (CharacterDataClass self) => self -> IO Word
characterDataGetLength self
  = webkit_dom_character_data_get_length
      (unCharacterData (toCharacterData self))