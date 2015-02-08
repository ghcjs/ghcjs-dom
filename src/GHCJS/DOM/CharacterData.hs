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
import Control.Monad.IO.Class (MonadIO(..))
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
                           (MonadIO m, IsCharacterData self, FromJSString result) =>
                             self -> Word -> Word -> m result
characterDataSubstringData self offset length
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_character_data_substring_data
            (unCharacterData (toCharacterData self))
            offset
            length))
 
foreign import javascript unsafe "$1[\"appendData\"]($2)"
        ghcjs_dom_character_data_append_data ::
        JSRef CharacterData -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.appendData Mozilla CharacterData.appendData documentation> 
characterDataAppendData ::
                        (MonadIO m, IsCharacterData self, ToJSString data') =>
                          self -> data' -> m ()
characterDataAppendData self data'
  = liftIO
      (ghcjs_dom_character_data_append_data
         (unCharacterData (toCharacterData self))
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"insertData\"]($2, $3)"
        ghcjs_dom_character_data_insert_data ::
        JSRef CharacterData -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.insertData Mozilla CharacterData.insertData documentation> 
characterDataInsertData ::
                        (MonadIO m, IsCharacterData self, ToJSString data') =>
                          self -> Word -> data' -> m ()
characterDataInsertData self offset data'
  = liftIO
      (ghcjs_dom_character_data_insert_data
         (unCharacterData (toCharacterData self))
         offset
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"deleteData\"]($2, $3)"
        ghcjs_dom_character_data_delete_data ::
        JSRef CharacterData -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.deleteData Mozilla CharacterData.deleteData documentation> 
characterDataDeleteData ::
                        (MonadIO m, IsCharacterData self) => self -> Word -> Word -> m ()
characterDataDeleteData self offset length
  = liftIO
      (ghcjs_dom_character_data_delete_data
         (unCharacterData (toCharacterData self))
         offset
         length)
 
foreign import javascript unsafe "$1[\"replaceData\"]($2, $3, $4)"
        ghcjs_dom_character_data_replace_data ::
        JSRef CharacterData -> Word -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.replaceData Mozilla CharacterData.replaceData documentation> 
characterDataReplaceData ::
                         (MonadIO m, IsCharacterData self, ToJSString data') =>
                           self -> Word -> Word -> data' -> m ()
characterDataReplaceData self offset length data'
  = liftIO
      (ghcjs_dom_character_data_replace_data
         (unCharacterData (toCharacterData self))
         offset
         length
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        ghcjs_dom_character_data_set_data ::
        JSRef CharacterData -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.data Mozilla CharacterData.data documentation> 
characterDataSetData ::
                     (MonadIO m, IsCharacterData self, ToJSString val) =>
                       self -> val -> m ()
characterDataSetData self val
  = liftIO
      (ghcjs_dom_character_data_set_data
         (unCharacterData (toCharacterData self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_character_data_get_data ::
        JSRef CharacterData -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.data Mozilla CharacterData.data documentation> 
characterDataGetData ::
                     (MonadIO m, IsCharacterData self, FromJSString result) =>
                       self -> m result
characterDataGetData self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_character_data_get_data
            (unCharacterData (toCharacterData self))))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_character_data_get_length ::
        JSRef CharacterData -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.length Mozilla CharacterData.length documentation> 
characterDataGetLength ::
                       (MonadIO m, IsCharacterData self) => self -> m Word
characterDataGetLength self
  = liftIO
      (ghcjs_dom_character_data_get_length
         (unCharacterData (toCharacterData self)))
#else
module GHCJS.DOM.CharacterData (
  module Graphics.UI.Gtk.WebKit.DOM.CharacterData
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CharacterData
#endif
