{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IntersectionObserverEntry
       (js_newIntersectionObserverEntry, newIntersectionObserverEntry,
        js_getTime, getTime, js_getRootBounds, getRootBounds,
        js_getBoundingClientRect, getBoundingClientRect,
        js_getIntersectionRect, getIntersectionRect,
        js_getIntersectionRatio, getIntersectionRatio, js_getTarget,
        getTarget, IntersectionObserverEntry(..),
        gTypeIntersectionObserverEntry)
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
        "new window[\"IntersectionObserverEntry\"]($1)"
        js_newIntersectionObserverEntry ::
        IntersectionObserverEntryInit -> IO IntersectionObserverEntry

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry Mozilla IntersectionObserverEntry documentation> 
newIntersectionObserverEntry ::
                             (MonadIO m) =>
                               IntersectionObserverEntryInit -> m IntersectionObserverEntry
newIntersectionObserverEntry intersectionObserverEntryInit
  = liftIO
      (js_newIntersectionObserverEntry intersectionObserverEntryInit)
 
foreign import javascript unsafe "$1[\"time\"]" js_getTime ::
        IntersectionObserverEntry -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.time Mozilla IntersectionObserverEntry.time documentation> 
getTime ::
        (MonadIO m) => IntersectionObserverEntry -> m DOMHighResTimeStamp
getTime self = liftIO (js_getTime self)
 
foreign import javascript unsafe "$1[\"rootBounds\"]"
        js_getRootBounds :: IntersectionObserverEntry -> IO DOMRectReadOnly

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.rootBounds Mozilla IntersectionObserverEntry.rootBounds documentation> 
getRootBounds ::
              (MonadIO m) => IntersectionObserverEntry -> m DOMRectReadOnly
getRootBounds self = liftIO (js_getRootBounds self)
 
foreign import javascript unsafe "$1[\"boundingClientRect\"]"
        js_getBoundingClientRect ::
        IntersectionObserverEntry -> IO DOMRectReadOnly

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.boundingClientRect Mozilla IntersectionObserverEntry.boundingClientRect documentation> 
getBoundingClientRect ::
                      (MonadIO m) => IntersectionObserverEntry -> m DOMRectReadOnly
getBoundingClientRect self = liftIO (js_getBoundingClientRect self)
 
foreign import javascript unsafe "$1[\"intersectionRect\"]"
        js_getIntersectionRect ::
        IntersectionObserverEntry -> IO DOMRectReadOnly

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.intersectionRect Mozilla IntersectionObserverEntry.intersectionRect documentation> 
getIntersectionRect ::
                    (MonadIO m) => IntersectionObserverEntry -> m DOMRectReadOnly
getIntersectionRect self = liftIO (js_getIntersectionRect self)
 
foreign import javascript unsafe "$1[\"intersectionRatio\"]"
        js_getIntersectionRatio :: IntersectionObserverEntry -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.intersectionRatio Mozilla IntersectionObserverEntry.intersectionRatio documentation> 
getIntersectionRatio ::
                     (MonadIO m) => IntersectionObserverEntry -> m Double
getIntersectionRatio self = liftIO (js_getIntersectionRatio self)
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        IntersectionObserverEntry -> IO Element

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry.target Mozilla IntersectionObserverEntry.target documentation> 
getTarget :: (MonadIO m) => IntersectionObserverEntry -> m Element
getTarget self = liftIO (js_getTarget self)