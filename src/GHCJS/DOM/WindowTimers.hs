{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WindowTimers
       (ghcjs_dom_window_timers_set_timeout, windowTimersSetTimeout,
        ghcjs_dom_window_timers_clear_timeout, windowTimersClearTimeout,
        ghcjs_dom_window_timers_set_interval, windowTimersSetInterval,
        ghcjs_dom_window_timers_clear_interval, windowTimersClearInterval,
        WindowTimers, IsWindowTimers, castToWindowTimers,
        gTypeWindowTimers, toWindowTimers)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"setTimeout\"]($2, $3)"
        ghcjs_dom_window_timers_set_timeout ::
        JSRef WindowTimers -> JSRef a -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.timeout Mozilla WindowTimers.timeout documentation> 
windowTimersSetTimeout ::
                       (MonadIO m, IsWindowTimers self) => self -> JSRef a -> Int -> m Int
windowTimersSetTimeout self handler timeout
  = liftIO
      (ghcjs_dom_window_timers_set_timeout
         (unWindowTimers (toWindowTimers self))
         handler
         timeout)
 
foreign import javascript unsafe "$1[\"clearTimeout\"]($2)"
        ghcjs_dom_window_timers_clear_timeout ::
        JSRef WindowTimers -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearTimeout Mozilla WindowTimers.clearTimeout documentation> 
windowTimersClearTimeout ::
                         (MonadIO m, IsWindowTimers self) => self -> Int -> m ()
windowTimersClearTimeout self handle
  = liftIO
      (ghcjs_dom_window_timers_clear_timeout
         (unWindowTimers (toWindowTimers self))
         handle)
 
foreign import javascript unsafe "$1[\"setInterval\"]($2, $3)"
        ghcjs_dom_window_timers_set_interval ::
        JSRef WindowTimers -> JSRef a -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.interval Mozilla WindowTimers.interval documentation> 
windowTimersSetInterval ::
                        (MonadIO m, IsWindowTimers self) => self -> JSRef a -> Int -> m Int
windowTimersSetInterval self handler timeout
  = liftIO
      (ghcjs_dom_window_timers_set_interval
         (unWindowTimers (toWindowTimers self))
         handler
         timeout)
 
foreign import javascript unsafe "$1[\"clearInterval\"]($2)"
        ghcjs_dom_window_timers_clear_interval ::
        JSRef WindowTimers -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearInterval Mozilla WindowTimers.clearInterval documentation> 
windowTimersClearInterval ::
                          (MonadIO m, IsWindowTimers self) => self -> Int -> m ()
windowTimersClearInterval self handle
  = liftIO
      (ghcjs_dom_window_timers_clear_interval
         (unWindowTimers (toWindowTimers self))
         handle)
#else
module GHCJS.DOM.WindowTimers (
  ) where
#endif
