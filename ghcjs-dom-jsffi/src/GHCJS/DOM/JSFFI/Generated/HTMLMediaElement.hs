{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLMediaElement
       (js_load, load, js_canPlayType, canPlayType, canPlayType_,
        js_getStartDate, getStartDate, getStartDate_, js_play, play,
        js_pause, pause, js_fastSeek, fastSeek, js_webkitSetMediaKeys,
        webkitSetMediaKeys, js_setMediaKeys, setMediaKeys, js_addTextTrack,
        addTextTrack, addTextTrack_, js_getVideoPlaybackQuality,
        getVideoPlaybackQuality, getVideoPlaybackQuality_,
        js_webkitShowPlaybackTargetPicker, webkitShowPlaybackTargetPicker,
        pattern NETWORK_EMPTY, pattern NETWORK_IDLE,
        pattern NETWORK_LOADING, pattern NETWORK_NO_SOURCE,
        pattern HAVE_NOTHING, pattern HAVE_METADATA,
        pattern HAVE_CURRENT_DATA, pattern HAVE_FUTURE_DATA,
        pattern HAVE_ENOUGH_DATA, js_getError, getError, js_setSrc, setSrc,
        js_getSrc, getSrc, js_setSrcObject, setSrcObject, js_getSrcObject,
        getSrcObject, getSrcObjectUnsafe, getSrcObjectUnchecked,
        js_getCurrentSrc, getCurrentSrc, js_setCrossOrigin, setCrossOrigin,
        js_getCrossOrigin, getCrossOrigin, getCrossOriginUnsafe,
        getCrossOriginUnchecked, js_getNetworkState, getNetworkState,
        js_setPreload, setPreload, js_getPreload, getPreload,
        js_getBuffered, getBuffered, js_getReadyState, getReadyState,
        js_getSeeking, getSeeking, js_setCurrentTime, setCurrentTime,
        js_getCurrentTime, getCurrentTime, js_getDuration, getDuration,
        js_getPaused, getPaused, js_setDefaultPlaybackRate,
        setDefaultPlaybackRate, js_getDefaultPlaybackRate,
        getDefaultPlaybackRate, js_setPlaybackRate, setPlaybackRate,
        js_getPlaybackRate, getPlaybackRate, js_getPlayed, getPlayed,
        js_getSeekable, getSeekable, js_getEnded, getEnded, js_setAutoplay,
        setAutoplay, js_getAutoplay, getAutoplay, js_setLoop, setLoop,
        js_getLoop, getLoop, js_setControls, setControls, js_getControls,
        getControls, js_setVolume, setVolume, js_getVolume, getVolume,
        js_setMuted, setMuted, js_getMuted, getMuted, js_setDefaultMuted,
        setDefaultMuted, js_getDefaultMuted, getDefaultMuted,
        js_setWebkitPreservesPitch, setWebkitPreservesPitch,
        js_getWebkitPreservesPitch, getWebkitPreservesPitch,
        js_getWebkitHasClosedCaptions, getWebkitHasClosedCaptions,
        js_setWebkitClosedCaptionsVisible, setWebkitClosedCaptionsVisible,
        js_getWebkitClosedCaptionsVisible, getWebkitClosedCaptionsVisible,
        js_getWebkitAudioDecodedByteCount, getWebkitAudioDecodedByteCount,
        js_getWebkitVideoDecodedByteCount, getWebkitVideoDecodedByteCount,
        js_getWebkitKeys, getWebkitKeys, js_getMediaKeys, getMediaKeys,
        encrypted, waitingforkey, js_getAudioTracks, getAudioTracks,
        js_getTextTracks, getTextTracks, js_getVideoTracks, getVideoTracks,
        js_setMediaGroup, setMediaGroup, js_getMediaGroup, getMediaGroup,
        js_setController, setController, js_getController, getController,
        getControllerUnsafe, getControllerUnchecked,
        js_getWebkitCurrentPlaybackTargetIsWireless,
        getWebkitCurrentPlaybackTargetIsWireless, js_setKind, setKind,
        js_getKind, getKind, js_setSession, setSession, js_getSession,
        getSession, getSessionUnsafe, getSessionUnchecked,
        HTMLMediaElement(..), gTypeHTMLMediaElement, IsHTMLMediaElement,
        toHTMLMediaElement)
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
 
foreign import javascript unsafe "$1[\"load\"]()" js_load ::
        HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.load Mozilla HTMLMediaElement.load documentation> 
load :: (MonadIO m, IsHTMLMediaElement self) => self -> m ()
load self = liftIO (js_load (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"canPlayType\"]($2)"
        js_canPlayType :: HTMLMediaElement -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayType Mozilla HTMLMediaElement.canPlayType documentation> 
canPlayType ::
            (MonadIO m, IsHTMLMediaElement self, ToJSString type',
             FromJSString result) =>
              self -> type' -> m result
canPlayType self type'
  = liftIO
      (fromJSString <$>
         (js_canPlayType (toHTMLMediaElement self) (toJSString type')))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayType Mozilla HTMLMediaElement.canPlayType documentation> 
canPlayType_ ::
             (MonadIO m, IsHTMLMediaElement self, ToJSString type') =>
               self -> type' -> m ()
canPlayType_ self type'
  = liftIO
      (void
         (js_canPlayType (toHTMLMediaElement self) (toJSString type')))
 
foreign import javascript unsafe "$1[\"getStartDate\"]()"
        js_getStartDate :: HTMLMediaElement -> IO Date

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getStartDate Mozilla HTMLMediaElement.getStartDate documentation> 
getStartDate ::
             (MonadIO m, IsHTMLMediaElement self) => self -> m Date
getStartDate self
  = liftIO (js_getStartDate (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getStartDate Mozilla HTMLMediaElement.getStartDate documentation> 
getStartDate_ ::
              (MonadIO m, IsHTMLMediaElement self) => self -> m ()
getStartDate_ self
  = liftIO (void (js_getStartDate (toHTMLMediaElement self)))
 
foreign import javascript interruptible
        "$1[\"play\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_play :: HTMLMediaElement -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.play Mozilla HTMLMediaElement.play documentation> 
play :: (MonadIO m, IsHTMLMediaElement self) => self -> m ()
play self
  = liftIO
      ((js_play (toHTMLMediaElement self)) >>= maybeThrowPromiseRejected)
 
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
 
foreign import javascript unsafe "$1[\"webkitSetMediaKeys\"]($2)"
        js_webkitSetMediaKeys ::
        HTMLMediaElement -> Optional WebKitMediaKeys -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitSetMediaKeys Mozilla HTMLMediaElement.webkitSetMediaKeys documentation> 
webkitSetMediaKeys ::
                   (MonadIO m, IsHTMLMediaElement self) =>
                     self -> Maybe WebKitMediaKeys -> m ()
webkitSetMediaKeys self mediaKeys
  = liftIO
      (js_webkitSetMediaKeys (toHTMLMediaElement self)
         (maybeToOptional mediaKeys))
 
foreign import javascript interruptible
        "$1[\"setMediaKeys\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_setMediaKeys ::
        HTMLMediaElement -> Optional MediaKeys -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.setMediaKeys Mozilla HTMLMediaElement.setMediaKeys documentation> 
setMediaKeys ::
             (MonadIO m, IsHTMLMediaElement self) =>
               self -> Maybe MediaKeys -> m ()
setMediaKeys self mediaKeys
  = liftIO
      ((js_setMediaKeys (toHTMLMediaElement self)
          (maybeToOptional mediaKeys))
         >>= maybeThrowPromiseRejected)
 
foreign import javascript safe "$1[\"addTextTrack\"]($2, $3, $4)"
        js_addTextTrack ::
        HTMLMediaElement ->
          JSString -> Optional JSString -> Optional JSString -> IO TextTrack

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.addTextTrack Mozilla HTMLMediaElement.addTextTrack documentation> 
addTextTrack ::
             (MonadIO m, IsHTMLMediaElement self, ToJSString kind,
              ToJSString label, ToJSString language) =>
               self -> kind -> Maybe label -> Maybe language -> m TextTrack
addTextTrack self kind label language
  = liftIO
      (js_addTextTrack (toHTMLMediaElement self) (toJSString kind)
         (toOptionalJSString label)
         (toOptionalJSString language))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.addTextTrack Mozilla HTMLMediaElement.addTextTrack documentation> 
addTextTrack_ ::
              (MonadIO m, IsHTMLMediaElement self, ToJSString kind,
               ToJSString label, ToJSString language) =>
                self -> kind -> Maybe label -> Maybe language -> m ()
addTextTrack_ self kind label language
  = liftIO
      (void
         (js_addTextTrack (toHTMLMediaElement self) (toJSString kind)
            (toOptionalJSString label)
            (toOptionalJSString language)))
 
foreign import javascript unsafe
        "$1[\"getVideoPlaybackQuality\"]()" js_getVideoPlaybackQuality ::
        HTMLMediaElement -> IO VideoPlaybackQuality

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getVideoPlaybackQuality Mozilla HTMLMediaElement.getVideoPlaybackQuality documentation> 
getVideoPlaybackQuality ::
                        (MonadIO m, IsHTMLMediaElement self) =>
                          self -> m VideoPlaybackQuality
getVideoPlaybackQuality self
  = liftIO (js_getVideoPlaybackQuality (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.getVideoPlaybackQuality Mozilla HTMLMediaElement.getVideoPlaybackQuality documentation> 
getVideoPlaybackQuality_ ::
                         (MonadIO m, IsHTMLMediaElement self) => self -> m ()
getVideoPlaybackQuality_ self
  = liftIO
      (void (js_getVideoPlaybackQuality (toHTMLMediaElement self)))
 
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
        HTMLMediaElement -> IO MediaError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.error Mozilla HTMLMediaElement.error documentation> 
getError ::
         (MonadIO m, IsHTMLMediaElement self) => self -> m MediaError
getError self = liftIO (js_getError (toHTMLMediaElement self))
 
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
 
foreign import javascript unsafe "$1[\"srcObject\"] = $2;"
        js_setSrcObject ::
        HTMLMediaElement -> Optional MediaProvider -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
setSrcObject ::
             (MonadIO m, IsHTMLMediaElement self, IsMediaProvider val) =>
               self -> Maybe val -> m ()
setSrcObject self val
  = liftIO
      (js_setSrcObject (toHTMLMediaElement self)
         (maybeToOptional (fmap toMediaProvider val)))
 
foreign import javascript unsafe "$1[\"srcObject\"]"
        js_getSrcObject :: HTMLMediaElement -> IO (Nullable MediaProvider)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
getSrcObject ::
             (MonadIO m, IsHTMLMediaElement self) =>
               self -> m (Maybe MediaProvider)
getSrcObject self
  = liftIO
      (nullableToMaybe <$> (js_getSrcObject (toHTMLMediaElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
getSrcObjectUnsafe ::
                   (MonadIO m, IsHTMLMediaElement self, HasCallStack) =>
                     self -> m MediaProvider
getSrcObjectUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSrcObject (toHTMLMediaElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.srcObject Mozilla HTMLMediaElement.srcObject documentation> 
getSrcObjectUnchecked ::
                      (MonadIO m, IsHTMLMediaElement self) => self -> m MediaProvider
getSrcObjectUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getSrcObject (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"currentSrc\"]"
        js_getCurrentSrc :: HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentSrc Mozilla HTMLMediaElement.currentSrc documentation> 
getCurrentSrc ::
              (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                self -> m result
getCurrentSrc self
  = liftIO
      (fromJSString <$> (js_getCurrentSrc (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        js_setCrossOrigin :: HTMLMediaElement -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.crossOrigin Mozilla HTMLMediaElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
                 self -> Maybe val -> m ()
setCrossOrigin self val
  = liftIO
      (js_setCrossOrigin (toHTMLMediaElement self)
         (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        js_getCrossOrigin :: HTMLMediaElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.crossOrigin Mozilla HTMLMediaElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                 self -> m (Maybe result)
getCrossOrigin self
  = liftIO
      (fromMaybeJSString <$>
         (js_getCrossOrigin (toHTMLMediaElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.crossOrigin Mozilla HTMLMediaElement.crossOrigin documentation> 
getCrossOriginUnsafe ::
                     (MonadIO m, IsHTMLMediaElement self, HasCallStack,
                      FromJSString result) =>
                       self -> m result
getCrossOriginUnsafe self
  = liftIO
      ((fromMaybeJSString <$>
          (js_getCrossOrigin (toHTMLMediaElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.crossOrigin Mozilla HTMLMediaElement.crossOrigin documentation> 
getCrossOriginUnchecked ::
                        (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                          self -> m result
getCrossOriginUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getCrossOrigin (toHTMLMediaElement self)))
 
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
        :: HTMLMediaElement -> IO TimeRanges

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.buffered Mozilla HTMLMediaElement.buffered documentation> 
getBuffered ::
            (MonadIO m, IsHTMLMediaElement self) => self -> m TimeRanges
getBuffered self
  = liftIO (js_getBuffered (toHTMLMediaElement self))
 
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
 
foreign import javascript safe "$1[\"currentTime\"] = $2;"
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
        HTMLMediaElement -> IO TimeRanges

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.played Mozilla HTMLMediaElement.played documentation> 
getPlayed ::
          (MonadIO m, IsHTMLMediaElement self) => self -> m TimeRanges
getPlayed self = liftIO (js_getPlayed (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"seekable\"]" js_getSeekable
        :: HTMLMediaElement -> IO TimeRanges

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seekable Mozilla HTMLMediaElement.seekable documentation> 
getSeekable ::
            (MonadIO m, IsHTMLMediaElement self) => self -> m TimeRanges
getSeekable self
  = liftIO (js_getSeekable (toHTMLMediaElement self))
 
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
 
foreign import javascript safe "$1[\"volume\"] = $2;" js_setVolume
        :: HTMLMediaElement -> Double -> IO ()

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
 
foreign import javascript unsafe "$1[\"webkitKeys\"]"
        js_getWebkitKeys :: HTMLMediaElement -> IO WebKitMediaKeys

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitKeys Mozilla HTMLMediaElement.webkitKeys documentation> 
getWebkitKeys ::
              (MonadIO m, IsHTMLMediaElement self) => self -> m WebKitMediaKeys
getWebkitKeys self
  = liftIO (js_getWebkitKeys (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"mediaKeys\"]"
        js_getMediaKeys :: HTMLMediaElement -> IO MediaKeys

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaKeys Mozilla HTMLMediaElement.mediaKeys documentation> 
getMediaKeys ::
             (MonadIO m, IsHTMLMediaElement self) => self -> m MediaKeys
getMediaKeys self
  = liftIO (js_getMediaKeys (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onencrypted Mozilla HTMLMediaElement.onencrypted documentation> 
encrypted ::
          (IsHTMLMediaElement self, IsEventTarget self) =>
            EventName self onencrypted
encrypted = unsafeEventName (toJSString "encrypted")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwaitingforkey Mozilla HTMLMediaElement.onwaitingforkey documentation> 
waitingforkey ::
              (IsHTMLMediaElement self, IsEventTarget self) =>
                EventName self onwaitingforkey
waitingforkey = unsafeEventName (toJSString "waitingforkey")
 
foreign import javascript unsafe "$1[\"audioTracks\"]"
        js_getAudioTracks :: HTMLMediaElement -> IO AudioTrackList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.audioTracks Mozilla HTMLMediaElement.audioTracks documentation> 
getAudioTracks ::
               (MonadIO m, IsHTMLMediaElement self) => self -> m AudioTrackList
getAudioTracks self
  = liftIO (js_getAudioTracks (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"textTracks\"]"
        js_getTextTracks :: HTMLMediaElement -> IO TextTrackList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.textTracks Mozilla HTMLMediaElement.textTracks documentation> 
getTextTracks ::
              (MonadIO m, IsHTMLMediaElement self) => self -> m TextTrackList
getTextTracks self
  = liftIO (js_getTextTracks (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"videoTracks\"]"
        js_getVideoTracks :: HTMLMediaElement -> IO VideoTrackList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.videoTracks Mozilla HTMLMediaElement.videoTracks documentation> 
getVideoTracks ::
               (MonadIO m, IsHTMLMediaElement self) => self -> m VideoTrackList
getVideoTracks self
  = liftIO (js_getVideoTracks (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"mediaGroup\"] = $2;"
        js_setMediaGroup :: HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
setMediaGroup ::
              (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
                self -> val -> m ()
setMediaGroup self val
  = liftIO
      (js_setMediaGroup (toHTMLMediaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"mediaGroup\"]"
        js_getMediaGroup :: HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
getMediaGroup ::
              (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                self -> m result
getMediaGroup self
  = liftIO
      (fromJSString <$> (js_getMediaGroup (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"controller\"] = $2;"
        js_setController ::
        HTMLMediaElement -> Optional MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
setController ::
              (MonadIO m, IsHTMLMediaElement self) =>
                self -> Maybe MediaController -> m ()
setController self val
  = liftIO
      (js_setController (toHTMLMediaElement self) (maybeToOptional val))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
getControllerUnsafe ::
                    (MonadIO m, IsHTMLMediaElement self, HasCallStack) =>
                      self -> m MediaController
getControllerUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getController (toHTMLMediaElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
getControllerUnchecked ::
                       (MonadIO m, IsHTMLMediaElement self) => self -> m MediaController
getControllerUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getController (toHTMLMediaElement self)))
 
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
 
foreign import javascript unsafe "$1[\"kind\"] = $2;" js_setKind ::
        HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.kind Mozilla HTMLMediaElement.kind documentation> 
setKind ::
        (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
          self -> val -> m ()
setKind self val
  = liftIO (js_setKind (toHTMLMediaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.kind Mozilla HTMLMediaElement.kind documentation> 
getKind ::
        (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
          self -> m result
getKind self
  = liftIO (fromJSString <$> (js_getKind (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"session\"] = $2;"
        js_setSession :: HTMLMediaElement -> Optional MediaSession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.session Mozilla HTMLMediaElement.session documentation> 
setSession ::
           (MonadIO m, IsHTMLMediaElement self) =>
             self -> Maybe MediaSession -> m ()
setSession self val
  = liftIO
      (js_setSession (toHTMLMediaElement self) (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"session\"]" js_getSession ::
        HTMLMediaElement -> IO (Nullable MediaSession)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.session Mozilla HTMLMediaElement.session documentation> 
getSession ::
           (MonadIO m, IsHTMLMediaElement self) =>
             self -> m (Maybe MediaSession)
getSession self
  = liftIO
      (nullableToMaybe <$> (js_getSession (toHTMLMediaElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.session Mozilla HTMLMediaElement.session documentation> 
getSessionUnsafe ::
                 (MonadIO m, IsHTMLMediaElement self, HasCallStack) =>
                   self -> m MediaSession
getSessionUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSession (toHTMLMediaElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.session Mozilla HTMLMediaElement.session documentation> 
getSessionUnchecked ::
                    (MonadIO m, IsHTMLMediaElement self) => self -> m MediaSession
getSessionUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getSession (toHTMLMediaElement self)))