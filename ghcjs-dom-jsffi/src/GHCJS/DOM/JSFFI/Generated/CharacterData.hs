{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CharacterData
       (js_substringData, substringData, js_appendData, appendData,
        js_insertData, insertData, js_deleteData, deleteData,
        js_replaceData, replaceData, js_setData, setData, js_getData,
        getData, js_getLength, getLength, CharacterData,
        castToCharacterData, gTypeCharacterData, IsCharacterData,
        toCharacterData)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"substringData\"]($2, $3)"
        js_substringData ::
        CharacterData -> Word -> Word -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.substringData Mozilla CharacterData.substringData documentation> 
substringData ::
              (MonadIO m, IsCharacterData self, FromJSString result) =>
                self -> Word -> Word -> m (Maybe result)
substringData self offset length
  = liftIO
      (fromMaybeJSString <$>
         (js_substringData (toCharacterData self) offset length))
 
foreign import javascript unsafe "$1[\"appendData\"]($2)"
        js_appendData :: CharacterData -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.appendData Mozilla CharacterData.appendData documentation> 
appendData ::
           (MonadIO m, IsCharacterData self, ToJSString data') =>
             self -> data' -> m ()
appendData self data'
  = liftIO (js_appendData (toCharacterData self) (toJSString data'))
 
foreign import javascript unsafe "$1[\"insertData\"]($2, $3)"
        js_insertData :: CharacterData -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.insertData Mozilla CharacterData.insertData documentation> 
insertData ::
           (MonadIO m, IsCharacterData self, ToJSString data') =>
             self -> Word -> data' -> m ()
insertData self offset data'
  = liftIO
      (js_insertData (toCharacterData self) offset (toJSString data'))
 
foreign import javascript unsafe "$1[\"deleteData\"]($2, $3)"
        js_deleteData :: CharacterData -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.deleteData Mozilla CharacterData.deleteData documentation> 
deleteData ::
           (MonadIO m, IsCharacterData self) => self -> Word -> Word -> m ()
deleteData self offset length
  = liftIO (js_deleteData (toCharacterData self) offset length)
 
foreign import javascript unsafe "$1[\"replaceData\"]($2, $3, $4)"
        js_replaceData ::
        CharacterData -> Word -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.replaceData Mozilla CharacterData.replaceData documentation> 
replaceData ::
            (MonadIO m, IsCharacterData self, ToJSString data') =>
              self -> Word -> Word -> data' -> m ()
replaceData self offset length data'
  = liftIO
      (js_replaceData (toCharacterData self) offset length
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"data\"] = $2;" js_setData ::
        CharacterData -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.data Mozilla CharacterData.data documentation> 
setData ::
        (MonadIO m, IsCharacterData self, ToJSString val) =>
          self -> Maybe val -> m ()
setData self val
  = liftIO (js_setData (toCharacterData self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        CharacterData -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.data Mozilla CharacterData.data documentation> 
getData ::
        (MonadIO m, IsCharacterData self, FromJSString result) =>
          self -> m (Maybe result)
getData self
  = liftIO
      (fromMaybeJSString <$> (js_getData (toCharacterData self)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        CharacterData -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.length Mozilla CharacterData.length documentation> 
getLength :: (MonadIO m, IsCharacterData self) => self -> m Word
getLength self = liftIO (js_getLength (toCharacterData self))