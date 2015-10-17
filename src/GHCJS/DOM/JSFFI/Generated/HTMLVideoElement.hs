{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLVideoElement
       (js_webkitEnterFullscreen, webkitEnterFullscreen,
        js_webkitExitFullscreen, webkitExitFullscreen,
        js_webkitEnterFullScreen, webkitEnterFullScreen,
        js_webkitExitFullScreen, webkitExitFullScreen,
        js_webkitSupportsPresentationMode, webkitSupportsPresentationMode,
        js_webkitSetPresentationMode, webkitSetPresentationMode,
        js_setWidth, setWidth, js_getWidth, getWidth, js_setHeight,
        setHeight, js_getHeight, getHeight, js_getVideoWidth,
        getVideoWidth, js_getVideoHeight, getVideoHeight, js_setPoster,
        setPoster, js_getPoster, getPoster, js_getWebkitSupportsFullscreen,
        getWebkitSupportsFullscreen, js_getWebkitDisplayingFullscreen,
        getWebkitDisplayingFullscreen,
        js_setWebkitWirelessVideoPlaybackDisabled,
        setWebkitWirelessVideoPlaybackDisabled,
        js_getWebkitWirelessVideoPlaybackDisabled,
        getWebkitWirelessVideoPlaybackDisabled,
        js_getWebkitDecodedFrameCount, getWebkitDecodedFrameCount,
        js_getWebkitDroppedFrameCount, getWebkitDroppedFrameCount,
        js_getWebkitPresentationMode, getWebkitPresentationMode,
        webKitPresentationModeChanged, HTMLVideoElement,
        castToHTMLVideoElement, gTypeHTMLVideoElement)
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
 
foreign import javascript unsafe "$1[\"webkitEnterFullscreen\"]()"
        js_webkitEnterFullscreen :: HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitEnterFullscreen Mozilla HTMLVideoElement.webkitEnterFullscreen documentation> 
webkitEnterFullscreen :: (MonadIO m) => HTMLVideoElement -> m ()
webkitEnterFullscreen self
  = liftIO (js_webkitEnterFullscreen (self))
 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        js_webkitExitFullscreen :: HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitExitFullscreen Mozilla HTMLVideoElement.webkitExitFullscreen documentation> 
webkitExitFullscreen :: (MonadIO m) => HTMLVideoElement -> m ()
webkitExitFullscreen self = liftIO (js_webkitExitFullscreen (self))
 
foreign import javascript unsafe "$1[\"webkitEnterFullScreen\"]()"
        js_webkitEnterFullScreen :: HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitEnterFullScreen Mozilla HTMLVideoElement.webkitEnterFullScreen documentation> 
webkitEnterFullScreen :: (MonadIO m) => HTMLVideoElement -> m ()
webkitEnterFullScreen self
  = liftIO (js_webkitEnterFullScreen (self))
 
foreign import javascript unsafe "$1[\"webkitExitFullScreen\"]()"
        js_webkitExitFullScreen :: HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitExitFullScreen Mozilla HTMLVideoElement.webkitExitFullScreen documentation> 
webkitExitFullScreen :: (MonadIO m) => HTMLVideoElement -> m ()
webkitExitFullScreen self = liftIO (js_webkitExitFullScreen (self))
 
foreign import javascript unsafe
        "($1[\"webkitSupportsPresentationMode\"]($2) ? 1 : 0)"
        js_webkitSupportsPresentationMode ::
        HTMLVideoElement -> JSVal -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSupportsPresentationMode Mozilla HTMLVideoElement.webkitSupportsPresentationMode documentation> 
webkitSupportsPresentationMode ::
                               (MonadIO m) => HTMLVideoElement -> VideoPresentationMode -> m Bool
webkitSupportsPresentationMode self mode
  = liftIO (js_webkitSupportsPresentationMode (self) (pToJSVal mode))
 
foreign import javascript unsafe
        "$1[\"webkitSetPresentationMode\"]($2)"
        js_webkitSetPresentationMode :: HTMLVideoElement -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSetPresentationMode Mozilla HTMLVideoElement.webkitSetPresentationMode documentation> 
webkitSetPresentationMode ::
                          (MonadIO m) => HTMLVideoElement -> VideoPresentationMode -> m ()
webkitSetPresentationMode self mode
  = liftIO (js_webkitSetPresentationMode (self) (pToJSVal mode))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: HTMLVideoElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.width Mozilla HTMLVideoElement.width documentation> 
setWidth :: (MonadIO m) => HTMLVideoElement -> Word -> m ()
setWidth self val = liftIO (js_setWidth (self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.width Mozilla HTMLVideoElement.width documentation> 
getWidth :: (MonadIO m) => HTMLVideoElement -> m Word
getWidth self = liftIO (js_getWidth (self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: HTMLVideoElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.height Mozilla HTMLVideoElement.height documentation> 
setHeight :: (MonadIO m) => HTMLVideoElement -> Word -> m ()
setHeight self val = liftIO (js_setHeight (self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.height Mozilla HTMLVideoElement.height documentation> 
getHeight :: (MonadIO m) => HTMLVideoElement -> m Word
getHeight self = liftIO (js_getHeight (self))
 
foreign import javascript unsafe "$1[\"videoWidth\"]"
        js_getVideoWidth :: HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.videoWidth Mozilla HTMLVideoElement.videoWidth documentation> 
getVideoWidth :: (MonadIO m) => HTMLVideoElement -> m Word
getVideoWidth self = liftIO (js_getVideoWidth (self))
 
foreign import javascript unsafe "$1[\"videoHeight\"]"
        js_getVideoHeight :: HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.videoHeight Mozilla HTMLVideoElement.videoHeight documentation> 
getVideoHeight :: (MonadIO m) => HTMLVideoElement -> m Word
getVideoHeight self = liftIO (js_getVideoHeight (self))
 
foreign import javascript unsafe "$1[\"poster\"] = $2;"
        js_setPoster :: HTMLVideoElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.poster Mozilla HTMLVideoElement.poster documentation> 
setPoster ::
          (MonadIO m, ToJSString val) => HTMLVideoElement -> val -> m ()
setPoster self val = liftIO (js_setPoster (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"poster\"]" js_getPoster ::
        HTMLVideoElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.poster Mozilla HTMLVideoElement.poster documentation> 
getPoster ::
          (MonadIO m, FromJSString result) => HTMLVideoElement -> m result
getPoster self = liftIO (fromJSString <$> (js_getPoster (self)))
 
foreign import javascript unsafe
        "($1[\"webkitSupportsFullscreen\"] ? 1 : 0)"
        js_getWebkitSupportsFullscreen :: HTMLVideoElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSupportsFullscreen Mozilla HTMLVideoElement.webkitSupportsFullscreen documentation> 
getWebkitSupportsFullscreen ::
                            (MonadIO m) => HTMLVideoElement -> m Bool
getWebkitSupportsFullscreen self
  = liftIO (js_getWebkitSupportsFullscreen (self))
 
foreign import javascript unsafe
        "($1[\"webkitDisplayingFullscreen\"] ? 1 : 0)"
        js_getWebkitDisplayingFullscreen :: HTMLVideoElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDisplayingFullscreen Mozilla HTMLVideoElement.webkitDisplayingFullscreen documentation> 
getWebkitDisplayingFullscreen ::
                              (MonadIO m) => HTMLVideoElement -> m Bool
getWebkitDisplayingFullscreen self
  = liftIO (js_getWebkitDisplayingFullscreen (self))
 
foreign import javascript unsafe
        "$1[\"webkitWirelessVideoPlaybackDisabled\"] = $2;"
        js_setWebkitWirelessVideoPlaybackDisabled ::
        HTMLVideoElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitWirelessVideoPlaybackDisabled Mozilla HTMLVideoElement.webkitWirelessVideoPlaybackDisabled documentation> 
setWebkitWirelessVideoPlaybackDisabled ::
                                       (MonadIO m) => HTMLVideoElement -> Bool -> m ()
setWebkitWirelessVideoPlaybackDisabled self val
  = liftIO (js_setWebkitWirelessVideoPlaybackDisabled (self) val)
 
foreign import javascript unsafe
        "($1[\"webkitWirelessVideoPlaybackDisabled\"] ? 1 : 0)"
        js_getWebkitWirelessVideoPlaybackDisabled ::
        HTMLVideoElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitWirelessVideoPlaybackDisabled Mozilla HTMLVideoElement.webkitWirelessVideoPlaybackDisabled documentation> 
getWebkitWirelessVideoPlaybackDisabled ::
                                       (MonadIO m) => HTMLVideoElement -> m Bool
getWebkitWirelessVideoPlaybackDisabled self
  = liftIO (js_getWebkitWirelessVideoPlaybackDisabled (self))
 
foreign import javascript unsafe "$1[\"webkitDecodedFrameCount\"]"
        js_getWebkitDecodedFrameCount :: HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDecodedFrameCount Mozilla HTMLVideoElement.webkitDecodedFrameCount documentation> 
getWebkitDecodedFrameCount ::
                           (MonadIO m) => HTMLVideoElement -> m Word
getWebkitDecodedFrameCount self
  = liftIO (js_getWebkitDecodedFrameCount (self))
 
foreign import javascript unsafe "$1[\"webkitDroppedFrameCount\"]"
        js_getWebkitDroppedFrameCount :: HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDroppedFrameCount Mozilla HTMLVideoElement.webkitDroppedFrameCount documentation> 
getWebkitDroppedFrameCount ::
                           (MonadIO m) => HTMLVideoElement -> m Word
getWebkitDroppedFrameCount self
  = liftIO (js_getWebkitDroppedFrameCount (self))
 
foreign import javascript unsafe "$1[\"webkitPresentationMode\"]"
        js_getWebkitPresentationMode :: HTMLVideoElement -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitPresentationMode Mozilla HTMLVideoElement.webkitPresentationMode documentation> 
getWebkitPresentationMode ::
                          (MonadIO m) => HTMLVideoElement -> m VideoPresentationMode
getWebkitPresentationMode self
  = liftIO
      ((js_getWebkitPresentationMode (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.onwebkitpresentationmodechanged Mozilla HTMLVideoElement.onwebkitpresentationmodechanged documentation> 
webKitPresentationModeChanged :: EventName HTMLVideoElement Event
webKitPresentationModeChanged
  = unsafeEventName (toJSString "webkitpresentationmodechanged")