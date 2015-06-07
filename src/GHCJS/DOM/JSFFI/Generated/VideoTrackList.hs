{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.VideoTrackList
       (js_item, item, js_getTrackById, getTrackById, js_getLength,
        getLength, js_getSelectedIndex, getSelectedIndex, change, addTrack,
        removeTrack, VideoTrackList, castToVideoTrackList,
        gTypeVideoTrackList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef VideoTrackList -> Word -> IO (JSRef VideoTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
item ::
     (MonadIO m) => VideoTrackList -> Word -> m (Maybe VideoTrack)
item self index
  = liftIO ((js_item (unVideoTrackList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        js_getTrackById ::
        JSRef VideoTrackList -> JSString -> IO (JSRef VideoTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackById ::
             (MonadIO m, ToJSString id) =>
               VideoTrackList -> id -> m (Maybe VideoTrack)
getTrackById self id
  = liftIO
      ((js_getTrackById (unVideoTrackList self) (toJSString id)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef VideoTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.length Mozilla VideoTrackList.length documentation> 
getLength :: (MonadIO m) => VideoTrackList -> m Word
getLength self = liftIO (js_getLength (unVideoTrackList self))
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        js_getSelectedIndex :: JSRef VideoTrackList -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.selectedIndex Mozilla VideoTrackList.selectedIndex documentation> 
getSelectedIndex :: (MonadIO m) => VideoTrackList -> m Int
getSelectedIndex self
  = liftIO (js_getSelectedIndex (unVideoTrackList self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onchange Mozilla VideoTrackList.onchange documentation> 
change :: EventName VideoTrackList Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onaddtrack Mozilla VideoTrackList.onaddtrack documentation> 
addTrack :: EventName VideoTrackList Event
addTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onremovetrack Mozilla VideoTrackList.onremovetrack documentation> 
removeTrack :: EventName VideoTrackList Event
removeTrack = unsafeEventName (toJSString "removetrack")