{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLMediaElement
       (js_load, load, js_canPlayType, canPlayType, js_play, play,
        js_pause, pause, js_fastSeek, fastSeek,
        js_webkitGenerateKeyRequest, webkitGenerateKeyRequest,
        js_webkitAddKey, webkitAddKey, js_webkitCancelKeyRequest,
        webkitCancelKeyRequest, js_webkitSetMediaKeys, webkitSetMediaKeys,
        js_addTextTrack, addTextTrack, js_getVideoPlaybackQuality,
        getVideoPlaybackQuality, js_webkitShowPlaybackTargetPicker,
        webkitShowPlaybackTargetPicker, pattern NETWORK_EMPTY,
        pattern NETWORK_IDLE, pattern NETWORK_LOADING,
        pattern NETWORK_NO_SOURCE, pattern HAVE_NOTHING,
        pattern HAVE_METADATA, pattern HAVE_CURRENT_DATA,
        pattern HAVE_FUTURE_DATA, pattern HAVE_ENOUGH_DATA, js_getError,
        getError, js_setSrc, setSrc, js_getSrc, getSrc, js_getCurrentSrc,
        getCurrentSrc, js_getNetworkState, getNetworkState, js_setPreload,
        setPreload, js_getPreload, getPreload, js_getBuffered, getBuffered,
        js_getReadyState, getReadyState, js_getSeeking, getSeeking,
        js_setCurrentTime, setCurrentTime, js_getCurrentTime,
        getCurrentTime, js_getDuration, getDuration, js_getPaused,
        getPaused, js_setDefaultPlaybackRate, setDefaultPlaybackRate,
        js_getDefaultPlaybackRate, getDefaultPlaybackRate,
        js_setPlaybackRate, setPlaybackRate, js_getPlaybackRate,
        getPlaybackRate, js_getPlayed, getPlayed, js_getSeekable,
        getSeekable, js_getEnded, getEnded, js_setAutoplay, setAutoplay,
        js_getAutoplay, getAutoplay, js_setLoop, setLoop, js_getLoop,
        getLoop, js_setControls, setControls, js_getControls, getControls,
        js_setVolume, setVolume, js_getVolume, getVolume, js_setMuted,
        setMuted, js_getMuted, getMuted, js_setDefaultMuted,
        setDefaultMuted, js_getDefaultMuted, getDefaultMuted, emptied,
        loadedMetadata, loadedData, canPlay, canPlayThrough, playing,
        ended, waiting, durationChange, timeUpdate, playEvent, pauseEvent,
        rateChange, volumeChange, js_setWebkitPreservesPitch,
        setWebkitPreservesPitch, js_getWebkitPreservesPitch,
        getWebkitPreservesPitch, js_getWebkitHasClosedCaptions,
        getWebkitHasClosedCaptions, js_setWebkitClosedCaptionsVisible,
        setWebkitClosedCaptionsVisible, js_getWebkitClosedCaptionsVisible,
        getWebkitClosedCaptionsVisible, js_getWebkitAudioDecodedByteCount,
        getWebkitAudioDecodedByteCount, js_getWebkitVideoDecodedByteCount,
        getWebkitVideoDecodedByteCount, webKitKeyAdded, webKitKeyError,
        webKitKeyMessage, webKitNeedKey, js_getWebkitKeys, getWebkitKeys,
        js_getAudioTracks, getAudioTracks, js_getTextTracks, getTextTracks,
        js_getVideoTracks, getVideoTracks, js_setMediaGroup, setMediaGroup,
        js_getMediaGroup, getMediaGroup, js_setController, setController,
        js_getController, getController,
        js_getWebkitCurrentPlaybackTargetIsWireless,
        getWebkitCurrentPlaybackTargetIsWireless,
        webKitCurrentPlaybackTargetIsWirelessChanged,
        webKitPlaybackTargetAvailabilityChanged, js_setSrcObject,
        setSrcObject, js_getSrcObject, getSrcObject, HTMLMediaElement,
        castToHTMLMediaElement, gTypeHTMLMediaElement, IsHTMLMediaElement,
        toHTMLMediaElement)
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
 
foreign import javascript unsafe "$1[\"load\"]()" js_load ::
        HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.load Mozilla HTMLMediaElement.load documentation> 
load :: (MonadIO m, IsHTMLMediaElement self) => self -> m ()
load self = liftIO (js_load (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"canPlayType\"]($2, $3)"
        js_canPlayType ::
        HTMLMediaElement -> JSString -> Nullable JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayType Mozilla HTMLMediaElement.canPlayType documentation> 
canPlayType ::
            (MonadIO m, IsHTMLMediaElement self, ToJSString type',
             ToJSString keySystem, FromJSString result) =>
              self -> type' -> Maybe keySystem -> m result
canPlayType self type' keySystem
  = liftIO
      (fromJSString <$>
         (js_canPlayType (toHTMLMediaElement self) (toJSString type')
            (toMaybeJSString keySystem)))
 
foreign import javascript unsafe "$1[\"play\"]()" js_play ::
        HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.play Mozilla HTMLMediaElement.play documentation> 
play :: (MonadIO m, IsHTMLMediaElement self) => self -> m ()
play self = liftIO (js_play (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"pause\"]()" js_pause ::
        HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.pause Mozilla HTMLMediaElement.pause documentation> 
pause :: (MonadIO m, IsHTMLMediaElement self) => self -> m ()
pause self = liftIO (js_pause (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"fastSeek\"]($2)" js_fastSeek
        :: HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.fastSeek Mozilla HTMLMediaElement.fastSeek documentation> 
fastSeek ::
         (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
fastSeek self time
  = liftIO (js_fastSeek (toHTMLMediaElement self) time)
 
foreign import javascript unsafe
        "$1[\"webkitGenerateKeyRequest\"]($2,\n$3)"
        js_webkitGenerateKeyRequest ::
        HTMLMediaElement ->
          Nullable JSString -> Nullable Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitGenerateKeyRequest Mozilla HTMLMediaElement.webkitGenerateKeyRequest documentation> 
webkitGenerateKeyRequest ::
                         (MonadIO m, IsHTMLMediaElement self, ToJSString keySystem,
                          IsUint8Array initData) =>
                           self -> Maybe keySystem -> Maybe initData -> m ()
webkitGenerateKeyRequest self keySystem initData
  = liftIO
      (js_webkitGenerateKeyRequest (toHTMLMediaElement self)
         (toMaybeJSString keySystem)
         (maybeToNullable (fmap toUint8Array initData)))
 
foreign import javascript unsafe
        "$1[\"webkitAddKey\"]($2, $3, $4,\n$5)" js_webkitAddKey ::
        HTMLMediaElement ->
          Nullable JSString ->
            Nullable Uint8Array -> Nullable Uint8Array -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitAddKey Mozilla HTMLMediaElement.webkitAddKey documentation> 
webkitAddKey ::
             (MonadIO m, IsHTMLMediaElement self, ToJSString keySystem,
              IsUint8Array key, IsUint8Array initData, ToJSString sessionId) =>
               self ->
                 Maybe keySystem -> Maybe key -> Maybe initData -> sessionId -> m ()
webkitAddKey self keySystem key initData sessionId
  = liftIO
      (js_webkitAddKey (toHTMLMediaElement self)
         (toMaybeJSString keySystem)
         (maybeToNullable (fmap toUint8Array key))
         (maybeToNullable (fmap toUint8Array initData))
         (toJSString sessionId))
 
foreign import javascript unsafe
        "$1[\"webkitCancelKeyRequest\"]($2,\n$3)" js_webkitCancelKeyRequest
        :: HTMLMediaElement -> Nullable JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCancelKeyRequest Mozilla HTMLMediaElement.webkitCancelKeyRequest documentation> 
webkitCancelKeyRequest ::
                       (MonadIO m, IsHTMLMediaElement self, ToJSString keySystem,
                        ToJSString sessionId) =>
                         self -> Maybe keySystem -> sessionId -> m ()
webkitCancelKeyRequest self keySystem sessionId
  = liftIO
      (js_webkitCancelKeyRequest (toHTMLMediaElement self)
         (toMaybeJSString keySystem)
         (toJSString sessionId))
 
foreign import javascript unsafe "$1[\"webkitSetMediaKeys\"]($2)"
        js_webkitSetMediaKeys ::
        HTMLMediaElement -> Nullable MediaKeys -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitSetMediaKeys Mozilla HTMLMediaElement.webkitSetMediaKeys documentation> 
webkitSetMediaKeys ::
                   (MonadIO m, IsHTMLMediaElement self) =>
                     self -> Maybe MediaKeys -> m ()
webkitSetMediaKeys self mediaKeys
  = liftIO
      (js_webkitSetMediaKeys (toHTMLMediaElement self)
         (maybeToNullable mediaKeys))
 
foreign import javascript unsafe "$1[\"addTextTrack\"]($2, $3, $4)"
        js_addTextTrack ::
        HTMLMediaElement ->
          JSString -> JSString -> JSString -> IO (Nullable TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.addTextTrack Mozilla HTMLMediaElement.addTextTrack documentation> 
addTextTrack ::
             (MonadIO m, IsHTMLMediaElement self, ToJSString kind,
              ToJSString label, ToJSString language) =>
               self -> kind -> label -> language -> m (Maybe TextTrack)
addTextTrack self kind label language
  = liftIO
      (nullableToMaybe <$>
         (js_addTextTrack (toHTMLMediaElement self) (toJSString kind)
            (toJSString label)
            (toJSString language)))
 
foreign import javascript unsafe
        "$1[\"getVideoPlaybackQuality\"]()" js_getVideoPlaybackQuality ::
        HTMLMediaElement -> IO (Nullable VideoPlaybackQuality)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getVideoPlaybackQuality Mozilla HTMLMediaElement.getVideoPlaybackQuality documentation> 
getVideoPlaybackQuality ::
                        (MonadIO m, IsHTMLMediaElement self) =>
                          self -> m (Maybe VideoPlaybackQuality)
getVideoPlaybackQuality self
  = liftIO
      (nullableToMaybe <$>
         (js_getVideoPlaybackQuality (toHTMLMediaElement self)))
 
foreign import javascript unsafe
        "$1[\"webkitShowPlaybackTargetPicker\"]()"
        js_webkitShowPlaybackTargetPicker :: HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitShowPlaybackTargetPicker Mozilla HTMLMediaElement.webkitShowPlaybackTargetPicker documentation> 
webkitShowPlaybackTargetPicker ::
                               (MonadIO m, IsHTMLMediaElement self) => self -> m ()
webkitShowPlaybackTargetPicker self
  = liftIO
      (js_webkitShowPlaybackTargetPicker (toHTMLMediaElement self))
pattern NETWORK_EMPTY = 0
pattern NETWORK_IDLE = 1
pattern NETWORK_LOADING = 2
pattern NETWORK_NO_SOURCE = 3
pattern HAVE_NOTHING = 0
pattern HAVE_METADATA = 1
pattern HAVE_CURRENT_DATA = 2
pattern HAVE_FUTURE_DATA = 3
pattern HAVE_ENOUGH_DATA = 4
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        HTMLMediaElement -> IO (Nullable MediaError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.error Mozilla HTMLMediaElement.error documentation> 
getError ::
         (MonadIO m, IsHTMLMediaElement self) =>
           self -> m (Maybe MediaError)
getError self
  = liftIO
      (nullableToMaybe <$> (js_getError (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.src Mozilla HTMLMediaElement.src documentation> 
setSrc ::
       (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
         self -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (toHTMLMediaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.src Mozilla HTMLMediaElement.src documentation> 
getSrc ::
       (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
         self -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"currentSrc\"]"
        js_getCurrentSrc :: HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentSrc Mozilla HTMLMediaElement.currentSrc documentation> 
getCurrentSrc ::
              (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                self -> m result
getCurrentSrc self
  = liftIO
      (fromJSString <$> (js_getCurrentSrc (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"networkState\"]"
        js_getNetworkState :: HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.networkState Mozilla HTMLMediaElement.networkState documentation> 
getNetworkState ::
                (MonadIO m, IsHTMLMediaElement self) => self -> m Word
getNetworkState self
  = liftIO (js_getNetworkState (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"preload\"] = $2;"
        js_setPreload :: HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.preload Mozilla HTMLMediaElement.preload documentation> 
setPreload ::
           (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
             self -> val -> m ()
setPreload self val
  = liftIO (js_setPreload (toHTMLMediaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"preload\"]" js_getPreload ::
        HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.preload Mozilla HTMLMediaElement.preload documentation> 
getPreload ::
           (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
             self -> m result
getPreload self
  = liftIO
      (fromJSString <$> (js_getPreload (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"buffered\"]" js_getBuffered
        :: HTMLMediaElement -> IO (Nullable TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.buffered Mozilla HTMLMediaElement.buffered documentation> 
getBuffered ::
            (MonadIO m, IsHTMLMediaElement self) =>
              self -> m (Maybe TimeRanges)
getBuffered self
  = liftIO
      (nullableToMaybe <$> (js_getBuffered (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.readyState Mozilla HTMLMediaElement.readyState documentation> 
getReadyState ::
              (MonadIO m, IsHTMLMediaElement self) => self -> m Word
getReadyState self
  = liftIO (js_getReadyState (toHTMLMediaElement self))
 
foreign import javascript unsafe "($1[\"seeking\"] ? 1 : 0)"
        js_getSeeking :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seeking Mozilla HTMLMediaElement.seeking documentation> 
getSeeking ::
           (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getSeeking self = liftIO (js_getSeeking (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"currentTime\"] = $2;"
        js_setCurrentTime :: HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentTime Mozilla HTMLMediaElement.currentTime documentation> 
setCurrentTime ::
               (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
setCurrentTime self val
  = liftIO (js_setCurrentTime (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        js_getCurrentTime :: HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentTime Mozilla HTMLMediaElement.currentTime documentation> 
getCurrentTime ::
               (MonadIO m, IsHTMLMediaElement self) => self -> m Double
getCurrentTime self
  = liftIO (js_getCurrentTime (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.duration Mozilla HTMLMediaElement.duration documentation> 
getDuration ::
            (MonadIO m, IsHTMLMediaElement self) => self -> m Double
getDuration self
  = liftIO (js_getDuration (toHTMLMediaElement self))
 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        js_getPaused :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.paused Mozilla HTMLMediaElement.paused documentation> 
getPaused :: (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getPaused self = liftIO (js_getPaused (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "$1[\"defaultPlaybackRate\"] = $2;" js_setDefaultPlaybackRate ::
        HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultPlaybackRate Mozilla HTMLMediaElement.defaultPlaybackRate documentation> 
setDefaultPlaybackRate ::
                       (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
setDefaultPlaybackRate self val
  = liftIO (js_setDefaultPlaybackRate (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "$1[\"defaultPlaybackRate\"]"
        js_getDefaultPlaybackRate :: HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultPlaybackRate Mozilla HTMLMediaElement.defaultPlaybackRate documentation> 
getDefaultPlaybackRate ::
                       (MonadIO m, IsHTMLMediaElement self) => self -> m Double
getDefaultPlaybackRate self
  = liftIO (js_getDefaultPlaybackRate (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"playbackRate\"] = $2;"
        js_setPlaybackRate :: HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playbackRate Mozilla HTMLMediaElement.playbackRate documentation> 
setPlaybackRate ::
                (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
setPlaybackRate self val
  = liftIO (js_setPlaybackRate (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        js_getPlaybackRate :: HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playbackRate Mozilla HTMLMediaElement.playbackRate documentation> 
getPlaybackRate ::
                (MonadIO m, IsHTMLMediaElement self) => self -> m Double
getPlaybackRate self
  = liftIO (js_getPlaybackRate (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"played\"]" js_getPlayed ::
        HTMLMediaElement -> IO (Nullable TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.played Mozilla HTMLMediaElement.played documentation> 
getPlayed ::
          (MonadIO m, IsHTMLMediaElement self) =>
            self -> m (Maybe TimeRanges)
getPlayed self
  = liftIO
      (nullableToMaybe <$> (js_getPlayed (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"seekable\"]" js_getSeekable
        :: HTMLMediaElement -> IO (Nullable TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seekable Mozilla HTMLMediaElement.seekable documentation> 
getSeekable ::
            (MonadIO m, IsHTMLMediaElement self) =>
              self -> m (Maybe TimeRanges)
getSeekable self
  = liftIO
      (nullableToMaybe <$> (js_getSeekable (toHTMLMediaElement self)))
 
foreign import javascript unsafe "($1[\"ended\"] ? 1 : 0)"
        js_getEnded :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ended Mozilla HTMLMediaElement.ended documentation> 
getEnded :: (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getEnded self = liftIO (js_getEnded (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"autoplay\"] = $2;"
        js_setAutoplay :: HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.autoplay Mozilla HTMLMediaElement.autoplay documentation> 
setAutoplay ::
            (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
setAutoplay self val
  = liftIO (js_setAutoplay (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "($1[\"autoplay\"] ? 1 : 0)"
        js_getAutoplay :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.autoplay Mozilla HTMLMediaElement.autoplay documentation> 
getAutoplay ::
            (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getAutoplay self
  = liftIO (js_getAutoplay (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"loop\"] = $2;" js_setLoop ::
        HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loop Mozilla HTMLMediaElement.loop documentation> 
setLoop ::
        (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
setLoop self val
  = liftIO (js_setLoop (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        js_getLoop :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loop Mozilla HTMLMediaElement.loop documentation> 
getLoop :: (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getLoop self = liftIO (js_getLoop (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"controls\"] = $2;"
        js_setControls :: HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controls Mozilla HTMLMediaElement.controls documentation> 
setControls ::
            (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
setControls self val
  = liftIO (js_setControls (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "($1[\"controls\"] ? 1 : 0)"
        js_getControls :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controls Mozilla HTMLMediaElement.controls documentation> 
getControls ::
            (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getControls self
  = liftIO (js_getControls (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        js_setVolume :: HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volume Mozilla HTMLMediaElement.volume documentation> 
setVolume ::
          (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
setVolume self val
  = liftIO (js_setVolume (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "$1[\"volume\"]" js_getVolume ::
        HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volume Mozilla HTMLMediaElement.volume documentation> 
getVolume ::
          (MonadIO m, IsHTMLMediaElement self) => self -> m Double
getVolume self = liftIO (js_getVolume (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"muted\"] = $2;" js_setMuted
        :: HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.muted Mozilla HTMLMediaElement.muted documentation> 
setMuted ::
         (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
setMuted self val
  = liftIO (js_setMuted (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        js_getMuted :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.muted Mozilla HTMLMediaElement.muted documentation> 
getMuted :: (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getMuted self = liftIO (js_getMuted (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"defaultMuted\"] = $2;"
        js_setDefaultMuted :: HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultMuted Mozilla HTMLMediaElement.defaultMuted documentation> 
setDefaultMuted ::
                (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
setDefaultMuted self val
  = liftIO (js_setDefaultMuted (toHTMLMediaElement self) val)
 
foreign import javascript unsafe "($1[\"defaultMuted\"] ? 1 : 0)"
        js_getDefaultMuted :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultMuted Mozilla HTMLMediaElement.defaultMuted documentation> 
getDefaultMuted ::
                (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getDefaultMuted self
  = liftIO (js_getDefaultMuted (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onemptied Mozilla HTMLMediaElement.onemptied documentation> 
emptied ::
        (IsHTMLMediaElement self, IsEventTarget self) =>
          EventName self Event
emptied = unsafeEventName (toJSString "emptied")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onloadedmetadata Mozilla HTMLMediaElement.onloadedmetadata documentation> 
loadedMetadata ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
loadedMetadata = unsafeEventName (toJSString "loadedmetadata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onloadeddata Mozilla HTMLMediaElement.onloadeddata documentation> 
loadedData ::
           (IsHTMLMediaElement self, IsEventTarget self) =>
             EventName self Event
loadedData = unsafeEventName (toJSString "loadeddata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.oncanplay Mozilla HTMLMediaElement.oncanplay documentation> 
canPlay ::
        (IsHTMLMediaElement self, IsEventTarget self) =>
          EventName self Event
canPlay = unsafeEventName (toJSString "canplay")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.oncanplaythrough Mozilla HTMLMediaElement.oncanplaythrough documentation> 
canPlayThrough ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
canPlayThrough = unsafeEventName (toJSString "canplaythrough")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onplaying Mozilla HTMLMediaElement.onplaying documentation> 
playing ::
        (IsHTMLMediaElement self, IsEventTarget self) =>
          EventName self Event
playing = unsafeEventName (toJSString "playing")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onended Mozilla HTMLMediaElement.onended documentation> 
ended ::
      (IsHTMLMediaElement self, IsEventTarget self) =>
        EventName self Event
ended = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwaiting Mozilla HTMLMediaElement.onwaiting documentation> 
waiting ::
        (IsHTMLMediaElement self, IsEventTarget self) =>
          EventName self Event
waiting = unsafeEventName (toJSString "waiting")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ondurationchange Mozilla HTMLMediaElement.ondurationchange documentation> 
durationChange ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
durationChange = unsafeEventName (toJSString "durationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ontimeupdate Mozilla HTMLMediaElement.ontimeupdate documentation> 
timeUpdate ::
           (IsHTMLMediaElement self, IsEventTarget self) =>
             EventName self Event
timeUpdate = unsafeEventName (toJSString "timeupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onplay Mozilla HTMLMediaElement.onplay documentation> 
playEvent ::
          (IsHTMLMediaElement self, IsEventTarget self) =>
            EventName self Event
playEvent = unsafeEventName (toJSString "play")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onpause Mozilla HTMLMediaElement.onpause documentation> 
pauseEvent ::
           (IsHTMLMediaElement self, IsEventTarget self) =>
             EventName self Event
pauseEvent = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onratechange Mozilla HTMLMediaElement.onratechange documentation> 
rateChange ::
           (IsHTMLMediaElement self, IsEventTarget self) =>
             EventName self Event
rateChange = unsafeEventName (toJSString "ratechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onvolumechange Mozilla HTMLMediaElement.onvolumechange documentation> 
volumeChange ::
             (IsHTMLMediaElement self, IsEventTarget self) =>
               EventName self Event
volumeChange = unsafeEventName (toJSString "volumechange")
 
foreign import javascript unsafe
        "$1[\"webkitPreservesPitch\"] = $2;" js_setWebkitPreservesPitch ::
        HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitPreservesPitch Mozilla HTMLMediaElement.webkitPreservesPitch documentation> 
setWebkitPreservesPitch ::
                        (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
setWebkitPreservesPitch self val
  = liftIO (js_setWebkitPreservesPitch (toHTMLMediaElement self) val)
 
foreign import javascript unsafe
        "($1[\"webkitPreservesPitch\"] ? 1 : 0)" js_getWebkitPreservesPitch
        :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitPreservesPitch Mozilla HTMLMediaElement.webkitPreservesPitch documentation> 
getWebkitPreservesPitch ::
                        (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getWebkitPreservesPitch self
  = liftIO (js_getWebkitPreservesPitch (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "($1[\"webkitHasClosedCaptions\"] ? 1 : 0)"
        js_getWebkitHasClosedCaptions :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitHasClosedCaptions Mozilla HTMLMediaElement.webkitHasClosedCaptions documentation> 
getWebkitHasClosedCaptions ::
                           (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getWebkitHasClosedCaptions self
  = liftIO (js_getWebkitHasClosedCaptions (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "$1[\"webkitClosedCaptionsVisible\"] = $2;"
        js_setWebkitClosedCaptionsVisible ::
        HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitClosedCaptionsVisible Mozilla HTMLMediaElement.webkitClosedCaptionsVisible documentation> 
setWebkitClosedCaptionsVisible ::
                               (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
setWebkitClosedCaptionsVisible self val
  = liftIO
      (js_setWebkitClosedCaptionsVisible (toHTMLMediaElement self) val)
 
foreign import javascript unsafe
        "($1[\"webkitClosedCaptionsVisible\"] ? 1 : 0)"
        js_getWebkitClosedCaptionsVisible :: HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitClosedCaptionsVisible Mozilla HTMLMediaElement.webkitClosedCaptionsVisible documentation> 
getWebkitClosedCaptionsVisible ::
                               (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getWebkitClosedCaptionsVisible self
  = liftIO
      (js_getWebkitClosedCaptionsVisible (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "$1[\"webkitAudioDecodedByteCount\"]"
        js_getWebkitAudioDecodedByteCount :: HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitAudioDecodedByteCount Mozilla HTMLMediaElement.webkitAudioDecodedByteCount documentation> 
getWebkitAudioDecodedByteCount ::
                               (MonadIO m, IsHTMLMediaElement self) => self -> m Word
getWebkitAudioDecodedByteCount self
  = liftIO
      (js_getWebkitAudioDecodedByteCount (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "$1[\"webkitVideoDecodedByteCount\"]"
        js_getWebkitVideoDecodedByteCount :: HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitVideoDecodedByteCount Mozilla HTMLMediaElement.webkitVideoDecodedByteCount documentation> 
getWebkitVideoDecodedByteCount ::
                               (MonadIO m, IsHTMLMediaElement self) => self -> m Word
getWebkitVideoDecodedByteCount self
  = liftIO
      (js_getWebkitVideoDecodedByteCount (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeyadded Mozilla HTMLMediaElement.onwebkitkeyadded documentation> 
webKitKeyAdded ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
webKitKeyAdded = unsafeEventName (toJSString "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeyerror Mozilla HTMLMediaElement.onwebkitkeyerror documentation> 
webKitKeyError ::
               (IsHTMLMediaElement self, IsEventTarget self) =>
                 EventName self Event
webKitKeyError = unsafeEventName (toJSString "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeymessage Mozilla HTMLMediaElement.onwebkitkeymessage documentation> 
webKitKeyMessage ::
                 (IsHTMLMediaElement self, IsEventTarget self) =>
                   EventName self Event
webKitKeyMessage = unsafeEventName (toJSString "webkitkeymessage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitneedkey Mozilla HTMLMediaElement.onwebkitneedkey documentation> 
webKitNeedKey ::
              (IsHTMLMediaElement self, IsEventTarget self) =>
                EventName self Event
webKitNeedKey = unsafeEventName (toJSString "webkitneedkey")
 
foreign import javascript unsafe "$1[\"webkitKeys\"]"
        js_getWebkitKeys :: HTMLMediaElement -> IO (Nullable MediaKeys)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitKeys Mozilla HTMLMediaElement.webkitKeys documentation> 
getWebkitKeys ::
              (MonadIO m, IsHTMLMediaElement self) => self -> m (Maybe MediaKeys)
getWebkitKeys self
  = liftIO
      (nullableToMaybe <$> (js_getWebkitKeys (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"audioTracks\"]"
        js_getAudioTracks ::
        HTMLMediaElement -> IO (Nullable AudioTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.audioTracks Mozilla HTMLMediaElement.audioTracks documentation> 
getAudioTracks ::
               (MonadIO m, IsHTMLMediaElement self) =>
                 self -> m (Maybe AudioTrackList)
getAudioTracks self
  = liftIO
      (nullableToMaybe <$> (js_getAudioTracks (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"textTracks\"]"
        js_getTextTracks :: HTMLMediaElement -> IO (Nullable TextTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.textTracks Mozilla HTMLMediaElement.textTracks documentation> 
getTextTracks ::
              (MonadIO m, IsHTMLMediaElement self) =>
                self -> m (Maybe TextTrackList)
getTextTracks self
  = liftIO
      (nullableToMaybe <$> (js_getTextTracks (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"videoTracks\"]"
        js_getVideoTracks ::
        HTMLMediaElement -> IO (Nullable VideoTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.videoTracks Mozilla HTMLMediaElement.videoTracks documentation> 
getVideoTracks ::
               (MonadIO m, IsHTMLMediaElement self) =>
                 self -> m (Maybe VideoTrackList)
getVideoTracks self
  = liftIO
      (nullableToMaybe <$> (js_getVideoTracks (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"mediaGroup\"] = $2;"
        js_setMediaGroup :: HTMLMediaElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
setMediaGroup ::
              (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
                self -> Maybe val -> m ()
setMediaGroup self val
  = liftIO
      (js_setMediaGroup (toHTMLMediaElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"mediaGroup\"]"
        js_getMediaGroup :: HTMLMediaElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
getMediaGroup ::
              (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                self -> m (Maybe result)
getMediaGroup self
  = liftIO
      (fromMaybeJSString <$>
         (js_getMediaGroup (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"controller\"] = $2;"
        js_setController ::
        HTMLMediaElement -> Nullable MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
setController ::
              (MonadIO m, IsHTMLMediaElement self) =>
                self -> Maybe MediaController -> m ()
setController self val
  = liftIO
      (js_setController (toHTMLMediaElement self) (maybeToNullable val))
 
foreign import javascript unsafe "$1[\"controller\"]"
        js_getController ::
        HTMLMediaElement -> IO (Nullable MediaController)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
getController ::
              (MonadIO m, IsHTMLMediaElement self) =>
                self -> m (Maybe MediaController)
getController self
  = liftIO
      (nullableToMaybe <$> (js_getController (toHTMLMediaElement self)))
 
foreign import javascript unsafe
        "($1[\"webkitCurrentPlaybackTargetIsWireless\"] ? 1 : 0)"
        js_getWebkitCurrentPlaybackTargetIsWireless ::
        HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless Mozilla HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless documentation> 
getWebkitCurrentPlaybackTargetIsWireless ::
                                         (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
getWebkitCurrentPlaybackTargetIsWireless self
  = liftIO
      (js_getWebkitCurrentPlaybackTargetIsWireless
         (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitcurrentplaybacktargetiswirelesschanged Mozilla HTMLMediaElement.onwebkitcurrentplaybacktargetiswirelesschanged documentation> 
webKitCurrentPlaybackTargetIsWirelessChanged ::
                                             (IsHTMLMediaElement self, IsEventTarget self) =>
                                               EventName self Event
webKitCurrentPlaybackTargetIsWirelessChanged
  = unsafeEventName
      (toJSString "webkitcurrentplaybacktargetiswirelesschanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitplaybacktargetavailabilitychanged Mozilla HTMLMediaElement.onwebkitplaybacktargetavailabilitychanged documentation> 
webKitPlaybackTargetAvailabilityChanged ::
                                        (IsHTMLMediaElement self, IsEventTarget self) =>
                                          EventName self Event
webKitPlaybackTargetAvailabilityChanged
  = unsafeEventName
      (toJSString "webkitplaybacktargetavailabilitychanged")
 
foreign import javascript unsafe "$1[\"srcObject\"] = $2;"
        js_setSrcObject ::
        HTMLMediaElement -> Nullable MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
setSrcObject ::
             (MonadIO m, IsHTMLMediaElement self) =>
               self -> Maybe MediaStream -> m ()
setSrcObject self val
  = liftIO
      (js_setSrcObject (toHTMLMediaElement self) (maybeToNullable val))
 
foreign import javascript unsafe "$1[\"srcObject\"]"
        js_getSrcObject :: HTMLMediaElement -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
getSrcObject ::
             (MonadIO m, IsHTMLMediaElement self) =>
               self -> m (Maybe MediaStream)
getSrcObject self
  = liftIO
      ((js_getSrcObject (toHTMLMediaElement self)) >>=
         fromJSValUnchecked)