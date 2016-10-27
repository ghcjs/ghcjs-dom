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
        js_displayNameForTrackAudio, displayNameForTrackAudio,
        displayNameForTrackAudio_, js_setSelectedTextTrack,
        setSelectedTextTrack, js_updateTextTrackContainer,
        updateTextTrackContainer, js_enteredFullscreen, enteredFullscreen,
        js_exitedFullscreen, exitedFullscreen, js_enterFullscreenOptimized,
        enterFullscreenOptimized, js_mediaUIImageData, mediaUIImageData,
        mediaUIImageData_, js_getCaptionMenuOffItem, getCaptionMenuOffItem,
        getCaptionMenuOffItemUnsafe, getCaptionMenuOffItemUnchecked,
        js_getCaptionMenuAutomaticItem, getCaptionMenuAutomaticItem,
        getCaptionMenuAutomaticItemUnsafe,
        getCaptionMenuAutomaticItemUnchecked, js_getCaptionDisplayMode,
        getCaptionDisplayMode, js_getTextTrackContainer,
        getTextTrackContainer, getTextTrackContainerUnsafe,
        getTextTrackContainerUnchecked, js_getMediaPlaybackAllowsInline,
        getMediaPlaybackAllowsInline, js_getSupportsFullscreen,
        getSupportsFullscreen, js_getUserGestureRequired,
        getUserGestureRequired, js_getExternalDeviceDisplayName,
        getExternalDeviceDisplayName, js_getExternalDeviceType,
        getExternalDeviceType, js_setControlsDependOnPageScaleFactor,
        setControlsDependOnPageScaleFactor,
        js_getControlsDependOnPageScaleFactor,
        getControlsDependOnPageScaleFactor, MediaControlsHost(..),
        gTypeMediaControlsHost)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "$1[\"sortedTrackListForMenu\"]($2)" js_sortedTrackListForMenu ::
        MediaControlsHost -> Nullable TextTrackList -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenu ::
                       (MonadIO m) =>
                         MediaControlsHost -> Maybe TextTrackList -> m [Maybe TextTrack]
sortedTrackListForMenu self trackList
  = liftIO
      ((js_sortedTrackListForMenu (self) (maybeToNullable trackList)) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenu_ ::
                        (MonadIO m) => MediaControlsHost -> Maybe TextTrackList -> m ()
sortedTrackListForMenu_ self trackList
  = liftIO
      (void
         (js_sortedTrackListForMenu (self) (maybeToNullable trackList)))
 
foreign import javascript unsafe
        "$1[\"sortedTrackListForMenu\"]($2)" js_sortedTrackListForMenuAudio
        :: MediaControlsHost -> Nullable AudioTrackList -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenuAudio ::
                            (MonadIO m) =>
                              MediaControlsHost -> Maybe AudioTrackList -> m [Maybe AudioTrack]
sortedTrackListForMenuAudio self trackList
  = liftIO
      ((js_sortedTrackListForMenuAudio (self)
          (maybeToNullable trackList))
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
sortedTrackListForMenuAudio_ ::
                             (MonadIO m) => MediaControlsHost -> Maybe AudioTrackList -> m ()
sortedTrackListForMenuAudio_ self trackList
  = liftIO
      (void
         (js_sortedTrackListForMenuAudio (self)
            (maybeToNullable trackList)))
 
foreign import javascript unsafe "$1[\"displayNameForTrack\"]($2)"
        js_displayNameForTrack ::
        MediaControlsHost -> Nullable TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
displayNameForTrack ::
                    (MonadIO m, FromJSString result) =>
                      MediaControlsHost -> Maybe TextTrack -> m result
displayNameForTrack self track
  = liftIO
      (fromJSString <$>
         (js_displayNameForTrack (self) (maybeToNullable track)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
displayNameForTrack_ ::
                     (MonadIO m) => MediaControlsHost -> Maybe TextTrack -> m ()
displayNameForTrack_ self track
  = liftIO
      (void (js_displayNameForTrack (self) (maybeToNullable track)))
 
foreign import javascript unsafe "$1[\"displayNameForTrack\"]($2)"
        js_displayNameForTrackAudio ::
        MediaControlsHost -> Nullable AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
displayNameForTrackAudio ::
                         (MonadIO m, FromJSString result) =>
                           MediaControlsHost -> Maybe AudioTrack -> m result
displayNameForTrackAudio self track
  = liftIO
      (fromJSString <$>
         (js_displayNameForTrackAudio (self) (maybeToNullable track)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
displayNameForTrackAudio_ ::
                          (MonadIO m) => MediaControlsHost -> Maybe AudioTrack -> m ()
displayNameForTrackAudio_ self track
  = liftIO
      (void (js_displayNameForTrackAudio (self) (maybeToNullable track)))
 
foreign import javascript unsafe "$1[\"setSelectedTextTrack\"]($2)"
        js_setSelectedTextTrack ::
        MediaControlsHost -> Nullable TextTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.setSelectedTextTrack Mozilla MediaControlsHost.setSelectedTextTrack documentation> 
setSelectedTextTrack ::
                     (MonadIO m) => MediaControlsHost -> Maybe TextTrack -> m ()
setSelectedTextTrack self track
  = liftIO (js_setSelectedTextTrack (self) (maybeToNullable track))
 
foreign import javascript unsafe
        "$1[\"updateTextTrackContainer\"]()" js_updateTextTrackContainer ::
        MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.updateTextTrackContainer Mozilla MediaControlsHost.updateTextTrackContainer documentation> 
updateTextTrackContainer ::
                         (MonadIO m) => MediaControlsHost -> m ()
updateTextTrackContainer self
  = liftIO (js_updateTextTrackContainer (self))
 
foreign import javascript unsafe "$1[\"enteredFullscreen\"]()"
        js_enteredFullscreen :: MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.enteredFullscreen Mozilla MediaControlsHost.enteredFullscreen documentation> 
enteredFullscreen :: (MonadIO m) => MediaControlsHost -> m ()
enteredFullscreen self = liftIO (js_enteredFullscreen (self))
 
foreign import javascript unsafe "$1[\"exitedFullscreen\"]()"
        js_exitedFullscreen :: MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.exitedFullscreen Mozilla MediaControlsHost.exitedFullscreen documentation> 
exitedFullscreen :: (MonadIO m) => MediaControlsHost -> m ()
exitedFullscreen self = liftIO (js_exitedFullscreen (self))
 
foreign import javascript unsafe
        "$1[\"enterFullscreenOptimized\"]()" js_enterFullscreenOptimized ::
        MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.enterFullscreenOptimized Mozilla MediaControlsHost.enterFullscreenOptimized documentation> 
enterFullscreenOptimized ::
                         (MonadIO m) => MediaControlsHost -> m ()
enterFullscreenOptimized self
  = liftIO (js_enterFullscreenOptimized (self))
 
foreign import javascript unsafe "$1[\"mediaUIImageData\"]($2)"
        js_mediaUIImageData :: MediaControlsHost -> JSVal -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.mediaUIImageData Mozilla MediaControlsHost.mediaUIImageData documentation> 
mediaUIImageData ::
                 (MonadIO m, FromJSString result) =>
                   MediaControlsHost -> MediaUIPartID -> m result
mediaUIImageData self partID
  = liftIO
      (fromJSString <$> (js_mediaUIImageData (self) (pToJSVal partID)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.mediaUIImageData Mozilla MediaControlsHost.mediaUIImageData documentation> 
mediaUIImageData_ ::
                  (MonadIO m) => MediaControlsHost -> MediaUIPartID -> m ()
mediaUIImageData_ self partID
  = liftIO (void (js_mediaUIImageData (self) (pToJSVal partID)))
 
foreign import javascript unsafe "$1[\"captionMenuOffItem\"]"
        js_getCaptionMenuOffItem ::
        MediaControlsHost -> IO (Nullable TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuOffItem Mozilla MediaControlsHost.captionMenuOffItem documentation> 
getCaptionMenuOffItem ::
                      (MonadIO m) => MediaControlsHost -> m (Maybe TextTrack)
getCaptionMenuOffItem self
  = liftIO (nullableToMaybe <$> (js_getCaptionMenuOffItem (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuOffItem Mozilla MediaControlsHost.captionMenuOffItem documentation> 
getCaptionMenuOffItemUnsafe ::
                            (MonadIO m, HasCallStack) => MediaControlsHost -> m TextTrack
getCaptionMenuOffItemUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCaptionMenuOffItem (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuOffItem Mozilla MediaControlsHost.captionMenuOffItem documentation> 
getCaptionMenuOffItemUnchecked ::
                               (MonadIO m) => MediaControlsHost -> m TextTrack
getCaptionMenuOffItemUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getCaptionMenuOffItem (self)))
 
foreign import javascript unsafe "$1[\"captionMenuAutomaticItem\"]"
        js_getCaptionMenuAutomaticItem ::
        MediaControlsHost -> IO (Nullable TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuAutomaticItem Mozilla MediaControlsHost.captionMenuAutomaticItem documentation> 
getCaptionMenuAutomaticItem ::
                            (MonadIO m) => MediaControlsHost -> m (Maybe TextTrack)
getCaptionMenuAutomaticItem self
  = liftIO
      (nullableToMaybe <$> (js_getCaptionMenuAutomaticItem (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuAutomaticItem Mozilla MediaControlsHost.captionMenuAutomaticItem documentation> 
getCaptionMenuAutomaticItemUnsafe ::
                                  (MonadIO m, HasCallStack) => MediaControlsHost -> m TextTrack
getCaptionMenuAutomaticItemUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCaptionMenuAutomaticItem (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuAutomaticItem Mozilla MediaControlsHost.captionMenuAutomaticItem documentation> 
getCaptionMenuAutomaticItemUnchecked ::
                                     (MonadIO m) => MediaControlsHost -> m TextTrack
getCaptionMenuAutomaticItemUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getCaptionMenuAutomaticItem (self)))
 
foreign import javascript unsafe "$1[\"captionDisplayMode\"]"
        js_getCaptionDisplayMode :: MediaControlsHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionDisplayMode Mozilla MediaControlsHost.captionDisplayMode documentation> 
getCaptionDisplayMode ::
                      (MonadIO m, FromJSString result) => MediaControlsHost -> m result
getCaptionDisplayMode self
  = liftIO (fromJSString <$> (js_getCaptionDisplayMode (self)))
 
foreign import javascript unsafe "$1[\"textTrackContainer\"]"
        js_getTextTrackContainer ::
        MediaControlsHost -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.textTrackContainer Mozilla MediaControlsHost.textTrackContainer documentation> 
getTextTrackContainer ::
                      (MonadIO m) => MediaControlsHost -> m (Maybe HTMLElement)
getTextTrackContainer self
  = liftIO (nullableToMaybe <$> (js_getTextTrackContainer (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.textTrackContainer Mozilla MediaControlsHost.textTrackContainer documentation> 
getTextTrackContainerUnsafe ::
                            (MonadIO m, HasCallStack) => MediaControlsHost -> m HTMLElement
getTextTrackContainerUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTextTrackContainer (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.textTrackContainer Mozilla MediaControlsHost.textTrackContainer documentation> 
getTextTrackContainerUnchecked ::
                               (MonadIO m) => MediaControlsHost -> m HTMLElement
getTextTrackContainerUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getTextTrackContainer (self)))
 
foreign import javascript unsafe
        "($1[\"mediaPlaybackAllowsInline\"] ? 1 : 0)"
        js_getMediaPlaybackAllowsInline :: MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.mediaPlaybackAllowsInline Mozilla MediaControlsHost.mediaPlaybackAllowsInline documentation> 
getMediaPlaybackAllowsInline ::
                             (MonadIO m) => MediaControlsHost -> m Bool
getMediaPlaybackAllowsInline self
  = liftIO (js_getMediaPlaybackAllowsInline (self))
 
foreign import javascript unsafe
        "($1[\"supportsFullscreen\"] ? 1 : 0)" js_getSupportsFullscreen ::
        MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.supportsFullscreen Mozilla MediaControlsHost.supportsFullscreen documentation> 
getSupportsFullscreen :: (MonadIO m) => MediaControlsHost -> m Bool
getSupportsFullscreen self
  = liftIO (js_getSupportsFullscreen (self))
 
foreign import javascript unsafe
        "($1[\"userGestureRequired\"] ? 1 : 0)" js_getUserGestureRequired
        :: MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.userGestureRequired Mozilla MediaControlsHost.userGestureRequired documentation> 
getUserGestureRequired ::
                       (MonadIO m) => MediaControlsHost -> m Bool
getUserGestureRequired self
  = liftIO (js_getUserGestureRequired (self))
 
foreign import javascript unsafe
        "$1[\"externalDeviceDisplayName\"]" js_getExternalDeviceDisplayName
        :: MediaControlsHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.externalDeviceDisplayName Mozilla MediaControlsHost.externalDeviceDisplayName documentation> 
getExternalDeviceDisplayName ::
                             (MonadIO m, FromJSString result) => MediaControlsHost -> m result
getExternalDeviceDisplayName self
  = liftIO
      (fromJSString <$> (js_getExternalDeviceDisplayName (self)))
 
foreign import javascript unsafe "$1[\"externalDeviceType\"]"
        js_getExternalDeviceType :: MediaControlsHost -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.externalDeviceType Mozilla MediaControlsHost.externalDeviceType documentation> 
getExternalDeviceType ::
                      (MonadIO m) => MediaControlsHost -> m DeviceType
getExternalDeviceType self
  = liftIO ((js_getExternalDeviceType (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe
        "$1[\"controlsDependOnPageScaleFactor\"] = $2;"
        js_setControlsDependOnPageScaleFactor ::
        MediaControlsHost -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.controlsDependOnPageScaleFactor Mozilla MediaControlsHost.controlsDependOnPageScaleFactor documentation> 
setControlsDependOnPageScaleFactor ::
                                   (MonadIO m) => MediaControlsHost -> Bool -> m ()
setControlsDependOnPageScaleFactor self val
  = liftIO (js_setControlsDependOnPageScaleFactor (self) val)
 
foreign import javascript unsafe
        "($1[\"controlsDependOnPageScaleFactor\"] ? 1 : 0)"
        js_getControlsDependOnPageScaleFactor ::
        MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.controlsDependOnPageScaleFactor Mozilla MediaControlsHost.controlsDependOnPageScaleFactor documentation> 
getControlsDependOnPageScaleFactor ::
                                   (MonadIO m) => MediaControlsHost -> m Bool
getControlsDependOnPageScaleFactor self
  = liftIO (js_getControlsDependOnPageScaleFactor (self))