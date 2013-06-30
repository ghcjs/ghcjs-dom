{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.MemoryInfo
       (ghcjs_dom_memory_info_get_total_js_heap_size,
        memoryInfoGetTotalJSHeapSize,
        ghcjs_dom_memory_info_get_used_js_heap_size,
        memoryInfoGetUsedJSHeapSize,
        ghcjs_dom_memory_info_get_js_heap_size_limit,
        memoryInfoGetJsHeapSizeLimit)
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
foreign import javascript unsafe "$1[\"totalJSHeapSize\"]"
        ghcjs_dom_memory_info_get_total_js_heap_size ::
        JSRef MemoryInfo -> IO Word
#else 
ghcjs_dom_memory_info_get_total_js_heap_size ::
                                               JSRef MemoryInfo -> IO Word
ghcjs_dom_memory_info_get_total_js_heap_size = undefined
#endif
 
memoryInfoGetTotalJSHeapSize ::
                             (IsMemoryInfo self) => self -> IO Word
memoryInfoGetTotalJSHeapSize self
  = ghcjs_dom_memory_info_get_total_js_heap_size
      (unMemoryInfo (toMemoryInfo self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"usedJSHeapSize\"]"
        ghcjs_dom_memory_info_get_used_js_heap_size ::
        JSRef MemoryInfo -> IO Word
#else 
ghcjs_dom_memory_info_get_used_js_heap_size ::
                                              JSRef MemoryInfo -> IO Word
ghcjs_dom_memory_info_get_used_js_heap_size = undefined
#endif
 
memoryInfoGetUsedJSHeapSize ::
                            (IsMemoryInfo self) => self -> IO Word
memoryInfoGetUsedJSHeapSize self
  = ghcjs_dom_memory_info_get_used_js_heap_size
      (unMemoryInfo (toMemoryInfo self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"jsHeapSizeLimit\"]"
        ghcjs_dom_memory_info_get_js_heap_size_limit ::
        JSRef MemoryInfo -> IO Word
#else 
ghcjs_dom_memory_info_get_js_heap_size_limit ::
                                               JSRef MemoryInfo -> IO Word
ghcjs_dom_memory_info_get_js_heap_size_limit = undefined
#endif
 
memoryInfoGetJsHeapSizeLimit ::
                             (IsMemoryInfo self) => self -> IO Word
memoryInfoGetJsHeapSizeLimit self
  = ghcjs_dom_memory_info_get_js_heap_size_limit
      (unMemoryInfo (toMemoryInfo self))