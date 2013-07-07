{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.WebKitAnimation
       (ghcjs_dom_webkit_animation_play, webKitAnimationPlay,
        ghcjs_dom_webkit_animation_pause, webKitAnimationPause,
        cDIRECTION_NORMAL, cDIRECTION_ALTERNATE, cFILL_NONE,
        cFILL_BACKWARDS, cFILL_FORWARDS, cFILL_BOTH,
        ghcjs_dom_webkit_animation_get_name, webKitAnimationGetName,
        ghcjs_dom_webkit_animation_get_duration,
        webKitAnimationGetDuration,
        ghcjs_dom_webkit_animation_set_elapsed_time,
        webKitAnimationSetElapsedTime,
        ghcjs_dom_webkit_animation_get_elapsed_time,
        webKitAnimationGetElapsedTime,
        ghcjs_dom_webkit_animation_get_delay, webKitAnimationGetDelay,
        ghcjs_dom_webkit_animation_get_paused, webKitAnimationGetPaused,
        ghcjs_dom_webkit_animation_get_ended, webKitAnimationGetEnded,
        ghcjs_dom_webkit_animation_get_direction,
        webKitAnimationGetDirection,
        ghcjs_dom_webkit_animation_get_fill_mode,
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
        ghcjs_dom_webkit_animation_play :: JSRef WebKitAnimation -> IO ()
#else 
ghcjs_dom_webkit_animation_play :: JSRef WebKitAnimation -> IO ()
ghcjs_dom_webkit_animation_play = undefined
#endif
 
webKitAnimationPlay :: (IsWebKitAnimation self) => self -> IO ()
webKitAnimationPlay self
  = ghcjs_dom_webkit_animation_play
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pause\"]()"
        ghcjs_dom_webkit_animation_pause :: JSRef WebKitAnimation -> IO ()
#else 
ghcjs_dom_webkit_animation_pause :: JSRef WebKitAnimation -> IO ()
ghcjs_dom_webkit_animation_pause = undefined
#endif
 
webKitAnimationPause :: (IsWebKitAnimation self) => self -> IO ()
webKitAnimationPause self
  = ghcjs_dom_webkit_animation_pause
      (unWebKitAnimation (toWebKitAnimation self))
cDIRECTION_NORMAL = 0
cDIRECTION_ALTERNATE = 1
cFILL_NONE = 0
cFILL_BACKWARDS = 1
cFILL_FORWARDS = 2
cFILL_BOTH = 3


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_webkit_animation_get_name ::
        JSRef WebKitAnimation -> IO JSString
#else 
ghcjs_dom_webkit_animation_get_name ::
                                      JSRef WebKitAnimation -> IO JSString
ghcjs_dom_webkit_animation_get_name = undefined
#endif
 
webKitAnimationGetName ::
                       (IsWebKitAnimation self, FromJSString result) => self -> IO result
webKitAnimationGetName self
  = fromJSString <$>
      (ghcjs_dom_webkit_animation_get_name
         (unWebKitAnimation (toWebKitAnimation self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_webkit_animation_get_duration ::
        JSRef WebKitAnimation -> IO Double
#else 
ghcjs_dom_webkit_animation_get_duration ::
                                          JSRef WebKitAnimation -> IO Double
ghcjs_dom_webkit_animation_get_duration = undefined
#endif
 
webKitAnimationGetDuration ::
                           (IsWebKitAnimation self) => self -> IO Double
webKitAnimationGetDuration self
  = ghcjs_dom_webkit_animation_get_duration
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elapsedTime\"] = $2;"
        ghcjs_dom_webkit_animation_set_elapsed_time ::
        JSRef WebKitAnimation -> Double -> IO ()
#else 
ghcjs_dom_webkit_animation_set_elapsed_time ::
                                              JSRef WebKitAnimation -> Double -> IO ()
ghcjs_dom_webkit_animation_set_elapsed_time = undefined
#endif
 
webKitAnimationSetElapsedTime ::
                              (IsWebKitAnimation self) => self -> Double -> IO ()
webKitAnimationSetElapsedTime self val
  = ghcjs_dom_webkit_animation_set_elapsed_time
      (unWebKitAnimation (toWebKitAnimation self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        ghcjs_dom_webkit_animation_get_elapsed_time ::
        JSRef WebKitAnimation -> IO Double
#else 
ghcjs_dom_webkit_animation_get_elapsed_time ::
                                              JSRef WebKitAnimation -> IO Double
ghcjs_dom_webkit_animation_get_elapsed_time = undefined
#endif
 
webKitAnimationGetElapsedTime ::
                              (IsWebKitAnimation self) => self -> IO Double
webKitAnimationGetElapsedTime self
  = ghcjs_dom_webkit_animation_get_elapsed_time
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"delay\"]"
        ghcjs_dom_webkit_animation_get_delay ::
        JSRef WebKitAnimation -> IO Double
#else 
ghcjs_dom_webkit_animation_get_delay ::
                                       JSRef WebKitAnimation -> IO Double
ghcjs_dom_webkit_animation_get_delay = undefined
#endif
 
webKitAnimationGetDelay ::
                        (IsWebKitAnimation self) => self -> IO Double
webKitAnimationGetDelay self
  = ghcjs_dom_webkit_animation_get_delay
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        ghcjs_dom_webkit_animation_get_paused ::
        JSRef WebKitAnimation -> IO Bool
#else 
ghcjs_dom_webkit_animation_get_paused ::
                                        JSRef WebKitAnimation -> IO Bool
ghcjs_dom_webkit_animation_get_paused = undefined
#endif
 
webKitAnimationGetPaused ::
                         (IsWebKitAnimation self) => self -> IO Bool
webKitAnimationGetPaused self
  = ghcjs_dom_webkit_animation_get_paused
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"ended\"] ? 1 : 0)"
        ghcjs_dom_webkit_animation_get_ended ::
        JSRef WebKitAnimation -> IO Bool
#else 
ghcjs_dom_webkit_animation_get_ended ::
                                       JSRef WebKitAnimation -> IO Bool
ghcjs_dom_webkit_animation_get_ended = undefined
#endif
 
webKitAnimationGetEnded ::
                        (IsWebKitAnimation self) => self -> IO Bool
webKitAnimationGetEnded self
  = ghcjs_dom_webkit_animation_get_ended
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"direction\"]"
        ghcjs_dom_webkit_animation_get_direction ::
        JSRef WebKitAnimation -> IO Word
#else 
ghcjs_dom_webkit_animation_get_direction ::
                                           JSRef WebKitAnimation -> IO Word
ghcjs_dom_webkit_animation_get_direction = undefined
#endif
 
webKitAnimationGetDirection ::
                            (IsWebKitAnimation self) => self -> IO Word
webKitAnimationGetDirection self
  = ghcjs_dom_webkit_animation_get_direction
      (unWebKitAnimation (toWebKitAnimation self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"fillMode\"]"
        ghcjs_dom_webkit_animation_get_fill_mode ::
        JSRef WebKitAnimation -> IO Word
#else 
ghcjs_dom_webkit_animation_get_fill_mode ::
                                           JSRef WebKitAnimation -> IO Word
ghcjs_dom_webkit_animation_get_fill_mode = undefined
#endif
 
webKitAnimationGetFillMode ::
                           (IsWebKitAnimation self) => self -> IO Word
webKitAnimationGetFillMode self
  = ghcjs_dom_webkit_animation_get_fill_mode
      (unWebKitAnimation (toWebKitAnimation self))