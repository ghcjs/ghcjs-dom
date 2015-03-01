{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WindowTimers
       (js_setTimeout, setTimeout, js_clearTimeout, clearTimeout,
        js_setInterval, setInterval, js_clearInterval, clearInterval,
        WindowTimers, castToWindowTimers, gTypeWindowTimers)
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

 
foreign import javascript unsafe "$1[\"setTimeout\"]($2, $3)"
        js_setTimeout :: JSRef WindowTimers -> JSRef a -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setTimeout Mozilla WindowTimers.setTimeout documentation> 
setTimeout ::
           (MonadIO m) => WindowTimers -> JSRef a -> Int -> m Int
setTimeout self handler timeout
  = liftIO (js_setTimeout (unWindowTimers self) handler timeout)
 
foreign import javascript unsafe "$1[\"clearTimeout\"]($2)"
        js_clearTimeout :: JSRef WindowTimers -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearTimeout Mozilla WindowTimers.clearTimeout documentation> 
clearTimeout :: (MonadIO m) => WindowTimers -> Int -> m ()
clearTimeout self handle
  = liftIO (js_clearTimeout (unWindowTimers self) handle)
 
foreign import javascript unsafe "$1[\"setInterval\"]($2, $3)"
        js_setInterval :: JSRef WindowTimers -> JSRef a -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setInterval Mozilla WindowTimers.setInterval documentation> 
setInterval ::
            (MonadIO m) => WindowTimers -> JSRef a -> Int -> m Int
setInterval self handler timeout
  = liftIO (js_setInterval (unWindowTimers self) handler timeout)
 
foreign import javascript unsafe "$1[\"clearInterval\"]($2)"
        js_clearInterval :: JSRef WindowTimers -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearInterval Mozilla WindowTimers.clearInterval documentation> 
clearInterval :: (MonadIO m) => WindowTimers -> Int -> m ()
clearInterval self handle
  = liftIO (js_clearInterval (unWindowTimers self) handle)
#else
module GHCJS.DOM.WindowTimers (
  ) where
#endif
