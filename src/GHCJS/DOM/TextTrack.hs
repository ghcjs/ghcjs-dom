{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextTrack
       (js_addCue, addCue, js_removeCue, removeCue, js_addRegion,
        addRegion, js_removeRegion, removeRegion, js_getId, getId,
        js_setKind, setKind, js_getKind, getKind, js_getLabel, getLabel,
        js_setLanguage, setLanguage, js_getLanguage, getLanguage,
        js_getInBandMetadataTrackDispatchType,
        getInBandMetadataTrackDispatchType, js_setMode, setMode,
        js_getMode, getMode, js_getCues, getCues, js_getActiveCues,
        getActiveCues, cueChange, js_getRegions, getRegions,
        js_getSourceBuffer, getSourceBuffer, TextTrack, castToTextTrack,
        gTypeTextTrack)
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

 
foreign import javascript unsafe "$1[\"addCue\"]($2)" js_addCue ::
        JSRef TextTrack -> JSRef TextTrackCue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.addCue Mozilla TextTrack.addCue documentation> 
addCue ::
       (MonadIO m, IsTextTrackCue cue) => TextTrack -> Maybe cue -> m ()
addCue self cue
  = liftIO
      (js_addCue (unTextTrack self)
         (maybe jsNull (unTextTrackCue . toTextTrackCue) cue))
 
foreign import javascript unsafe "$1[\"removeCue\"]($2)"
        js_removeCue :: JSRef TextTrack -> JSRef TextTrackCue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.removeCue Mozilla TextTrack.removeCue documentation> 
removeCue ::
          (MonadIO m, IsTextTrackCue cue) => TextTrack -> Maybe cue -> m ()
removeCue self cue
  = liftIO
      (js_removeCue (unTextTrack self)
         (maybe jsNull (unTextTrackCue . toTextTrackCue) cue))
 
foreign import javascript unsafe "$1[\"addRegion\"]($2)"
        js_addRegion :: JSRef TextTrack -> JSRef VTTRegion -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.addRegion Mozilla TextTrack.addRegion documentation> 
addRegion :: (MonadIO m) => TextTrack -> Maybe VTTRegion -> m ()
addRegion self region
  = liftIO
      (js_addRegion (unTextTrack self) (maybe jsNull unVTTRegion region))
 
foreign import javascript unsafe "$1[\"removeRegion\"]($2)"
        js_removeRegion :: JSRef TextTrack -> JSRef VTTRegion -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.removeRegion Mozilla TextTrack.removeRegion documentation> 
removeRegion :: (MonadIO m) => TextTrack -> Maybe VTTRegion -> m ()
removeRegion self region
  = liftIO
      (js_removeRegion (unTextTrack self)
         (maybe jsNull unVTTRegion region))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.id Mozilla TextTrack.id documentation> 
getId :: (MonadIO m, FromJSString result) => TextTrack -> m result
getId self
  = liftIO (fromJSString <$> (js_getId (unTextTrack self)))
 
foreign import javascript unsafe "$1[\"kind\"] = $2;" js_setKind ::
        JSRef TextTrack -> JSRef TextTrackKind -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.kind Mozilla TextTrack.kind documentation> 
setKind :: (MonadIO m) => TextTrack -> TextTrackKind -> m ()
setKind self val
  = liftIO (js_setKind (unTextTrack self) (ptoJSRef val))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        JSRef TextTrack -> IO (JSRef TextTrackKind)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.kind Mozilla TextTrack.kind documentation> 
getKind :: (MonadIO m) => TextTrack -> m TextTrackKind
getKind self
  = liftIO ((js_getKind (unTextTrack self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.label Mozilla TextTrack.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => TextTrack -> m result
getLabel self
  = liftIO (fromJSString <$> (js_getLabel (unTextTrack self)))
 
foreign import javascript unsafe "$1[\"language\"] = $2;"
        js_setLanguage :: JSRef TextTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.language Mozilla TextTrack.language documentation> 
setLanguage ::
            (MonadIO m, ToJSString val) => TextTrack -> val -> m ()
setLanguage self val
  = liftIO (js_setLanguage (unTextTrack self) (toJSString val))
 
foreign import javascript unsafe "$1[\"language\"]" js_getLanguage
        :: JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.language Mozilla TextTrack.language documentation> 
getLanguage ::
            (MonadIO m, FromJSString result) => TextTrack -> m result
getLanguage self
  = liftIO (fromJSString <$> (js_getLanguage (unTextTrack self)))
 
foreign import javascript unsafe
        "$1[\"inBandMetadataTrackDispatchType\"]"
        js_getInBandMetadataTrackDispatchType ::
        JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.inBandMetadataTrackDispatchType Mozilla TextTrack.inBandMetadataTrackDispatchType documentation> 
getInBandMetadataTrackDispatchType ::
                                   (MonadIO m, FromJSString result) => TextTrack -> m result
getInBandMetadataTrackDispatchType self
  = liftIO
      (fromJSString <$>
         (js_getInBandMetadataTrackDispatchType (unTextTrack self)))
 
foreign import javascript unsafe "$1[\"mode\"] = $2;" js_setMode ::
        JSRef TextTrack -> JSRef TextTrackMode -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.mode Mozilla TextTrack.mode documentation> 
setMode :: (MonadIO m) => TextTrack -> TextTrackMode -> m ()
setMode self val
  = liftIO (js_setMode (unTextTrack self) (ptoJSRef val))
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        JSRef TextTrack -> IO (JSRef TextTrackMode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.mode Mozilla TextTrack.mode documentation> 
getMode :: (MonadIO m) => TextTrack -> m TextTrackMode
getMode self
  = liftIO ((js_getMode (unTextTrack self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"cues\"]" js_getCues ::
        JSRef TextTrack -> IO (JSRef TextTrackCueList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.cues Mozilla TextTrack.cues documentation> 
getCues :: (MonadIO m) => TextTrack -> m (Maybe TextTrackCueList)
getCues self
  = liftIO ((js_getCues (unTextTrack self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"activeCues\"]"
        js_getActiveCues :: JSRef TextTrack -> IO (JSRef TextTrackCueList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.activeCues Mozilla TextTrack.activeCues documentation> 
getActiveCues ::
              (MonadIO m) => TextTrack -> m (Maybe TextTrackCueList)
getActiveCues self
  = liftIO ((js_getActiveCues (unTextTrack self)) >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.oncuechange Mozilla TextTrack.oncuechange documentation> 
cueChange :: EventName TextTrack Event
cueChange = unsafeEventName (toJSString "cuechange")
 
foreign import javascript unsafe "$1[\"regions\"]" js_getRegions ::
        JSRef TextTrack -> IO (JSRef VTTRegionList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.regions Mozilla TextTrack.regions documentation> 
getRegions :: (MonadIO m) => TextTrack -> m (Maybe VTTRegionList)
getRegions self
  = liftIO ((js_getRegions (unTextTrack self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"sourceBuffer\"]"
        js_getSourceBuffer :: JSRef TextTrack -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.sourceBuffer Mozilla TextTrack.sourceBuffer documentation> 
getSourceBuffer ::
                (MonadIO m) => TextTrack -> m (Maybe SourceBuffer)
getSourceBuffer self
  = liftIO ((js_getSourceBuffer (unTextTrack self)) >>= fromJSRef)
#else
module GHCJS.DOM.TextTrack (
  ) where
#endif
