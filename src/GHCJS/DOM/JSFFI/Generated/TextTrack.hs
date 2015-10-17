{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TextTrack
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
 
foreign import javascript unsafe "$1[\"addCue\"]($2)" js_addCue ::
        TextTrack -> Nullable TextTrackCue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.addCue Mozilla TextTrack.addCue documentation> 
addCue ::
       (MonadIO m, IsTextTrackCue cue) => TextTrack -> Maybe cue -> m ()
addCue self cue
  = liftIO
      (js_addCue (self) (maybeToNullable (fmap toTextTrackCue cue)))
 
foreign import javascript unsafe "$1[\"removeCue\"]($2)"
        js_removeCue :: TextTrack -> Nullable TextTrackCue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.removeCue Mozilla TextTrack.removeCue documentation> 
removeCue ::
          (MonadIO m, IsTextTrackCue cue) => TextTrack -> Maybe cue -> m ()
removeCue self cue
  = liftIO
      (js_removeCue (self) (maybeToNullable (fmap toTextTrackCue cue)))
 
foreign import javascript unsafe "$1[\"addRegion\"]($2)"
        js_addRegion :: TextTrack -> Nullable VTTRegion -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.addRegion Mozilla TextTrack.addRegion documentation> 
addRegion :: (MonadIO m) => TextTrack -> Maybe VTTRegion -> m ()
addRegion self region
  = liftIO (js_addRegion (self) (maybeToNullable region))
 
foreign import javascript unsafe "$1[\"removeRegion\"]($2)"
        js_removeRegion :: TextTrack -> Nullable VTTRegion -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.removeRegion Mozilla TextTrack.removeRegion documentation> 
removeRegion :: (MonadIO m) => TextTrack -> Maybe VTTRegion -> m ()
removeRegion self region
  = liftIO (js_removeRegion (self) (maybeToNullable region))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.id Mozilla TextTrack.id documentation> 
getId :: (MonadIO m, FromJSString result) => TextTrack -> m result
getId self = liftIO (fromJSString <$> (js_getId (self)))
 
foreign import javascript unsafe "$1[\"kind\"] = $2;" js_setKind ::
        TextTrack -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.kind Mozilla TextTrack.kind documentation> 
setKind :: (MonadIO m) => TextTrack -> TextTrackKind -> m ()
setKind self val = liftIO (js_setKind (self) (pToJSVal val))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        TextTrack -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.kind Mozilla TextTrack.kind documentation> 
getKind :: (MonadIO m) => TextTrack -> m TextTrackKind
getKind self = liftIO ((js_getKind (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.label Mozilla TextTrack.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => TextTrack -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel (self)))
 
foreign import javascript unsafe "$1[\"language\"] = $2;"
        js_setLanguage :: TextTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.language Mozilla TextTrack.language documentation> 
setLanguage ::
            (MonadIO m, ToJSString val) => TextTrack -> val -> m ()
setLanguage self val
  = liftIO (js_setLanguage (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"language\"]" js_getLanguage
        :: TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.language Mozilla TextTrack.language documentation> 
getLanguage ::
            (MonadIO m, FromJSString result) => TextTrack -> m result
getLanguage self
  = liftIO (fromJSString <$> (js_getLanguage (self)))
 
foreign import javascript unsafe
        "$1[\"inBandMetadataTrackDispatchType\"]"
        js_getInBandMetadataTrackDispatchType :: TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.inBandMetadataTrackDispatchType Mozilla TextTrack.inBandMetadataTrackDispatchType documentation> 
getInBandMetadataTrackDispatchType ::
                                   (MonadIO m, FromJSString result) => TextTrack -> m result
getInBandMetadataTrackDispatchType self
  = liftIO
      (fromJSString <$> (js_getInBandMetadataTrackDispatchType (self)))
 
foreign import javascript unsafe "$1[\"mode\"] = $2;" js_setMode ::
        TextTrack -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.mode Mozilla TextTrack.mode documentation> 
setMode :: (MonadIO m) => TextTrack -> TextTrackMode -> m ()
setMode self val = liftIO (js_setMode (self) (pToJSVal val))
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        TextTrack -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.mode Mozilla TextTrack.mode documentation> 
getMode :: (MonadIO m) => TextTrack -> m TextTrackMode
getMode self = liftIO ((js_getMode (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"cues\"]" js_getCues ::
        TextTrack -> IO (Nullable TextTrackCueList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.cues Mozilla TextTrack.cues documentation> 
getCues :: (MonadIO m) => TextTrack -> m (Maybe TextTrackCueList)
getCues self = liftIO (nullableToMaybe <$> (js_getCues (self)))
 
foreign import javascript unsafe "$1[\"activeCues\"]"
        js_getActiveCues :: TextTrack -> IO (Nullable TextTrackCueList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.activeCues Mozilla TextTrack.activeCues documentation> 
getActiveCues ::
              (MonadIO m) => TextTrack -> m (Maybe TextTrackCueList)
getActiveCues self
  = liftIO (nullableToMaybe <$> (js_getActiveCues (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.oncuechange Mozilla TextTrack.oncuechange documentation> 
cueChange :: EventName TextTrack Event
cueChange = unsafeEventName (toJSString "cuechange")
 
foreign import javascript unsafe "$1[\"regions\"]" js_getRegions ::
        TextTrack -> IO (Nullable VTTRegionList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.regions Mozilla TextTrack.regions documentation> 
getRegions :: (MonadIO m) => TextTrack -> m (Maybe VTTRegionList)
getRegions self
  = liftIO (nullableToMaybe <$> (js_getRegions (self)))
 
foreign import javascript unsafe "$1[\"sourceBuffer\"]"
        js_getSourceBuffer :: TextTrack -> IO (Nullable SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.sourceBuffer Mozilla TextTrack.sourceBuffer documentation> 
getSourceBuffer ::
                (MonadIO m) => TextTrack -> m (Maybe SourceBuffer)
getSourceBuffer self
  = liftIO (nullableToMaybe <$> (js_getSourceBuffer (self)))