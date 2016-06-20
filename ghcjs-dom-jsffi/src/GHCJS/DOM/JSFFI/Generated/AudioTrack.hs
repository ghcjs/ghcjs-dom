{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioTrack
       (js_getId, getId, js_setKind, setKind, js_getKind, getKind,
        js_getLabel, getLabel, js_setLanguage, setLanguage, js_getLanguage,
        getLanguage, js_setEnabled, setEnabled, js_getEnabled, getEnabled,
        js_getSourceBuffer, getSourceBuffer, AudioTrack, castToAudioTrack,
        gTypeAudioTrack)
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
        AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.id Mozilla AudioTrack.id documentation> 
getId :: (MonadIO m, FromJSString result) => AudioTrack -> m result
getId self = liftIO (fromJSString <$> (js_getId (self)))
 
foreign import javascript unsafe "$1[\"kind\"] = $2;" js_setKind ::
        AudioTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.kind Mozilla AudioTrack.kind documentation> 
setKind :: (MonadIO m, ToJSString val) => AudioTrack -> val -> m ()
setKind self val = liftIO (js_setKind (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.kind Mozilla AudioTrack.kind documentation> 
getKind ::
        (MonadIO m, FromJSString result) => AudioTrack -> m result
getKind self = liftIO (fromJSString <$> (js_getKind (self)))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.label Mozilla AudioTrack.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => AudioTrack -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel (self)))
 
foreign import javascript unsafe "$1[\"language\"] = $2;"
        js_setLanguage :: AudioTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.language Mozilla AudioTrack.language documentation> 
setLanguage ::
            (MonadIO m, ToJSString val) => AudioTrack -> val -> m ()
setLanguage self val
  = liftIO (js_setLanguage (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"language\"]" js_getLanguage
        :: AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.language Mozilla AudioTrack.language documentation> 
getLanguage ::
            (MonadIO m, FromJSString result) => AudioTrack -> m result
getLanguage self
  = liftIO (fromJSString <$> (js_getLanguage (self)))
 
foreign import javascript unsafe "$1[\"enabled\"] = $2;"
        js_setEnabled :: AudioTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.enabled Mozilla AudioTrack.enabled documentation> 
setEnabled :: (MonadIO m) => AudioTrack -> Bool -> m ()
setEnabled self val = liftIO (js_setEnabled (self) val)
 
foreign import javascript unsafe "($1[\"enabled\"] ? 1 : 0)"
        js_getEnabled :: AudioTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.enabled Mozilla AudioTrack.enabled documentation> 
getEnabled :: (MonadIO m) => AudioTrack -> m Bool
getEnabled self = liftIO (js_getEnabled (self))
 
foreign import javascript unsafe "$1[\"sourceBuffer\"]"
        js_getSourceBuffer :: AudioTrack -> IO (Nullable SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.sourceBuffer Mozilla AudioTrack.sourceBuffer documentation> 
getSourceBuffer ::
                (MonadIO m) => AudioTrack -> m (Maybe SourceBuffer)
getSourceBuffer self
  = liftIO (nullableToMaybe <$> (js_getSourceBuffer (self)))