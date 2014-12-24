{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLVideoElement
       (ghcjs_dom_html_video_element_webkit_enter_fullscreen,
        htmlVideoElementWebkitEnterFullscreen,
        ghcjs_dom_html_video_element_webkit_exit_fullscreen,
        htmlVideoElementWebkitExitFullscreen,
        ghcjs_dom_html_video_element_webkit_enter_full_screen,
        htmlVideoElementWebkitEnterFullScreen,
        ghcjs_dom_html_video_element_webkit_exit_full_screen,
        htmlVideoElementWebkitExitFullScreen,
        ghcjs_dom_html_video_element_set_width, htmlVideoElementSetWidth,
        ghcjs_dom_html_video_element_get_width, htmlVideoElementGetWidth,
        ghcjs_dom_html_video_element_set_height, htmlVideoElementSetHeight,
        ghcjs_dom_html_video_element_get_height, htmlVideoElementGetHeight,
        ghcjs_dom_html_video_element_get_video_width,
        htmlVideoElementGetVideoWidth,
        ghcjs_dom_html_video_element_get_video_height,
        htmlVideoElementGetVideoHeight,
        ghcjs_dom_html_video_element_set_poster, htmlVideoElementSetPoster,
        ghcjs_dom_html_video_element_get_poster, htmlVideoElementGetPoster,
        ghcjs_dom_html_video_element_get_webkit_supports_fullscreen,
        htmlVideoElementGetWebkitSupportsFullscreen,
        ghcjs_dom_html_video_element_get_webkit_displaying_fullscreen,
        htmlVideoElementGetWebkitDisplayingFullscreen,
        ghcjs_dom_html_video_element_set_webkit_wireless_video_playback_disabled,
        htmlVideoElementSetWebkitWirelessVideoPlaybackDisabled,
        ghcjs_dom_html_video_element_get_webkit_wireless_video_playback_disabled,
        htmlVideoElementGetWebkitWirelessVideoPlaybackDisabled,
        ghcjs_dom_html_video_element_get_webkit_decoded_frame_count,
        htmlVideoElementGetWebkitDecodedFrameCount,
        ghcjs_dom_html_video_element_get_webkit_dropped_frame_count,
        htmlVideoElementGetWebkitDroppedFrameCount, HTMLVideoElement,
        IsHTMLVideoElement, castToHTMLVideoElement, gTypeHTMLVideoElement,
        toHTMLVideoElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"webkitEnterFullscreen\"]()"
        ghcjs_dom_html_video_element_webkit_enter_fullscreen ::
        JSRef HTMLVideoElement -> IO ()
 
htmlVideoElementWebkitEnterFullscreen ::
                                      (IsHTMLVideoElement self) => self -> IO ()
htmlVideoElementWebkitEnterFullscreen self
  = ghcjs_dom_html_video_element_webkit_enter_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        ghcjs_dom_html_video_element_webkit_exit_fullscreen ::
        JSRef HTMLVideoElement -> IO ()
 
htmlVideoElementWebkitExitFullscreen ::
                                     (IsHTMLVideoElement self) => self -> IO ()
htmlVideoElementWebkitExitFullscreen self
  = ghcjs_dom_html_video_element_webkit_exit_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitEnterFullScreen\"]()"
        ghcjs_dom_html_video_element_webkit_enter_full_screen ::
        JSRef HTMLVideoElement -> IO ()
 
htmlVideoElementWebkitEnterFullScreen ::
                                      (IsHTMLVideoElement self) => self -> IO ()
htmlVideoElementWebkitEnterFullScreen self
  = ghcjs_dom_html_video_element_webkit_enter_full_screen
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitExitFullScreen\"]()"
        ghcjs_dom_html_video_element_webkit_exit_full_screen ::
        JSRef HTMLVideoElement -> IO ()
 
htmlVideoElementWebkitExitFullScreen ::
                                     (IsHTMLVideoElement self) => self -> IO ()
htmlVideoElementWebkitExitFullScreen self
  = ghcjs_dom_html_video_element_webkit_exit_full_screen
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_video_element_set_width ::
        JSRef HTMLVideoElement -> Word -> IO ()
 
htmlVideoElementSetWidth ::
                         (IsHTMLVideoElement self) => self -> Word -> IO ()
htmlVideoElementSetWidth self val
  = ghcjs_dom_html_video_element_set_width
      (unHTMLVideoElement (toHTMLVideoElement self))
      val
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_video_element_get_width ::
        JSRef HTMLVideoElement -> IO Word
 
htmlVideoElementGetWidth ::
                         (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetWidth self
  = ghcjs_dom_html_video_element_get_width
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_video_element_set_height ::
        JSRef HTMLVideoElement -> Word -> IO ()
 
htmlVideoElementSetHeight ::
                          (IsHTMLVideoElement self) => self -> Word -> IO ()
htmlVideoElementSetHeight self val
  = ghcjs_dom_html_video_element_set_height
      (unHTMLVideoElement (toHTMLVideoElement self))
      val
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_video_element_get_height ::
        JSRef HTMLVideoElement -> IO Word
 
htmlVideoElementGetHeight ::
                          (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetHeight self
  = ghcjs_dom_html_video_element_get_height
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"videoWidth\"]"
        ghcjs_dom_html_video_element_get_video_width ::
        JSRef HTMLVideoElement -> IO Word
 
htmlVideoElementGetVideoWidth ::
                              (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetVideoWidth self
  = ghcjs_dom_html_video_element_get_video_width
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"videoHeight\"]"
        ghcjs_dom_html_video_element_get_video_height ::
        JSRef HTMLVideoElement -> IO Word
 
htmlVideoElementGetVideoHeight ::
                               (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetVideoHeight self
  = ghcjs_dom_html_video_element_get_video_height
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"poster\"] = $2;"
        ghcjs_dom_html_video_element_set_poster ::
        JSRef HTMLVideoElement -> JSString -> IO ()
 
htmlVideoElementSetPoster ::
                          (IsHTMLVideoElement self, ToJSString val) => self -> val -> IO ()
htmlVideoElementSetPoster self val
  = ghcjs_dom_html_video_element_set_poster
      (unHTMLVideoElement (toHTMLVideoElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"poster\"]"
        ghcjs_dom_html_video_element_get_poster ::
        JSRef HTMLVideoElement -> IO JSString
 
htmlVideoElementGetPoster ::
                          (IsHTMLVideoElement self, FromJSString result) => self -> IO result
htmlVideoElementGetPoster self
  = fromJSString <$>
      (ghcjs_dom_html_video_element_get_poster
         (unHTMLVideoElement (toHTMLVideoElement self)))
 
foreign import javascript unsafe
        "($1[\"webkitSupportsFullscreen\"] ? 1 : 0)"
        ghcjs_dom_html_video_element_get_webkit_supports_fullscreen ::
        JSRef HTMLVideoElement -> IO Bool
 
htmlVideoElementGetWebkitSupportsFullscreen ::
                                            (IsHTMLVideoElement self) => self -> IO Bool
htmlVideoElementGetWebkitSupportsFullscreen self
  = ghcjs_dom_html_video_element_get_webkit_supports_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe
        "($1[\"webkitDisplayingFullscreen\"] ? 1 : 0)"
        ghcjs_dom_html_video_element_get_webkit_displaying_fullscreen ::
        JSRef HTMLVideoElement -> IO Bool
 
htmlVideoElementGetWebkitDisplayingFullscreen ::
                                              (IsHTMLVideoElement self) => self -> IO Bool
htmlVideoElementGetWebkitDisplayingFullscreen self
  = ghcjs_dom_html_video_element_get_webkit_displaying_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe
        "$1[\"webkitWirelessVideoPlaybackDisabled\"] = $2;"
        ghcjs_dom_html_video_element_set_webkit_wireless_video_playback_disabled
        :: JSRef HTMLVideoElement -> Bool -> IO ()
 
htmlVideoElementSetWebkitWirelessVideoPlaybackDisabled ::
                                                       (IsHTMLVideoElement self) =>
                                                         self -> Bool -> IO ()
htmlVideoElementSetWebkitWirelessVideoPlaybackDisabled self val
  = ghcjs_dom_html_video_element_set_webkit_wireless_video_playback_disabled
      (unHTMLVideoElement (toHTMLVideoElement self))
      val
 
foreign import javascript unsafe
        "($1[\"webkitWirelessVideoPlaybackDisabled\"] ? 1 : 0)"
        ghcjs_dom_html_video_element_get_webkit_wireless_video_playback_disabled
        :: JSRef HTMLVideoElement -> IO Bool
 
htmlVideoElementGetWebkitWirelessVideoPlaybackDisabled ::
                                                       (IsHTMLVideoElement self) => self -> IO Bool
htmlVideoElementGetWebkitWirelessVideoPlaybackDisabled self
  = ghcjs_dom_html_video_element_get_webkit_wireless_video_playback_disabled
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitDecodedFrameCount\"]"
        ghcjs_dom_html_video_element_get_webkit_decoded_frame_count ::
        JSRef HTMLVideoElement -> IO Word
 
htmlVideoElementGetWebkitDecodedFrameCount ::
                                           (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetWebkitDecodedFrameCount self
  = ghcjs_dom_html_video_element_get_webkit_decoded_frame_count
      (unHTMLVideoElement (toHTMLVideoElement self))
 
foreign import javascript unsafe "$1[\"webkitDroppedFrameCount\"]"
        ghcjs_dom_html_video_element_get_webkit_dropped_frame_count ::
        JSRef HTMLVideoElement -> IO Word
 
htmlVideoElementGetWebkitDroppedFrameCount ::
                                           (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetWebkitDroppedFrameCount self
  = ghcjs_dom_html_video_element_get_webkit_dropped_frame_count
      (unHTMLVideoElement (toHTMLVideoElement self))
#else
module GHCJS.DOM.HTMLVideoElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLVideoElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLVideoElement
#endif
