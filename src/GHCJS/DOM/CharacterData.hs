{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
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

 
foreign import javascript unsafe "$1[\"substringData\"]($2, $3)"
        ghcjs_dom_character_data_substring_data ::
        JSRef CharacterData -> Word -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.substringData Mozilla CharacterData.substringData documentation> 
characterDataSubstringData ::
                           (IsCharacterData self, FromJSString result) =>
                             self -> Word -> Word -> IO result
characterDataSubstringData self offset length
  = fromJSString <$>
      (ghcjs_dom_character_data_substring_data
         (unCharacterData (toCharacterData self))
         offset
         length)
 
foreign import javascript unsafe "$1[\"appendData\"]($2)"
        ghcjs_dom_character_data_append_data ::
        JSRef CharacterData -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.appendData Mozilla CharacterData.appendData documentation> 
characterDataAppendData ::
                        (IsCharacterData self, ToJSString data') => self -> data' -> IO ()
characterDataAppendData self data'
  = ghcjs_dom_character_data_append_data
      (unCharacterData (toCharacterData self))
      (toJSString data')
 
foreign import javascript unsafe "$1[\"insertData\"]($2, $3)"
        ghcjs_dom_character_data_insert_data ::
        JSRef CharacterData -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.insertData Mozilla CharacterData.insertData documentation> 
characterDataInsertData ::
                        (IsCharacterData self, ToJSString data') =>
                          self -> Word -> data' -> IO ()
characterDataInsertData self offset data'
  = ghcjs_dom_character_data_insert_data
      (unCharacterData (toCharacterData self))
      offset
      (toJSString data')
 
foreign import javascript unsafe "$1[\"deleteData\"]($2, $3)"
        ghcjs_dom_character_data_delete_data ::
        JSRef CharacterData -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.deleteData Mozilla CharacterData.deleteData documentation> 
characterDataDeleteData ::
                        (IsCharacterData self) => self -> Word -> Word -> IO ()
characterDataDeleteData self offset length
  = ghcjs_dom_character_data_delete_data
      (unCharacterData (toCharacterData self))
      offset
      length
 
foreign import javascript unsafe "$1[\"replaceData\"]($2, $3, $4)"
        ghcjs_dom_character_data_replace_data ::
        JSRef CharacterData -> Word -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.replaceData Mozilla CharacterData.replaceData documentation> 
characterDataReplaceData ::
                         (IsCharacterData self, ToJSString data') =>
                           self -> Word -> Word -> data' -> IO ()
characterDataReplaceData self offset length data'
  = ghcjs_dom_character_data_replace_data
      (unCharacterData (toCharacterData self))
      offset
      length
      (toJSString data')
 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        ghcjs_dom_character_data_set_data ::
        JSRef CharacterData -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.data Mozilla CharacterData.data documentation> 
characterDataSetData ::
                     (IsCharacterData self, ToJSString val) => self -> val -> IO ()
characterDataSetData self val
  = ghcjs_dom_character_data_set_data
      (unCharacterData (toCharacterData self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_character_data_get_data ::
        JSRef CharacterData -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.data Mozilla CharacterData.data documentation> 
characterDataGetData ::
                     (IsCharacterData self, FromJSString result) => self -> IO result
characterDataGetData self
  = fromJSString <$>
      (ghcjs_dom_character_data_get_data
         (unCharacterData (toCharacterData self)))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_character_data_get_length ::
        JSRef CharacterData -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.length Mozilla CharacterData.length documentation> 
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
