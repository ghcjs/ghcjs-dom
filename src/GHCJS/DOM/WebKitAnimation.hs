{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.WebKitAnimation
       (webkit_dom_webkit_animation_play, webKitAnimationPlay,
        webkit_dom_webkit_animation_pause, webKitAnimationPause,
        cDIRECTION_NORMAL, cDIRECTION_ALTERNATE, cFILL_NONE,
        cFILL_BACKWARDS, cFILL_FORWARDS, cFILL_BOTH,
        webkit_dom_webkit_animation_get_name, webKitAnimationGetName,
        webkit_dom_webkit_animation_get_duration,
        webKitAnimationGetDuration,
        webkit_dom_webkit_animation_set_elapsed_time,
        webKitAnimationSetElapsedTime,
        webkit_dom_webkit_animation_get_elapsed_time,
        webKitAnimationGetElapsedTime,
        webkit_dom_webkit_animation_get_delay, webKitAnimationGetDelay,
        webkit_dom_webkit_animation_get_paused, webKitAnimationGetPaused,
        webkit_dom_webkit_animation_get_ended, webKitAnimationGetEnded,
        webkit_dom_webkit_animation_get_direction,
        webKitAnimationGetDirection,
        webkit_dom_webkit_animation_get_fill_mode,
        webKitAnimationGetFillMode)
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
foreign import javascript unsafe "$1[\"play\"]()"
        webkit_dom_webkit_animation_play :: JSRef WebKitAnimation -> IO ()
#else 
webkit_dom_webkit_animation_play :: JSRef WebKitAnimation -> IO ()
webkit_dom_webkit_animation_play = undefined
#endif
 
webKitAnimationPlay :: (WebKitAnimationClass self) => self -> IO ()
webKitAnimationPlay self
  = webkit_dom_webkit_animation_play
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pause\"]()"
        webkit_dom_webkit_animation_pause :: JSRef WebKitAnimation -> IO ()
#else 
webkit_dom_webkit_animation_pause :: JSRef WebKitAnimation -> IO ()
webkit_dom_webkit_animation_pause = undefined
#endif
 
webKitAnimationPause ::
                     (WebKitAnimationClass self) => self -> IO ()
webKitAnimationPause self
  = webkit_dom_webkit_animation_pause
      (unWebKitAnimation (toWebKitAnimation self))
cDIRECTION_NORMAL = 0
cDIRECTION_ALTERNATE = 1
cFILL_NONE = 0
cFILL_BACKWARDS = 1
cFILL_FORWARDS = 2
cFILL_BOTH = 3


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_webkit_animation_get_name ::
        JSRef WebKitAnimation -> IO JSString
#else 
webkit_dom_webkit_animation_get_name ::
                                       JSRef WebKitAnimation -> IO JSString
webkit_dom_webkit_animation_get_name = undefined
#endif
 
webKitAnimationGetName ::
                       (WebKitAnimationClass self, FromJSString result) =>
                         self -> IO result
webKitAnimationGetName self
  = fromJSString <$>
      (webkit_dom_webkit_animation_get_name
         (unWebKitAnimation (toWebKitAnimation self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"duration\"]"
        webkit_dom_webkit_animation_get_duration ::
        JSRef WebKitAnimation -> IO Double
#else 
webkit_dom_webkit_animation_get_duration ::
                                           JSRef WebKitAnimation -> IO Double
webkit_dom_webkit_animation_get_duration = undefined
#endif
 
webKitAnimationGetDuration ::
                           (WebKitAnimationClass self) => self -> IO Double
webKitAnimationGetDuration self
  = webkit_dom_webkit_animation_get_duration
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elapsedTime\"] = $2;"
        webkit_dom_webkit_animation_set_elapsed_time ::
        JSRef WebKitAnimation -> Double -> IO ()
#else 
webkit_dom_webkit_animation_set_elapsed_time ::
                                               JSRef WebKitAnimation -> Double -> IO ()
webkit_dom_webkit_animation_set_elapsed_time = undefined
#endif
 
webKitAnimationSetElapsedTime ::
                              (WebKitAnimationClass self) => self -> Double -> IO ()
webKitAnimationSetElapsedTime self val
  = webkit_dom_webkit_animation_set_elapsed_time
      (unWebKitAnimation (toWebKitAnimation self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        webkit_dom_webkit_animation_get_elapsed_time ::
        JSRef WebKitAnimation -> IO Double
#else 
webkit_dom_webkit_animation_get_elapsed_time ::
                                               JSRef WebKitAnimation -> IO Double
webkit_dom_webkit_animation_get_elapsed_time = undefined
#endif
 
webKitAnimationGetElapsedTime ::
                              (WebKitAnimationClass self) => self -> IO Double
webKitAnimationGetElapsedTime self
  = webkit_dom_webkit_animation_get_elapsed_time
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"delay\"]"
        webkit_dom_webkit_animation_get_delay ::
        JSRef WebKitAnimation -> IO Double
#else 
webkit_dom_webkit_animation_get_delay ::
                                        JSRef WebKitAnimation -> IO Double
webkit_dom_webkit_animation_get_delay = undefined
#endif
 
webKitAnimationGetDelay ::
                        (WebKitAnimationClass self) => self -> IO Double
webKitAnimationGetDelay self
  = webkit_dom_webkit_animation_get_delay
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"paused\"]"
        webkit_dom_webkit_animation_get_paused ::
        JSRef WebKitAnimation -> IO JSBool
#else 
webkit_dom_webkit_animation_get_paused ::
                                         JSRef WebKitAnimation -> IO JSBool
webkit_dom_webkit_animation_get_paused = undefined
#endif
 
webKitAnimationGetPaused ::
                         (WebKitAnimationClass self) => self -> IO Bool
webKitAnimationGetPaused self
  = fromJSBool <$>
      (webkit_dom_webkit_animation_get_paused
         (unWebKitAnimation (toWebKitAnimation self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ended\"]"
        webkit_dom_webkit_animation_get_ended ::
        JSRef WebKitAnimation -> IO JSBool
#else 
webkit_dom_webkit_animation_get_ended ::
                                        JSRef WebKitAnimation -> IO JSBool
webkit_dom_webkit_animation_get_ended = undefined
#endif
 
webKitAnimationGetEnded ::
                        (WebKitAnimationClass self) => self -> IO Bool
webKitAnimationGetEnded self
  = fromJSBool <$>
      (webkit_dom_webkit_animation_get_ended
         (unWebKitAnimation (toWebKitAnimation self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"direction\"]"
        webkit_dom_webkit_animation_get_direction ::
        JSRef WebKitAnimation -> IO Word
#else 
webkit_dom_webkit_animation_get_direction ::
                                            JSRef WebKitAnimation -> IO Word
webkit_dom_webkit_animation_get_direction = undefined
#endif
 
webKitAnimationGetDirection ::
                            (WebKitAnimationClass self) => self -> IO Word
webKitAnimationGetDirection self
  = webkit_dom_webkit_animation_get_direction
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"fillMode\"]"
        webkit_dom_webkit_animation_get_fill_mode ::
        JSRef WebKitAnimation -> IO Word
#else 
webkit_dom_webkit_animation_get_fill_mode ::
                                            JSRef WebKitAnimation -> IO Word
webkit_dom_webkit_animation_get_fill_mode = undefined
#endif
 
webKitAnimationGetFillMode ::
                           (WebKitAnimationClass self) => self -> IO Word
webKitAnimationGetFillMode self
  = webkit_dom_webkit_animation_get_fill_mode
      (unWebKitAnimation (toWebKitAnimation self))