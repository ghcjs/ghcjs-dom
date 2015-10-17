{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaList
       (js_item, item, js_deleteMedium, deleteMedium, js_appendMedium,
        appendMedium, js_setMediaText, setMediaText, js_getMediaText,
        getMediaText, js_getLength, getLength, MediaList, castToMediaList,
        gTypeMediaList)
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
        MediaList -> Word -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.item Mozilla MediaList.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       MediaList -> Word -> m (Maybe result)
item self index
  = liftIO (fromMaybeJSString <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"deleteMedium\"]($2)"
        js_deleteMedium :: MediaList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.deleteMedium Mozilla MediaList.deleteMedium documentation> 
deleteMedium ::
             (MonadIO m, ToJSString oldMedium) => MediaList -> oldMedium -> m ()
deleteMedium self oldMedium
  = liftIO (js_deleteMedium (self) (toJSString oldMedium))
 
foreign import javascript unsafe "$1[\"appendMedium\"]($2)"
        js_appendMedium :: MediaList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.appendMedium Mozilla MediaList.appendMedium documentation> 
appendMedium ::
             (MonadIO m, ToJSString newMedium) => MediaList -> newMedium -> m ()
appendMedium self newMedium
  = liftIO (js_appendMedium (self) (toJSString newMedium))
 
foreign import javascript unsafe "$1[\"mediaText\"] = $2;"
        js_setMediaText :: MediaList -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
setMediaText ::
             (MonadIO m, ToJSString val) => MediaList -> Maybe val -> m ()
setMediaText self val
  = liftIO (js_setMediaText (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"mediaText\"]"
        js_getMediaText :: MediaList -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.mediaText Mozilla MediaList.mediaText documentation> 
getMediaText ::
             (MonadIO m, FromJSString result) => MediaList -> m (Maybe result)
getMediaText self
  = liftIO (fromMaybeJSString <$> (js_getMediaText (self)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        MediaList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaList.length Mozilla MediaList.length documentation> 
getLength :: (MonadIO m) => MediaList -> m Word
getLength self = liftIO (js_getLength (self))