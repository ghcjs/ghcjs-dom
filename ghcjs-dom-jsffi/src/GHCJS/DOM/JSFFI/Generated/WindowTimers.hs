{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WindowTimers
       (js_setTimeout, setTimeout, js_clearTimeout, clearTimeout,
        js_setInterval, setInterval, js_clearInterval, clearInterval,
        WindowTimers, castToWindowTimers, gTypeWindowTimers)
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
 
foreign import javascript unsafe "$1[\"setTimeout\"]($2, $3)"
        js_setTimeout :: WindowTimers -> JSVal -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setTimeout Mozilla WindowTimers.setTimeout documentation> 
setTimeout :: (MonadIO m) => WindowTimers -> JSVal -> Int -> m Int
setTimeout self handler timeout
  = liftIO (js_setTimeout (self) handler timeout)
 
foreign import javascript unsafe "$1[\"clearTimeout\"]($2)"
        js_clearTimeout :: WindowTimers -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearTimeout Mozilla WindowTimers.clearTimeout documentation> 
clearTimeout :: (MonadIO m) => WindowTimers -> Int -> m ()
clearTimeout self handle = liftIO (js_clearTimeout (self) handle)
 
foreign import javascript unsafe "$1[\"setInterval\"]($2, $3)"
        js_setInterval :: WindowTimers -> JSVal -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setInterval Mozilla WindowTimers.setInterval documentation> 
setInterval :: (MonadIO m) => WindowTimers -> JSVal -> Int -> m Int
setInterval self handler timeout
  = liftIO (js_setInterval (self) handler timeout)
 
foreign import javascript unsafe "$1[\"clearInterval\"]($2)"
        js_clearInterval :: WindowTimers -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearInterval Mozilla WindowTimers.clearInterval documentation> 
clearInterval :: (MonadIO m) => WindowTimers -> Int -> m ()
clearInterval self handle = liftIO (js_clearInterval (self) handle)