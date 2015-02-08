{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MemoryInfo
       (ghcjs_dom_memory_info_get_used_js_heap_size,
        memoryInfoGetUsedJSHeapSize,
        ghcjs_dom_memory_info_get_total_js_heap_size,
        memoryInfoGetTotalJSHeapSize, MemoryInfo, IsMemoryInfo,
        castToMemoryInfo, gTypeMemoryInfo, toMemoryInfo)
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

 
foreign import javascript unsafe "$1[\"usedJSHeapSize\"]"
        ghcjs_dom_memory_info_get_used_js_heap_size ::
        JSRef MemoryInfo -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo.usedJSHeapSize Mozilla MemoryInfo.usedJSHeapSize documentation> 
memoryInfoGetUsedJSHeapSize ::
                            (MonadIO m, IsMemoryInfo self) => self -> m Word
memoryInfoGetUsedJSHeapSize self
  = liftIO
      (ghcjs_dom_memory_info_get_used_js_heap_size
         (unMemoryInfo (toMemoryInfo self)))
 
foreign import javascript unsafe "$1[\"totalJSHeapSize\"]"
        ghcjs_dom_memory_info_get_total_js_heap_size ::
        JSRef MemoryInfo -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo.totalJSHeapSize Mozilla MemoryInfo.totalJSHeapSize documentation> 
memoryInfoGetTotalJSHeapSize ::
                             (MonadIO m, IsMemoryInfo self) => self -> m Word
memoryInfoGetTotalJSHeapSize self
  = liftIO
      (ghcjs_dom_memory_info_get_total_js_heap_size
         (unMemoryInfo (toMemoryInfo self)))
#else
module GHCJS.DOM.MemoryInfo (
  ) where
#endif
