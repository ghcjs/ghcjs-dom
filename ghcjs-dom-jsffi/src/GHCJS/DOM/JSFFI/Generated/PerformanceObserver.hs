{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PerformanceObserver
       (js_newPerformanceObserver, newPerformanceObserver, js_observe,
        observe, js_disconnect, disconnect, PerformanceObserver(..),
        gTypePerformanceObserver)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new window[\"PerformanceObserver\"]($1)" js_newPerformanceObserver
        :: PerformanceObserverCallback -> IO PerformanceObserver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver Mozilla PerformanceObserver documentation> 
newPerformanceObserver ::
                       (MonadIO m) => PerformanceObserverCallback -> m PerformanceObserver
newPerformanceObserver callback
  = liftIO (js_newPerformanceObserver callback)
 
foreign import javascript safe "$1[\"observe\"]($2)" js_observe ::
        PerformanceObserver -> PerformanceObserverInit -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver.observe Mozilla PerformanceObserver.observe documentation> 
observe ::
        (MonadIO m) =>
          PerformanceObserver -> PerformanceObserverInit -> m ()
observe self options = liftIO (js_observe self options)
 
foreign import javascript unsafe "$1[\"disconnect\"]()"
        js_disconnect :: PerformanceObserver -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver.disconnect Mozilla PerformanceObserver.disconnect documentation> 
disconnect :: (MonadIO m) => PerformanceObserver -> m ()
disconnect self = liftIO (js_disconnect self)