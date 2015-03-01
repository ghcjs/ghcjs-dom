{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLVideoElement
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

 
foreign import javascript unsafe "$1[\"webkitEnterFullscreen\"]()"
        js_webkitEnterFullscreen :: JSRef HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitEnterFullscreen Mozilla HTMLVideoElement.webkitEnterFullscreen documentation> 
webkitEnterFullscreen :: (MonadIO m) => HTMLVideoElement -> m ()
webkitEnterFullscreen self
  = liftIO (js_webkitEnterFullscreen (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        js_webkitExitFullscreen :: JSRef HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitExitFullscreen Mozilla HTMLVideoElement.webkitExitFullscreen documentation> 
webkitExitFullscreen :: (MonadIO m) => HTMLVideoElement -> m ()
webkitExitFullscreen self
  = liftIO (js_webkitExitFullscreen (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitEnterFullScreen\"]()"
        js_webkitEnterFullScreen :: JSRef HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitEnterFullScreen Mozilla HTMLVideoElement.webkitEnterFullScreen documentation> 
webkitEnterFullScreen :: (MonadIO m) => HTMLVideoElement -> m ()
webkitEnterFullScreen self
  = liftIO (js_webkitEnterFullScreen (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitExitFullScreen\"]()"
        js_webkitExitFullScreen :: JSRef HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitExitFullScreen Mozilla HTMLVideoElement.webkitExitFullScreen documentation> 
webkitExitFullScreen :: (MonadIO m) => HTMLVideoElement -> m ()
webkitExitFullScreen self
  = liftIO (js_webkitExitFullScreen (unHTMLVideoElement self))
 
foreign import javascript unsafe
        "($1[\"webkitSupportsPresentationMode\"]($2) ? 1 : 0)"
        js_webkitSupportsPresentationMode ::
        JSRef HTMLVideoElement -> JSRef VideoPresentationMode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSupportsPresentationMode Mozilla HTMLVideoElement.webkitSupportsPresentationMode documentation> 
webkitSupportsPresentationMode ::
                               (MonadIO m) => HTMLVideoElement -> VideoPresentationMode -> m Bool
webkitSupportsPresentationMode self mode
  = liftIO
      (js_webkitSupportsPresentationMode (unHTMLVideoElement self)
         (ptoJSRef mode))
 
foreign import javascript unsafe
        "$1[\"webkitSetPresentationMode\"]($2)"
        js_webkitSetPresentationMode ::
        JSRef HTMLVideoElement -> JSRef VideoPresentationMode -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSetPresentationMode Mozilla HTMLVideoElement.webkitSetPresentationMode documentation> 
webkitSetPresentationMode ::
                          (MonadIO m) => HTMLVideoElement -> VideoPresentationMode -> m ()
webkitSetPresentationMode self mode
  = liftIO
      (js_webkitSetPresentationMode (unHTMLVideoElement self)
         (ptoJSRef mode))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLVideoElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.width Mozilla HTMLVideoElement.width documentation> 
setWidth :: (MonadIO m) => HTMLVideoElement -> Word -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLVideoElement self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.width Mozilla HTMLVideoElement.width documentation> 
getWidth :: (MonadIO m) => HTMLVideoElement -> m Word
getWidth self = liftIO (js_getWidth (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLVideoElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.height Mozilla HTMLVideoElement.height documentation> 
setHeight :: (MonadIO m) => HTMLVideoElement -> Word -> m ()
setHeight self val
  = liftIO (js_setHeight (unHTMLVideoElement self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.height Mozilla HTMLVideoElement.height documentation> 
getHeight :: (MonadIO m) => HTMLVideoElement -> m Word
getHeight self = liftIO (js_getHeight (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"videoWidth\"]"
        js_getVideoWidth :: JSRef HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.videoWidth Mozilla HTMLVideoElement.videoWidth documentation> 
getVideoWidth :: (MonadIO m) => HTMLVideoElement -> m Word
getVideoWidth self
  = liftIO (js_getVideoWidth (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"videoHeight\"]"
        js_getVideoHeight :: JSRef HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.videoHeight Mozilla HTMLVideoElement.videoHeight documentation> 
getVideoHeight :: (MonadIO m) => HTMLVideoElement -> m Word
getVideoHeight self
  = liftIO (js_getVideoHeight (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"poster\"] = $2;"
        js_setPoster :: JSRef HTMLVideoElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.poster Mozilla HTMLVideoElement.poster documentation> 
setPoster ::
          (MonadIO m, ToJSString val) => HTMLVideoElement -> val -> m ()
setPoster self val
  = liftIO (js_setPoster (unHTMLVideoElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"poster\"]" js_getPoster ::
        JSRef HTMLVideoElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.poster Mozilla HTMLVideoElement.poster documentation> 
getPoster ::
          (MonadIO m, FromJSString result) => HTMLVideoElement -> m result
getPoster self
  = liftIO
      (fromJSString <$> (js_getPoster (unHTMLVideoElement self)))
 
foreign import javascript unsafe
        "($1[\"webkitSupportsFullscreen\"] ? 1 : 0)"
        js_getWebkitSupportsFullscreen :: JSRef HTMLVideoElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSupportsFullscreen Mozilla HTMLVideoElement.webkitSupportsFullscreen documentation> 
getWebkitSupportsFullscreen ::
                            (MonadIO m) => HTMLVideoElement -> m Bool
getWebkitSupportsFullscreen self
  = liftIO (js_getWebkitSupportsFullscreen (unHTMLVideoElement self))
 
foreign import javascript unsafe
        "($1[\"webkitDisplayingFullscreen\"] ? 1 : 0)"
        js_getWebkitDisplayingFullscreen ::
        JSRef HTMLVideoElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDisplayingFullscreen Mozilla HTMLVideoElement.webkitDisplayingFullscreen documentation> 
getWebkitDisplayingFullscreen ::
                              (MonadIO m) => HTMLVideoElement -> m Bool
getWebkitDisplayingFullscreen self
  = liftIO
      (js_getWebkitDisplayingFullscreen (unHTMLVideoElement self))
 
foreign import javascript unsafe
        "$1[\"webkitWirelessVideoPlaybackDisabled\"] = $2;"
        js_setWebkitWirelessVideoPlaybackDisabled ::
        JSRef HTMLVideoElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitWirelessVideoPlaybackDisabled Mozilla HTMLVideoElement.webkitWirelessVideoPlaybackDisabled documentation> 
setWebkitWirelessVideoPlaybackDisabled ::
                                       (MonadIO m) => HTMLVideoElement -> Bool -> m ()
setWebkitWirelessVideoPlaybackDisabled self val
  = liftIO
      (js_setWebkitWirelessVideoPlaybackDisabled
         (unHTMLVideoElement self)
         val)
 
foreign import javascript unsafe
        "($1[\"webkitWirelessVideoPlaybackDisabled\"] ? 1 : 0)"
        js_getWebkitWirelessVideoPlaybackDisabled ::
        JSRef HTMLVideoElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitWirelessVideoPlaybackDisabled Mozilla HTMLVideoElement.webkitWirelessVideoPlaybackDisabled documentation> 
getWebkitWirelessVideoPlaybackDisabled ::
                                       (MonadIO m) => HTMLVideoElement -> m Bool
getWebkitWirelessVideoPlaybackDisabled self
  = liftIO
      (js_getWebkitWirelessVideoPlaybackDisabled
         (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitDecodedFrameCount\"]"
        js_getWebkitDecodedFrameCount :: JSRef HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDecodedFrameCount Mozilla HTMLVideoElement.webkitDecodedFrameCount documentation> 
getWebkitDecodedFrameCount ::
                           (MonadIO m) => HTMLVideoElement -> m Word
getWebkitDecodedFrameCount self
  = liftIO (js_getWebkitDecodedFrameCount (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitDroppedFrameCount\"]"
        js_getWebkitDroppedFrameCount :: JSRef HTMLVideoElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDroppedFrameCount Mozilla HTMLVideoElement.webkitDroppedFrameCount documentation> 
getWebkitDroppedFrameCount ::
                           (MonadIO m) => HTMLVideoElement -> m Word
getWebkitDroppedFrameCount self
  = liftIO (js_getWebkitDroppedFrameCount (unHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitPresentationMode\"]"
        js_getWebkitPresentationMode ::
        JSRef HTMLVideoElement -> IO (JSRef VideoPresentationMode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitPresentationMode Mozilla HTMLVideoElement.webkitPresentationMode documentation> 
getWebkitPresentationMode ::
                          (MonadIO m) => HTMLVideoElement -> m VideoPresentationMode
getWebkitPresentationMode self
  = liftIO
      ((js_getWebkitPresentationMode (unHTMLVideoElement self)) >>=
         fromJSRefUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.onwebkitpresentationmodechanged Mozilla HTMLVideoElement.onwebkitpresentationmodechanged documentation> 
webKitPresentationModeChanged :: EventName HTMLVideoElement Event
webKitPresentationModeChanged
  = unsafeEventName (toJSString "webkitpresentationmodechanged")
#else
module GHCJS.DOM.HTMLVideoElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLVideoElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLVideoElement
#endif
