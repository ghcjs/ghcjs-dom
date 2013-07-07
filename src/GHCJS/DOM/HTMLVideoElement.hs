{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
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
        ghcjs_dom_html_video_element_get_webkit_decoded_frame_count,
        htmlVideoElementGetWebkitDecodedFrameCount,
        ghcjs_dom_html_video_element_get_webkit_dropped_frame_count,
        htmlVideoElementGetWebkitDroppedFrameCount)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitEnterFullscreen\"]()"
        ghcjs_dom_html_video_element_webkit_enter_fullscreen ::
        JSRef HTMLVideoElement -> IO ()
#else 
ghcjs_dom_html_video_element_webkit_enter_fullscreen ::
                                                       JSRef HTMLVideoElement -> IO ()
ghcjs_dom_html_video_element_webkit_enter_fullscreen = undefined
#endif
 
htmlVideoElementWebkitEnterFullscreen ::
                                      (IsHTMLVideoElement self) => self -> IO ()
htmlVideoElementWebkitEnterFullscreen self
  = ghcjs_dom_html_video_element_webkit_enter_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        ghcjs_dom_html_video_element_webkit_exit_fullscreen ::
        JSRef HTMLVideoElement -> IO ()
#else 
ghcjs_dom_html_video_element_webkit_exit_fullscreen ::
                                                      JSRef HTMLVideoElement -> IO ()
ghcjs_dom_html_video_element_webkit_exit_fullscreen = undefined
#endif
 
htmlVideoElementWebkitExitFullscreen ::
                                     (IsHTMLVideoElement self) => self -> IO ()
htmlVideoElementWebkitExitFullscreen self
  = ghcjs_dom_html_video_element_webkit_exit_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitEnterFullScreen\"]()"
        ghcjs_dom_html_video_element_webkit_enter_full_screen ::
        JSRef HTMLVideoElement -> IO ()
#else 
ghcjs_dom_html_video_element_webkit_enter_full_screen ::
                                                        JSRef HTMLVideoElement -> IO ()
ghcjs_dom_html_video_element_webkit_enter_full_screen = undefined
#endif
 
htmlVideoElementWebkitEnterFullScreen ::
                                      (IsHTMLVideoElement self) => self -> IO ()
htmlVideoElementWebkitEnterFullScreen self
  = ghcjs_dom_html_video_element_webkit_enter_full_screen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitExitFullScreen\"]()"
        ghcjs_dom_html_video_element_webkit_exit_full_screen ::
        JSRef HTMLVideoElement -> IO ()
#else 
ghcjs_dom_html_video_element_webkit_exit_full_screen ::
                                                       JSRef HTMLVideoElement -> IO ()
ghcjs_dom_html_video_element_webkit_exit_full_screen = undefined
#endif
 
htmlVideoElementWebkitExitFullScreen ::
                                     (IsHTMLVideoElement self) => self -> IO ()
htmlVideoElementWebkitExitFullScreen self
  = ghcjs_dom_html_video_element_webkit_exit_full_screen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_video_element_set_width ::
        JSRef HTMLVideoElement -> Word -> IO ()
#else 
ghcjs_dom_html_video_element_set_width ::
                                         JSRef HTMLVideoElement -> Word -> IO ()
ghcjs_dom_html_video_element_set_width = undefined
#endif
 
htmlVideoElementSetWidth ::
                         (IsHTMLVideoElement self) => self -> Word -> IO ()
htmlVideoElementSetWidth self val
  = ghcjs_dom_html_video_element_set_width
      (unHTMLVideoElement (toHTMLVideoElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_video_element_get_width ::
        JSRef HTMLVideoElement -> IO Word
#else 
ghcjs_dom_html_video_element_get_width ::
                                         JSRef HTMLVideoElement -> IO Word
ghcjs_dom_html_video_element_get_width = undefined
#endif
 
htmlVideoElementGetWidth ::
                         (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetWidth self
  = ghcjs_dom_html_video_element_get_width
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_video_element_set_height ::
        JSRef HTMLVideoElement -> Word -> IO ()
#else 
ghcjs_dom_html_video_element_set_height ::
                                          JSRef HTMLVideoElement -> Word -> IO ()
ghcjs_dom_html_video_element_set_height = undefined
#endif
 
htmlVideoElementSetHeight ::
                          (IsHTMLVideoElement self) => self -> Word -> IO ()
htmlVideoElementSetHeight self val
  = ghcjs_dom_html_video_element_set_height
      (unHTMLVideoElement (toHTMLVideoElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_video_element_get_height ::
        JSRef HTMLVideoElement -> IO Word
#else 
ghcjs_dom_html_video_element_get_height ::
                                          JSRef HTMLVideoElement -> IO Word
ghcjs_dom_html_video_element_get_height = undefined
#endif
 
htmlVideoElementGetHeight ::
                          (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetHeight self
  = ghcjs_dom_html_video_element_get_height
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"videoWidth\"]"
        ghcjs_dom_html_video_element_get_video_width ::
        JSRef HTMLVideoElement -> IO Word
#else 
ghcjs_dom_html_video_element_get_video_width ::
                                               JSRef HTMLVideoElement -> IO Word
ghcjs_dom_html_video_element_get_video_width = undefined
#endif
 
htmlVideoElementGetVideoWidth ::
                              (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetVideoWidth self
  = ghcjs_dom_html_video_element_get_video_width
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"videoHeight\"]"
        ghcjs_dom_html_video_element_get_video_height ::
        JSRef HTMLVideoElement -> IO Word
#else 
ghcjs_dom_html_video_element_get_video_height ::
                                                JSRef HTMLVideoElement -> IO Word
ghcjs_dom_html_video_element_get_video_height = undefined
#endif
 
htmlVideoElementGetVideoHeight ::
                               (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetVideoHeight self
  = ghcjs_dom_html_video_element_get_video_height
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"poster\"] = $2;"
        ghcjs_dom_html_video_element_set_poster ::
        JSRef HTMLVideoElement -> JSString -> IO ()
#else 
ghcjs_dom_html_video_element_set_poster ::
                                          JSRef HTMLVideoElement -> JSString -> IO ()
ghcjs_dom_html_video_element_set_poster = undefined
#endif
 
htmlVideoElementSetPoster ::
                          (IsHTMLVideoElement self, ToJSString val) => self -> val -> IO ()
htmlVideoElementSetPoster self val
  = ghcjs_dom_html_video_element_set_poster
      (unHTMLVideoElement (toHTMLVideoElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"poster\"]"
        ghcjs_dom_html_video_element_get_poster ::
        JSRef HTMLVideoElement -> IO JSString
#else 
ghcjs_dom_html_video_element_get_poster ::
                                          JSRef HTMLVideoElement -> IO JSString
ghcjs_dom_html_video_element_get_poster = undefined
#endif
 
htmlVideoElementGetPoster ::
                          (IsHTMLVideoElement self, FromJSString result) => self -> IO result
htmlVideoElementGetPoster self
  = fromJSString <$>
      (ghcjs_dom_html_video_element_get_poster
         (unHTMLVideoElement (toHTMLVideoElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitSupportsFullscreen\"] ? 1 : 0)"
        ghcjs_dom_html_video_element_get_webkit_supports_fullscreen ::
        JSRef HTMLVideoElement -> IO Bool
#else 
ghcjs_dom_html_video_element_get_webkit_supports_fullscreen ::
                                                              JSRef HTMLVideoElement -> IO Bool
ghcjs_dom_html_video_element_get_webkit_supports_fullscreen
  = undefined
#endif
 
htmlVideoElementGetWebkitSupportsFullscreen ::
                                            (IsHTMLVideoElement self) => self -> IO Bool
htmlVideoElementGetWebkitSupportsFullscreen self
  = ghcjs_dom_html_video_element_get_webkit_supports_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitDisplayingFullscreen\"] ? 1 : 0)"
        ghcjs_dom_html_video_element_get_webkit_displaying_fullscreen ::
        JSRef HTMLVideoElement -> IO Bool
#else 
ghcjs_dom_html_video_element_get_webkit_displaying_fullscreen ::
                                                                JSRef HTMLVideoElement -> IO Bool
ghcjs_dom_html_video_element_get_webkit_displaying_fullscreen
  = undefined
#endif
 
htmlVideoElementGetWebkitDisplayingFullscreen ::
                                              (IsHTMLVideoElement self) => self -> IO Bool
htmlVideoElementGetWebkitDisplayingFullscreen self
  = ghcjs_dom_html_video_element_get_webkit_displaying_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitDecodedFrameCount\"]"
        ghcjs_dom_html_video_element_get_webkit_decoded_frame_count ::
        JSRef HTMLVideoElement -> IO Word
#else 
ghcjs_dom_html_video_element_get_webkit_decoded_frame_count ::
                                                              JSRef HTMLVideoElement -> IO Word
ghcjs_dom_html_video_element_get_webkit_decoded_frame_count
  = undefined
#endif
 
htmlVideoElementGetWebkitDecodedFrameCount ::
                                           (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetWebkitDecodedFrameCount self
  = ghcjs_dom_html_video_element_get_webkit_decoded_frame_count
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitDroppedFrameCount\"]"
        ghcjs_dom_html_video_element_get_webkit_dropped_frame_count ::
        JSRef HTMLVideoElement -> IO Word
#else 
ghcjs_dom_html_video_element_get_webkit_dropped_frame_count ::
                                                              JSRef HTMLVideoElement -> IO Word
ghcjs_dom_html_video_element_get_webkit_dropped_frame_count
  = undefined
#endif
 
htmlVideoElementGetWebkitDroppedFrameCount ::
                                           (IsHTMLVideoElement self) => self -> IO Word
htmlVideoElementGetWebkitDroppedFrameCount self
  = ghcjs_dom_html_video_element_get_webkit_dropped_frame_count
      (unHTMLVideoElement (toHTMLVideoElement self))