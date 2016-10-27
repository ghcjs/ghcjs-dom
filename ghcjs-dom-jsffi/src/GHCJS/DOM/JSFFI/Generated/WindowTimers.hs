{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WindowTimers
       (js_setTimeout, setTimeout, setTimeout_, js_clearTimeout,
        clearTimeout, js_setInterval, setInterval, setInterval_,
        js_clearInterval, clearInterval, WindowTimers(..),
        gTypeWindowTimers)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"setTimeout\"]($2, $3)"
        js_setTimeout :: WindowTimers -> JSVal -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setTimeout Mozilla WindowTimers.setTimeout documentation> 
setTimeout :: (MonadIO m) => WindowTimers -> JSVal -> Int -> m Int
setTimeout self handler timeout
  = liftIO (js_setTimeout (self) handler timeout)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setTimeout Mozilla WindowTimers.setTimeout documentation> 
setTimeout_ :: (MonadIO m) => WindowTimers -> JSVal -> Int -> m ()
setTimeout_ self handler timeout
  = liftIO (void (js_setTimeout (self) handler timeout))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setInterval Mozilla WindowTimers.setInterval documentation> 
setInterval_ :: (MonadIO m) => WindowTimers -> JSVal -> Int -> m ()
setInterval_ self handler timeout
  = liftIO (void (js_setInterval (self) handler timeout))
 
foreign import javascript unsafe "$1[\"clearInterval\"]($2)"
        js_clearInterval :: WindowTimers -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.clearInterval Mozilla WindowTimers.clearInterval documentation> 
clearInterval :: (MonadIO m) => WindowTimers -> Int -> m ()
clearInterval self handle = liftIO (js_clearInterval (self) handle)