{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MemoryInfo
       (js_getUsedJSHeapSize, getUsedJSHeapSize, js_getTotalJSHeapSize,
        getTotalJSHeapSize, MemoryInfo, castToMemoryInfo, gTypeMemoryInfo)
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
 
foreign import javascript unsafe "$1[\"usedJSHeapSize\"]"
        js_getUsedJSHeapSize :: MemoryInfo -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo.usedJSHeapSize Mozilla MemoryInfo.usedJSHeapSize documentation> 
getUsedJSHeapSize :: (MonadIO m) => MemoryInfo -> m Word
getUsedJSHeapSize self = liftIO (js_getUsedJSHeapSize (self))
 
foreign import javascript unsafe "$1[\"totalJSHeapSize\"]"
        js_getTotalJSHeapSize :: MemoryInfo -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo.totalJSHeapSize Mozilla MemoryInfo.totalJSHeapSize documentation> 
getTotalJSHeapSize :: (MonadIO m) => MemoryInfo -> m Word
getTotalJSHeapSize self = liftIO (js_getTotalJSHeapSize (self))