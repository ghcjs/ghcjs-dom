{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaControlsHost
       (js_sortedTrackListForMenu, sortedTrackListForMenu,
        sortedTrackListForMenu_, js_sortedTrackListForMenuAudio,
        sortedTrackListForMenuAudio, sortedTrackListForMenuAudio_,
        js_displayNameForTrack, displayNameForTrack, displayNameForTrack_,
        js_setSelectedTextTrack, setSelectedTextTrack,
        js_setPreparedToReturnVideoLayerToInline,
        setPreparedToReturnVideoLayerToInline, js_updateTextTrackContainer,
        updateTextTrackContainer, js_enteredFullscreen, enteredFullscreen,
        js_exitedFullscreen, exitedFullscreen, js_generateUUID,
        generateUUID, generateUUID_, js_base64StringForIconNameAndType,
        base64StringForIconNameAndType, base64StringForIconNameAndType_,
        js_getCaptionMenuOffItem, getCaptionMenuOffItem,
        js_getCaptionMenuAutomaticItem, getCaptionMenuAutomaticItem,
        js_getCaptionDisplayMode, getCaptionDisplayMode,
        js_getTextTrackContainer, getTextTrackContainer,
        js_getAllowsInlineMediaPlayback, getAllowsInlineMediaPlayback,
        js_getSupportsFullscreen, getSupportsFullscreen,
        js_getIsVideoLayerInline, getIsVideoLayerInline,
        js_getUserGestureRequired, getUserGestureRequired,
        js_getIsInMediaDocument, getIsInMediaDocument,
        js_getShouldForceControlsDisplay, getShouldForceControlsDisplay,
        js_getExternalDeviceDisplayName, getExternalDeviceDisplayName,
        js_getExternalDeviceType, getExternalDeviceType,
        js_setControlsDependOnPageScaleFactor,
        setControlsDependOnPageScaleFactor,
        js_getControlsDependOnPageScaleFactor,
        getControlsDependOnPageScaleFactor, js_getShadowRootCSSText,
        getShadowRootCSSText, MediaControlsHost(..),
        gTypeMediaControlsHost)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "$1[\"sortedTrackListForMenu\"]($2)" js_sortedTrackListForMenu ::
        MediaControlsHost -> TextTrackList -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenu ::
                       (MonadIO m) => MediaControlsHost -> TextTrackList -> m [TextTrack]
sortedTrackListForMenu self trackList
  = liftIO
      ((js_sortedTrackListForMenu self trackList) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenu_ ::
                        (MonadIO m) => MediaControlsHost -> TextTrackList -> m ()
sortedTrackListForMenu_ self trackList
  = liftIO (void (js_sortedTrackListForMenu self trackList))
 
foreign import javascript unsafe
        "$1[\"sortedTrackListForMenu\"]($2)" js_sortedTrackListForMenuAudio
        :: MediaControlsHost -> AudioTrackList -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenuAudio ::
                            (MonadIO m) =>
                              MediaControlsHost -> AudioTrackList -> m [AudioTrack]
sortedTrackListForMenuAudio self trackList
  = liftIO
      ((js_sortedTrackListForMenuAudio self trackList) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenuAudio_ ::
                             (MonadIO m) => MediaControlsHost -> AudioTrackList -> m ()
sortedTrackListForMenuAudio_ self trackList
  = liftIO (void (js_sortedTrackListForMenuAudio self trackList))
 
foreign import javascript unsafe "$1[\"displayNameForTrack\"]($2)"
        js_displayNameForTrack ::
        MediaControlsHost -> Optional Track -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
displayNameForTrack ::
                    (MonadIO m, IsTrack track, FromJSString result) =>
                      MediaControlsHost -> Maybe track -> m result
displayNameForTrack self track
  = liftIO
      (fromJSString <$>
         (mapM toJSVal track >>=
            \ track' ->
              js_displayNameForTrack self (maybeToOptional (fmap Track track'))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
displayNameForTrack_ ::
                     (MonadIO m, IsTrack track) =>
                       MediaControlsHost -> Maybe track -> m ()
displayNameForTrack_ self track
  = liftIO
      (void
         (mapM toJSVal track >>=
            \ track' ->
              js_displayNameForTrack self (maybeToOptional (fmap Track track'))))
 
foreign import javascript unsafe "$1[\"setSelectedTextTrack\"]($2)"
        js_setSelectedTextTrack ::
        MediaControlsHost -> Optional TextTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.setSelectedTextTrack Mozilla MediaControlsHost.setSelectedTextTrack documentation> 
setSelectedTextTrack ::
                     (MonadIO m) => MediaControlsHost -> Maybe TextTrack -> m ()
setSelectedTextTrack self track
  = liftIO (js_setSelectedTextTrack self (maybeToOptional track))
 
foreign import javascript unsafe
        "$1[\"setPreparedToReturnVideoLayerToInline\"]($2)"
        js_setPreparedToReturnVideoLayerToInline ::
        MediaControlsHost -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.setPreparedToReturnVideoLayerToInline Mozilla MediaControlsHost.setPreparedToReturnVideoLayerToInline documentation> 
setPreparedToReturnVideoLayerToInline ::
                                      (MonadIO m) => MediaControlsHost -> Bool -> m ()
setPreparedToReturnVideoLayerToInline self prepared
  = liftIO (js_setPreparedToReturnVideoLayerToInline self prepared)
 
foreign import javascript unsafe
        "$1[\"updateTextTrackContainer\"]()" js_updateTextTrackContainer ::
        MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.updateTextTrackContainer Mozilla MediaControlsHost.updateTextTrackContainer documentation> 
updateTextTrackContainer ::
                         (MonadIO m) => MediaControlsHost -> m ()
updateTextTrackContainer self
  = liftIO (js_updateTextTrackContainer self)
 
foreign import javascript unsafe "$1[\"enteredFullscreen\"]()"
        js_enteredFullscreen :: MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.enteredFullscreen Mozilla MediaControlsHost.enteredFullscreen documentation> 
enteredFullscreen :: (MonadIO m) => MediaControlsHost -> m ()
enteredFullscreen self = liftIO (js_enteredFullscreen self)
 
foreign import javascript unsafe "$1[\"exitedFullscreen\"]()"
        js_exitedFullscreen :: MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.exitedFullscreen Mozilla MediaControlsHost.exitedFullscreen documentation> 
exitedFullscreen :: (MonadIO m) => MediaControlsHost -> m ()
exitedFullscreen self = liftIO (js_exitedFullscreen self)
 
foreign import javascript unsafe "$1[\"generateUUID\"]()"
        js_generateUUID :: MediaControlsHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.generateUUID Mozilla MediaControlsHost.generateUUID documentation> 
generateUUID ::
             (MonadIO m, FromJSString result) => MediaControlsHost -> m result
generateUUID self
  = liftIO (fromJSString <$> (js_generateUUID self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.generateUUID Mozilla MediaControlsHost.generateUUID documentation> 
generateUUID_ :: (MonadIO m) => MediaControlsHost -> m ()
generateUUID_ self = liftIO (void (js_generateUUID self))
 
foreign import javascript unsafe
        "$1[\"base64StringForIconNameAndType\"]($2,\n$3)"
        js_base64StringForIconNameAndType ::
        MediaControlsHost -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.base64StringForIconNameAndType Mozilla MediaControlsHost.base64StringForIconNameAndType documentation> 
base64StringForIconNameAndType ::
                               (MonadIO m, ToJSString iconName, ToJSString iconType,
                                FromJSString result) =>
                                 MediaControlsHost -> iconName -> iconType -> m result
base64StringForIconNameAndType self iconName iconType
  = liftIO
      (fromJSString <$>
         (js_base64StringForIconNameAndType self (toJSString iconName)
            (toJSString iconType)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.base64StringForIconNameAndType Mozilla MediaControlsHost.base64StringForIconNameAndType documentation> 
base64StringForIconNameAndType_ ::
                                (MonadIO m, ToJSString iconName, ToJSString iconType) =>
                                  MediaControlsHost -> iconName -> iconType -> m ()
base64StringForIconNameAndType_ self iconName iconType
  = liftIO
      (void
         (js_base64StringForIconNameAndType self (toJSString iconName)
            (toJSString iconType)))
 
foreign import javascript unsafe "$1[\"captionMenuOffItem\"]"
        js_getCaptionMenuOffItem :: MediaControlsHost -> IO TextTrack

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuOffItem Mozilla MediaControlsHost.captionMenuOffItem documentation> 
getCaptionMenuOffItem ::
                      (MonadIO m) => MediaControlsHost -> m TextTrack
getCaptionMenuOffItem self = liftIO (js_getCaptionMenuOffItem self)
 
foreign import javascript unsafe "$1[\"captionMenuAutomaticItem\"]"
        js_getCaptionMenuAutomaticItem :: MediaControlsHost -> IO TextTrack

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuAutomaticItem Mozilla MediaControlsHost.captionMenuAutomaticItem documentation> 
getCaptionMenuAutomaticItem ::
                            (MonadIO m) => MediaControlsHost -> m TextTrack
getCaptionMenuAutomaticItem self
  = liftIO (js_getCaptionMenuAutomaticItem self)
 
foreign import javascript unsafe "$1[\"captionDisplayMode\"]"
        js_getCaptionDisplayMode :: MediaControlsHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionDisplayMode Mozilla MediaControlsHost.captionDisplayMode documentation> 
getCaptionDisplayMode ::
                      (MonadIO m, FromJSString result) => MediaControlsHost -> m result
getCaptionDisplayMode self
  = liftIO (fromJSString <$> (js_getCaptionDisplayMode self))
 
foreign import javascript unsafe "$1[\"textTrackContainer\"]"
        js_getTextTrackContainer :: MediaControlsHost -> IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.textTrackContainer Mozilla MediaControlsHost.textTrackContainer documentation> 
getTextTrackContainer ::
                      (MonadIO m) => MediaControlsHost -> m HTMLElement
getTextTrackContainer self = liftIO (js_getTextTrackContainer self)
 
foreign import javascript unsafe
        "($1[\"allowsInlineMediaPlayback\"] ? 1 : 0)"
        js_getAllowsInlineMediaPlayback :: MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.allowsInlineMediaPlayback Mozilla MediaControlsHost.allowsInlineMediaPlayback documentation> 
getAllowsInlineMediaPlayback ::
                             (MonadIO m) => MediaControlsHost -> m Bool
getAllowsInlineMediaPlayback self
  = liftIO (js_getAllowsInlineMediaPlayback self)
 
foreign import javascript unsafe
        "($1[\"supportsFullscreen\"] ? 1 : 0)" js_getSupportsFullscreen ::
        MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.supportsFullscreen Mozilla MediaControlsHost.supportsFullscreen documentation> 
getSupportsFullscreen :: (MonadIO m) => MediaControlsHost -> m Bool
getSupportsFullscreen self = liftIO (js_getSupportsFullscreen self)
 
foreign import javascript unsafe
        "($1[\"isVideoLayerInline\"] ? 1 : 0)" js_getIsVideoLayerInline ::
        MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.isVideoLayerInline Mozilla MediaControlsHost.isVideoLayerInline documentation> 
getIsVideoLayerInline :: (MonadIO m) => MediaControlsHost -> m Bool
getIsVideoLayerInline self = liftIO (js_getIsVideoLayerInline self)
 
foreign import javascript unsafe
        "($1[\"userGestureRequired\"] ? 1 : 0)" js_getUserGestureRequired
        :: MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.userGestureRequired Mozilla MediaControlsHost.userGestureRequired documentation> 
getUserGestureRequired ::
                       (MonadIO m) => MediaControlsHost -> m Bool
getUserGestureRequired self
  = liftIO (js_getUserGestureRequired self)
 
foreign import javascript unsafe
        "($1[\"isInMediaDocument\"] ? 1 : 0)" js_getIsInMediaDocument ::
        MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.isInMediaDocument Mozilla MediaControlsHost.isInMediaDocument documentation> 
getIsInMediaDocument :: (MonadIO m) => MediaControlsHost -> m Bool
getIsInMediaDocument self = liftIO (js_getIsInMediaDocument self)
 
foreign import javascript unsafe
        "($1[\"shouldForceControlsDisplay\"] ? 1 : 0)"
        js_getShouldForceControlsDisplay :: MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.shouldForceControlsDisplay Mozilla MediaControlsHost.shouldForceControlsDisplay documentation> 
getShouldForceControlsDisplay ::
                              (MonadIO m) => MediaControlsHost -> m Bool
getShouldForceControlsDisplay self
  = liftIO (js_getShouldForceControlsDisplay self)
 
foreign import javascript unsafe
        "$1[\"externalDeviceDisplayName\"]" js_getExternalDeviceDisplayName
        :: MediaControlsHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.externalDeviceDisplayName Mozilla MediaControlsHost.externalDeviceDisplayName documentation> 
getExternalDeviceDisplayName ::
                             (MonadIO m, FromJSString result) => MediaControlsHost -> m result
getExternalDeviceDisplayName self
  = liftIO (fromJSString <$> (js_getExternalDeviceDisplayName self))
 
foreign import javascript unsafe "$1[\"externalDeviceType\"]"
        js_getExternalDeviceType :: MediaControlsHost -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.externalDeviceType Mozilla MediaControlsHost.externalDeviceType documentation> 
getExternalDeviceType ::
                      (MonadIO m) => MediaControlsHost -> m DeviceType
getExternalDeviceType self
  = liftIO ((js_getExternalDeviceType self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe
        "$1[\"controlsDependOnPageScaleFactor\"] = $2;"
        js_setControlsDependOnPageScaleFactor ::
        MediaControlsHost -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.controlsDependOnPageScaleFactor Mozilla MediaControlsHost.controlsDependOnPageScaleFactor documentation> 
setControlsDependOnPageScaleFactor ::
                                   (MonadIO m) => MediaControlsHost -> Bool -> m ()
setControlsDependOnPageScaleFactor self val
  = liftIO (js_setControlsDependOnPageScaleFactor self val)
 
foreign import javascript unsafe
        "($1[\"controlsDependOnPageScaleFactor\"] ? 1 : 0)"
        js_getControlsDependOnPageScaleFactor ::
        MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.controlsDependOnPageScaleFactor Mozilla MediaControlsHost.controlsDependOnPageScaleFactor documentation> 
getControlsDependOnPageScaleFactor ::
                                   (MonadIO m) => MediaControlsHost -> m Bool
getControlsDependOnPageScaleFactor self
  = liftIO (js_getControlsDependOnPageScaleFactor self)
 
foreign import javascript unsafe "$1[\"shadowRootCSSText\"]"
        js_getShadowRootCSSText :: MediaControlsHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.shadowRootCSSText Mozilla MediaControlsHost.shadowRootCSSText documentation> 
getShadowRootCSSText ::
                     (MonadIO m, FromJSString result) => MediaControlsHost -> m result
getShadowRootCSSText self
  = liftIO (fromJSString <$> (js_getShadowRootCSSText self))