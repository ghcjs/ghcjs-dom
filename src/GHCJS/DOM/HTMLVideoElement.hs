{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLVideoElement
       (webkit_dom_html_video_element_webkit_enter_fullscreen,
        htmlVideoElementWebkitEnterFullscreen,
        webkit_dom_html_video_element_webkit_exit_fullscreen,
        htmlVideoElementWebkitExitFullscreen,
        webkit_dom_html_video_element_webkit_enter_full_screen,
        htmlVideoElementWebkitEnterFullScreen,
        webkit_dom_html_video_element_webkit_exit_full_screen,
        htmlVideoElementWebkitExitFullScreen,
        webkit_dom_html_video_element_set_width, htmlVideoElementSetWidth,
        webkit_dom_html_video_element_get_width, htmlVideoElementGetWidth,
        webkit_dom_html_video_element_set_height,
        htmlVideoElementSetHeight,
        webkit_dom_html_video_element_get_height,
        htmlVideoElementGetHeight,
        webkit_dom_html_video_element_get_video_width,
        htmlVideoElementGetVideoWidth,
        webkit_dom_html_video_element_get_video_height,
        htmlVideoElementGetVideoHeight,
        webkit_dom_html_video_element_set_poster,
        htmlVideoElementSetPoster,
        webkit_dom_html_video_element_get_poster,
        htmlVideoElementGetPoster,
        webkit_dom_html_video_element_get_webkit_supports_fullscreen,
        htmlVideoElementGetWebkitSupportsFullscreen,
        webkit_dom_html_video_element_get_webkit_displaying_fullscreen,
        htmlVideoElementGetWebkitDisplayingFullscreen,
        webkit_dom_html_video_element_get_webkit_decoded_frame_count,
        htmlVideoElementGetWebkitDecodedFrameCount,
        webkit_dom_html_video_element_get_webkit_dropped_frame_count,
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
        webkit_dom_html_video_element_webkit_enter_fullscreen ::
        JSRef HTMLVideoElement -> IO ()
#else 
webkit_dom_html_video_element_webkit_enter_fullscreen ::
                                                        JSRef HTMLVideoElement -> IO ()
webkit_dom_html_video_element_webkit_enter_fullscreen = undefined
#endif
 
htmlVideoElementWebkitEnterFullscreen ::
                                      (HTMLVideoElementClass self) => self -> IO ()
htmlVideoElementWebkitEnterFullscreen self
  = webkit_dom_html_video_element_webkit_enter_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        webkit_dom_html_video_element_webkit_exit_fullscreen ::
        JSRef HTMLVideoElement -> IO ()
#else 
webkit_dom_html_video_element_webkit_exit_fullscreen ::
                                                       JSRef HTMLVideoElement -> IO ()
webkit_dom_html_video_element_webkit_exit_fullscreen = undefined
#endif
 
htmlVideoElementWebkitExitFullscreen ::
                                     (HTMLVideoElementClass self) => self -> IO ()
htmlVideoElementWebkitExitFullscreen self
  = webkit_dom_html_video_element_webkit_exit_fullscreen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitEnterFullScreen\"]()"
        webkit_dom_html_video_element_webkit_enter_full_screen ::
        JSRef HTMLVideoElement -> IO ()
#else 
webkit_dom_html_video_element_webkit_enter_full_screen ::
                                                         JSRef HTMLVideoElement -> IO ()
webkit_dom_html_video_element_webkit_enter_full_screen = undefined
#endif
 
htmlVideoElementWebkitEnterFullScreen ::
                                      (HTMLVideoElementClass self) => self -> IO ()
htmlVideoElementWebkitEnterFullScreen self
  = webkit_dom_html_video_element_webkit_enter_full_screen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitExitFullScreen\"]()"
        webkit_dom_html_video_element_webkit_exit_full_screen ::
        JSRef HTMLVideoElement -> IO ()
#else 
webkit_dom_html_video_element_webkit_exit_full_screen ::
                                                        JSRef HTMLVideoElement -> IO ()
webkit_dom_html_video_element_webkit_exit_full_screen = undefined
#endif
 
htmlVideoElementWebkitExitFullScreen ::
                                     (HTMLVideoElementClass self) => self -> IO ()
htmlVideoElementWebkitExitFullScreen self
  = webkit_dom_html_video_element_webkit_exit_full_screen
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_video_element_set_width ::
        JSRef HTMLVideoElement -> Word -> IO ()
#else 
webkit_dom_html_video_element_set_width ::
                                          JSRef HTMLVideoElement -> Word -> IO ()
webkit_dom_html_video_element_set_width = undefined
#endif
 
htmlVideoElementSetWidth ::
                         (HTMLVideoElementClass self) => self -> Word -> IO ()
htmlVideoElementSetWidth self val
  = webkit_dom_html_video_element_set_width
      (unHTMLVideoElement (toHTMLVideoElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_video_element_get_width ::
        JSRef HTMLVideoElement -> IO Word
#else 
webkit_dom_html_video_element_get_width ::
                                          JSRef HTMLVideoElement -> IO Word
webkit_dom_html_video_element_get_width = undefined
#endif
 
htmlVideoElementGetWidth ::
                         (HTMLVideoElementClass self) => self -> IO Word
htmlVideoElementGetWidth self
  = webkit_dom_html_video_element_get_width
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_video_element_set_height ::
        JSRef HTMLVideoElement -> Word -> IO ()
#else 
webkit_dom_html_video_element_set_height ::
                                           JSRef HTMLVideoElement -> Word -> IO ()
webkit_dom_html_video_element_set_height = undefined
#endif
 
htmlVideoElementSetHeight ::
                          (HTMLVideoElementClass self) => self -> Word -> IO ()
htmlVideoElementSetHeight self val
  = webkit_dom_html_video_element_set_height
      (unHTMLVideoElement (toHTMLVideoElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_video_element_get_height ::
        JSRef HTMLVideoElement -> IO Word
#else 
webkit_dom_html_video_element_get_height ::
                                           JSRef HTMLVideoElement -> IO Word
webkit_dom_html_video_element_get_height = undefined
#endif
 
htmlVideoElementGetHeight ::
                          (HTMLVideoElementClass self) => self -> IO Word
htmlVideoElementGetHeight self
  = webkit_dom_html_video_element_get_height
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"videoWidth\"]"
        webkit_dom_html_video_element_get_video_width ::
        JSRef HTMLVideoElement -> IO Word
#else 
webkit_dom_html_video_element_get_video_width ::
                                                JSRef HTMLVideoElement -> IO Word
webkit_dom_html_video_element_get_video_width = undefined
#endif
 
htmlVideoElementGetVideoWidth ::
                              (HTMLVideoElementClass self) => self -> IO Word
htmlVideoElementGetVideoWidth self
  = webkit_dom_html_video_element_get_video_width
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"videoHeight\"]"
        webkit_dom_html_video_element_get_video_height ::
        JSRef HTMLVideoElement -> IO Word
#else 
webkit_dom_html_video_element_get_video_height ::
                                                 JSRef HTMLVideoElement -> IO Word
webkit_dom_html_video_element_get_video_height = undefined
#endif
 
htmlVideoElementGetVideoHeight ::
                               (HTMLVideoElementClass self) => self -> IO Word
htmlVideoElementGetVideoHeight self
  = webkit_dom_html_video_element_get_video_height
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"poster\"] = $2;"
        webkit_dom_html_video_element_set_poster ::
        JSRef HTMLVideoElement -> JSString -> IO ()
#else 
webkit_dom_html_video_element_set_poster ::
                                           JSRef HTMLVideoElement -> JSString -> IO ()
webkit_dom_html_video_element_set_poster = undefined
#endif
 
htmlVideoElementSetPoster ::
                          (HTMLVideoElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlVideoElementSetPoster self val
  = webkit_dom_html_video_element_set_poster
      (unHTMLVideoElement (toHTMLVideoElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"poster\"]"
        webkit_dom_html_video_element_get_poster ::
        JSRef HTMLVideoElement -> IO JSString
#else 
webkit_dom_html_video_element_get_poster ::
                                           JSRef HTMLVideoElement -> IO JSString
webkit_dom_html_video_element_get_poster = undefined
#endif
 
htmlVideoElementGetPoster ::
                          (HTMLVideoElementClass self, FromJSString result) =>
                            self -> IO result
htmlVideoElementGetPoster self
  = fromJSString <$>
      (webkit_dom_html_video_element_get_poster
         (unHTMLVideoElement (toHTMLVideoElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitSupportsFullscreen\"]"
        webkit_dom_html_video_element_get_webkit_supports_fullscreen ::
        JSRef HTMLVideoElement -> IO JSBool
#else 
webkit_dom_html_video_element_get_webkit_supports_fullscreen ::
                                                               JSRef HTMLVideoElement -> IO JSBool
webkit_dom_html_video_element_get_webkit_supports_fullscreen
  = undefined
#endif
 
htmlVideoElementGetWebkitSupportsFullscreen ::
                                            (HTMLVideoElementClass self) => self -> IO Bool
htmlVideoElementGetWebkitSupportsFullscreen self
  = fromJSBool <$>
      (webkit_dom_html_video_element_get_webkit_supports_fullscreen
         (unHTMLVideoElement (toHTMLVideoElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitDisplayingFullscreen\"]"
        webkit_dom_html_video_element_get_webkit_displaying_fullscreen ::
        JSRef HTMLVideoElement -> IO JSBool
#else 
webkit_dom_html_video_element_get_webkit_displaying_fullscreen ::
                                                                 JSRef HTMLVideoElement -> IO JSBool
webkit_dom_html_video_element_get_webkit_displaying_fullscreen
  = undefined
#endif
 
htmlVideoElementGetWebkitDisplayingFullscreen ::
                                              (HTMLVideoElementClass self) => self -> IO Bool
htmlVideoElementGetWebkitDisplayingFullscreen self
  = fromJSBool <$>
      (webkit_dom_html_video_element_get_webkit_displaying_fullscreen
         (unHTMLVideoElement (toHTMLVideoElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitDecodedFrameCount\"]"
        webkit_dom_html_video_element_get_webkit_decoded_frame_count ::
        JSRef HTMLVideoElement -> IO Word
#else 
webkit_dom_html_video_element_get_webkit_decoded_frame_count ::
                                                               JSRef HTMLVideoElement -> IO Word
webkit_dom_html_video_element_get_webkit_decoded_frame_count
  = undefined
#endif
 
htmlVideoElementGetWebkitDecodedFrameCount ::
                                           (HTMLVideoElementClass self) => self -> IO Word
htmlVideoElementGetWebkitDecodedFrameCount self
  = webkit_dom_html_video_element_get_webkit_decoded_frame_count
      (unHTMLVideoElement (toHTMLVideoElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitDroppedFrameCount\"]"
        webkit_dom_html_video_element_get_webkit_dropped_frame_count ::
        JSRef HTMLVideoElement -> IO Word
#else 
webkit_dom_html_video_element_get_webkit_dropped_frame_count ::
                                                               JSRef HTMLVideoElement -> IO Word
webkit_dom_html_video_element_get_webkit_dropped_frame_count
  = undefined
#endif
 
htmlVideoElementGetWebkitDroppedFrameCount ::
                                           (HTMLVideoElementClass self) => self -> IO Word
htmlVideoElementGetWebkitDroppedFrameCount self
  = webkit_dom_html_video_element_get_webkit_dropped_frame_count
      (unHTMLVideoElement (toHTMLVideoElement self))