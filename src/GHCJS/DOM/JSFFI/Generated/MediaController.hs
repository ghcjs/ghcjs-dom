{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaController
       (js_newMediaController, newMediaController, js_play, play,
        js_pause, pause, js_unpause, unpause, js_getBuffered, getBuffered,
        js_getSeekable, getSeekable, js_getDuration, getDuration,
        js_setCurrentTime, setCurrentTime, js_getCurrentTime,
        getCurrentTime, js_getPaused, getPaused, js_getPlayed, getPlayed,
        js_getPlaybackState, getPlaybackState, js_setDefaultPlaybackRate,
        setDefaultPlaybackRate, js_getDefaultPlaybackRate,
        getDefaultPlaybackRate, js_setPlaybackRate, setPlaybackRate,
        js_getPlaybackRate, getPlaybackRate, js_setVolume, setVolume,
        js_getVolume, getVolume, js_setMuted, setMuted, js_getMuted,
        getMuted, MediaController, castToMediaController,
        gTypeMediaController)
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
 
foreign import javascript unsafe
        "new window[\"MediaController\"]()" js_newMediaController ::
        IO MediaController

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController Mozilla MediaController documentation> 
newMediaController :: (MonadIO m) => m MediaController
newMediaController = liftIO (js_newMediaController)
 
foreign import javascript unsafe "$1[\"play\"]()" js_play ::
        MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.play Mozilla MediaController.play documentation> 
play :: (MonadIO m) => MediaController -> m ()
play self = liftIO (js_play (self))
 
foreign import javascript unsafe "$1[\"pause\"]()" js_pause ::
        MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.pause Mozilla MediaController.pause documentation> 
pause :: (MonadIO m) => MediaController -> m ()
pause self = liftIO (js_pause (self))
 
foreign import javascript unsafe "$1[\"unpause\"]()" js_unpause ::
        MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.unpause Mozilla MediaController.unpause documentation> 
unpause :: (MonadIO m) => MediaController -> m ()
unpause self = liftIO (js_unpause (self))
 
foreign import javascript unsafe "$1[\"buffered\"]" js_getBuffered
        :: MediaController -> IO (Nullable TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.buffered Mozilla MediaController.buffered documentation> 
getBuffered ::
            (MonadIO m) => MediaController -> m (Maybe TimeRanges)
getBuffered self
  = liftIO (nullableToMaybe <$> (js_getBuffered (self)))
 
foreign import javascript unsafe "$1[\"seekable\"]" js_getSeekable
        :: MediaController -> IO (Nullable TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.seekable Mozilla MediaController.seekable documentation> 
getSeekable ::
            (MonadIO m) => MediaController -> m (Maybe TimeRanges)
getSeekable self
  = liftIO (nullableToMaybe <$> (js_getSeekable (self)))
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.duration Mozilla MediaController.duration documentation> 
getDuration :: (MonadIO m) => MediaController -> m Double
getDuration self = liftIO (js_getDuration (self))
 
foreign import javascript unsafe "$1[\"currentTime\"] = $2;"
        js_setCurrentTime :: MediaController -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.currentTime Mozilla MediaController.currentTime documentation> 
setCurrentTime :: (MonadIO m) => MediaController -> Double -> m ()
setCurrentTime self val = liftIO (js_setCurrentTime (self) val)
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        js_getCurrentTime :: MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.currentTime Mozilla MediaController.currentTime documentation> 
getCurrentTime :: (MonadIO m) => MediaController -> m Double
getCurrentTime self = liftIO (js_getCurrentTime (self))
 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        js_getPaused :: MediaController -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.paused Mozilla MediaController.paused documentation> 
getPaused :: (MonadIO m) => MediaController -> m Bool
getPaused self = liftIO (js_getPaused (self))
 
foreign import javascript unsafe "$1[\"played\"]" js_getPlayed ::
        MediaController -> IO (Nullable TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.played Mozilla MediaController.played documentation> 
getPlayed :: (MonadIO m) => MediaController -> m (Maybe TimeRanges)
getPlayed self = liftIO (nullableToMaybe <$> (js_getPlayed (self)))
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        js_getPlaybackState :: MediaController -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackState Mozilla MediaController.playbackState documentation> 
getPlaybackState ::
                 (MonadIO m, FromJSString result) => MediaController -> m result
getPlaybackState self
  = liftIO (fromJSString <$> (js_getPlaybackState (self)))
 
foreign import javascript unsafe
        "$1[\"defaultPlaybackRate\"] = $2;" js_setDefaultPlaybackRate ::
        MediaController -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.defaultPlaybackRate Mozilla MediaController.defaultPlaybackRate documentation> 
setDefaultPlaybackRate ::
                       (MonadIO m) => MediaController -> Double -> m ()
setDefaultPlaybackRate self val
  = liftIO (js_setDefaultPlaybackRate (self) val)
 
foreign import javascript unsafe "$1[\"defaultPlaybackRate\"]"
        js_getDefaultPlaybackRate :: MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.defaultPlaybackRate Mozilla MediaController.defaultPlaybackRate documentation> 
getDefaultPlaybackRate ::
                       (MonadIO m) => MediaController -> m Double
getDefaultPlaybackRate self
  = liftIO (js_getDefaultPlaybackRate (self))
 
foreign import javascript unsafe "$1[\"playbackRate\"] = $2;"
        js_setPlaybackRate :: MediaController -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackRate Mozilla MediaController.playbackRate documentation> 
setPlaybackRate :: (MonadIO m) => MediaController -> Double -> m ()
setPlaybackRate self val = liftIO (js_setPlaybackRate (self) val)
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        js_getPlaybackRate :: MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackRate Mozilla MediaController.playbackRate documentation> 
getPlaybackRate :: (MonadIO m) => MediaController -> m Double
getPlaybackRate self = liftIO (js_getPlaybackRate (self))
 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        js_setVolume :: MediaController -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.volume Mozilla MediaController.volume documentation> 
setVolume :: (MonadIO m) => MediaController -> Double -> m ()
setVolume self val = liftIO (js_setVolume (self) val)
 
foreign import javascript unsafe "$1[\"volume\"]" js_getVolume ::
        MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.volume Mozilla MediaController.volume documentation> 
getVolume :: (MonadIO m) => MediaController -> m Double
getVolume self = liftIO (js_getVolume (self))
 
foreign import javascript unsafe "$1[\"muted\"] = $2;" js_setMuted
        :: MediaController -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.muted Mozilla MediaController.muted documentation> 
setMuted :: (MonadIO m) => MediaController -> Bool -> m ()
setMuted self val = liftIO (js_setMuted (self) val)
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        js_getMuted :: MediaController -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.muted Mozilla MediaController.muted documentation> 
getMuted :: (MonadIO m) => MediaController -> m Bool
getMuted self = liftIO (js_getMuted (self))