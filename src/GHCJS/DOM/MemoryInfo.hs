{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.MemoryInfo
       (webkit_dom_memory_info_get_total_js_heap_size,
        memoryInfoGetTotalJSHeapSize,
        webkit_dom_memory_info_get_used_js_heap_size,
        memoryInfoGetUsedJSHeapSize,
        webkit_dom_memory_info_get_js_heap_size_limit,
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
        webkit_dom_memory_info_get_total_js_heap_size ::
        JSRef MemoryInfo -> IO Word
#else 
webkit_dom_memory_info_get_total_js_heap_size ::
                                                JSRef MemoryInfo -> IO Word
webkit_dom_memory_info_get_total_js_heap_size = undefined
#endif
 
memoryInfoGetTotalJSHeapSize ::
                             (MemoryInfoClass self) => self -> IO Word
memoryInfoGetTotalJSHeapSize self
  = webkit_dom_memory_info_get_total_js_heap_size
      (unMemoryInfo (toMemoryInfo self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"usedJSHeapSize\"]"
        webkit_dom_memory_info_get_used_js_heap_size ::
        JSRef MemoryInfo -> IO Word
#else 
webkit_dom_memory_info_get_used_js_heap_size ::
                                               JSRef MemoryInfo -> IO Word
webkit_dom_memory_info_get_used_js_heap_size = undefined
#endif
 
memoryInfoGetUsedJSHeapSize ::
                            (MemoryInfoClass self) => self -> IO Word
memoryInfoGetUsedJSHeapSize self
  = webkit_dom_memory_info_get_used_js_heap_size
      (unMemoryInfo (toMemoryInfo self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"jsHeapSizeLimit\"]"
        webkit_dom_memory_info_get_js_heap_size_limit ::
        JSRef MemoryInfo -> IO Word
#else 
webkit_dom_memory_info_get_js_heap_size_limit ::
                                                JSRef MemoryInfo -> IO Word
webkit_dom_memory_info_get_js_heap_size_limit = undefined
#endif
 
memoryInfoGetJsHeapSizeLimit ::
                             (MemoryInfoClass self) => self -> IO Word
memoryInfoGetJsHeapSizeLimit self
  = webkit_dom_memory_info_get_js_heap_size_limit
      (unMemoryInfo (toMemoryInfo self))