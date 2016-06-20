{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioTrackList
       (js_item, item, js_getTrackById, getTrackById, js_getLength,
        getLength, change, addTrack, removeTrack, AudioTrackList,
        castToAudioTrackList, gTypeAudioTrackList)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        AudioTrackList -> Word -> IO (Nullable AudioTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.item Mozilla AudioTrackList.item documentation> 
item ::
     (MonadIO m) => AudioTrackList -> Word -> m (Maybe AudioTrack)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        js_getTrackById ::
        AudioTrackList -> JSString -> IO (Nullable AudioTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.getTrackById Mozilla AudioTrackList.getTrackById documentation> 
getTrackById ::
             (MonadIO m, ToJSString id) =>
               AudioTrackList -> id -> m (Maybe AudioTrack)
getTrackById self id
  = liftIO
      (nullableToMaybe <$> (js_getTrackById (self) (toJSString id)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        AudioTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.length Mozilla AudioTrackList.length documentation> 
getLength :: (MonadIO m) => AudioTrackList -> m Word
getLength self = liftIO (js_getLength (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onchange Mozilla AudioTrackList.onchange documentation> 
change :: EventName AudioTrackList Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onaddtrack Mozilla AudioTrackList.onaddtrack documentation> 
addTrack :: EventName AudioTrackList Event
addTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList.onremovetrack Mozilla AudioTrackList.onremovetrack documentation> 
removeTrack :: EventName AudioTrackList Event
removeTrack = unsafeEventName (toJSString "removetrack")