{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioTrack
       (js_getId, getId, js_setKind, setKind, js_getKind, getKind,
        js_getLabel, getLabel, js_setLanguage, setLanguage, js_getLanguage,
        getLanguage, js_setEnabled, setEnabled, js_getEnabled, getEnabled,
        js_getSourceBuffer, getSourceBuffer, AudioTrack, castToAudioTrack,
        gTypeAudioTrack)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.id Mozilla AudioTrack.id documentation> 
getId :: (MonadIO m, FromJSString result) => AudioTrack -> m result
getId self
  = liftIO (fromJSString <$> (js_getId (unAudioTrack self)))
 
foreign import javascript unsafe "$1[\"kind\"] = $2;" js_setKind ::
        JSRef AudioTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.kind Mozilla AudioTrack.kind documentation> 
setKind :: (MonadIO m, ToJSString val) => AudioTrack -> val -> m ()
setKind self val
  = liftIO (js_setKind (unAudioTrack self) (toJSString val))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.kind Mozilla AudioTrack.kind documentation> 
getKind ::
        (MonadIO m, FromJSString result) => AudioTrack -> m result
getKind self
  = liftIO (fromJSString <$> (js_getKind (unAudioTrack self)))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.label Mozilla AudioTrack.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => AudioTrack -> m result
getLabel self
  = liftIO (fromJSString <$> (js_getLabel (unAudioTrack self)))
 
foreign import javascript unsafe "$1[\"language\"] = $2;"
        js_setLanguage :: JSRef AudioTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.language Mozilla AudioTrack.language documentation> 
setLanguage ::
            (MonadIO m, ToJSString val) => AudioTrack -> val -> m ()
setLanguage self val
  = liftIO (js_setLanguage (unAudioTrack self) (toJSString val))
 
foreign import javascript unsafe "$1[\"language\"]" js_getLanguage
        :: JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.language Mozilla AudioTrack.language documentation> 
getLanguage ::
            (MonadIO m, FromJSString result) => AudioTrack -> m result
getLanguage self
  = liftIO (fromJSString <$> (js_getLanguage (unAudioTrack self)))
 
foreign import javascript unsafe "$1[\"enabled\"] = $2;"
        js_setEnabled :: JSRef AudioTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.enabled Mozilla AudioTrack.enabled documentation> 
setEnabled :: (MonadIO m) => AudioTrack -> Bool -> m ()
setEnabled self val
  = liftIO (js_setEnabled (unAudioTrack self) val)
 
foreign import javascript unsafe "($1[\"enabled\"] ? 1 : 0)"
        js_getEnabled :: JSRef AudioTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.enabled Mozilla AudioTrack.enabled documentation> 
getEnabled :: (MonadIO m) => AudioTrack -> m Bool
getEnabled self = liftIO (js_getEnabled (unAudioTrack self))
 
foreign import javascript unsafe "$1[\"sourceBuffer\"]"
        js_getSourceBuffer :: JSRef AudioTrack -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.sourceBuffer Mozilla AudioTrack.sourceBuffer documentation> 
getSourceBuffer ::
                (MonadIO m) => AudioTrack -> m (Maybe SourceBuffer)
getSourceBuffer self
  = liftIO ((js_getSourceBuffer (unAudioTrack self)) >>= fromJSRef)
#else
module GHCJS.DOM.AudioTrack (
  ) where
#endif
