{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.VideoTrack
       (js_getId, getId, js_setKind, setKind, js_getKind, getKind,
        js_getLabel, getLabel, js_setLanguage, setLanguage, js_getLanguage,
        getLanguage, js_setSelected, setSelected, js_getSelected,
        getSelected, js_getSourceBuffer, getSourceBuffer, VideoTrack,
        castToVideoTrack, gTypeVideoTrack)
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
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        VideoTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.id Mozilla VideoTrack.id documentation> 
getId :: (MonadIO m, FromJSString result) => VideoTrack -> m result
getId self = liftIO (fromJSString <$> (js_getId (self)))
 
foreign import javascript unsafe "$1[\"kind\"] = $2;" js_setKind ::
        VideoTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.kind Mozilla VideoTrack.kind documentation> 
setKind :: (MonadIO m, ToJSString val) => VideoTrack -> val -> m ()
setKind self val = liftIO (js_setKind (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        VideoTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.kind Mozilla VideoTrack.kind documentation> 
getKind ::
        (MonadIO m, FromJSString result) => VideoTrack -> m result
getKind self = liftIO (fromJSString <$> (js_getKind (self)))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        VideoTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.label Mozilla VideoTrack.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => VideoTrack -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel (self)))
 
foreign import javascript unsafe "$1[\"language\"] = $2;"
        js_setLanguage :: VideoTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.language Mozilla VideoTrack.language documentation> 
setLanguage ::
            (MonadIO m, ToJSString val) => VideoTrack -> val -> m ()
setLanguage self val
  = liftIO (js_setLanguage (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"language\"]" js_getLanguage
        :: VideoTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.language Mozilla VideoTrack.language documentation> 
getLanguage ::
            (MonadIO m, FromJSString result) => VideoTrack -> m result
getLanguage self
  = liftIO (fromJSString <$> (js_getLanguage (self)))
 
foreign import javascript unsafe "$1[\"selected\"] = $2;"
        js_setSelected :: VideoTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.selected Mozilla VideoTrack.selected documentation> 
setSelected :: (MonadIO m) => VideoTrack -> Bool -> m ()
setSelected self val = liftIO (js_setSelected (self) val)
 
foreign import javascript unsafe "($1[\"selected\"] ? 1 : 0)"
        js_getSelected :: VideoTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.selected Mozilla VideoTrack.selected documentation> 
getSelected :: (MonadIO m) => VideoTrack -> m Bool
getSelected self = liftIO (js_getSelected (self))
 
foreign import javascript unsafe "$1[\"sourceBuffer\"]"
        js_getSourceBuffer :: VideoTrack -> IO (Nullable SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.sourceBuffer Mozilla VideoTrack.sourceBuffer documentation> 
getSourceBuffer ::
                (MonadIO m) => VideoTrack -> m (Maybe SourceBuffer)
getSourceBuffer self
  = liftIO (nullableToMaybe <$> (js_getSourceBuffer (self)))