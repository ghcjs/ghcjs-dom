{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MallocStatistics
       (ghcjs_dom_malloc_statistics_get_reserved_vm_bytes,
        mallocStatisticsGetReservedVMBytes,
        ghcjs_dom_malloc_statistics_get_committed_vm_bytes,
        mallocStatisticsGetCommittedVMBytes,
        ghcjs_dom_malloc_statistics_get_free_list_bytes,
        mallocStatisticsGetFreeListBytes, MallocStatistics,
        IsMallocStatistics, castToMallocStatistics, gTypeMallocStatistics,
        toMallocStatistics)
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

 
foreign import javascript unsafe "$1[\"reservedVMBytes\"]"
        ghcjs_dom_malloc_statistics_get_reserved_vm_bytes ::
        JSRef MallocStatistics -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.reservedVMBytes Mozilla MallocStatistics.reservedVMBytes documentation> 
mallocStatisticsGetReservedVMBytes ::
                                   (MonadIO m, IsMallocStatistics self) => self -> m Word
mallocStatisticsGetReservedVMBytes self
  = liftIO
      (ghcjs_dom_malloc_statistics_get_reserved_vm_bytes
         (unMallocStatistics (toMallocStatistics self)))
 
foreign import javascript unsafe "$1[\"committedVMBytes\"]"
        ghcjs_dom_malloc_statistics_get_committed_vm_bytes ::
        JSRef MallocStatistics -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.committedVMBytes Mozilla MallocStatistics.committedVMBytes documentation> 
mallocStatisticsGetCommittedVMBytes ::
                                    (MonadIO m, IsMallocStatistics self) => self -> m Word
mallocStatisticsGetCommittedVMBytes self
  = liftIO
      (ghcjs_dom_malloc_statistics_get_committed_vm_bytes
         (unMallocStatistics (toMallocStatistics self)))
 
foreign import javascript unsafe "$1[\"freeListBytes\"]"
        ghcjs_dom_malloc_statistics_get_free_list_bytes ::
        JSRef MallocStatistics -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics.freeListBytes Mozilla MallocStatistics.freeListBytes documentation> 
mallocStatisticsGetFreeListBytes ::
                                 (MonadIO m, IsMallocStatistics self) => self -> m Word
mallocStatisticsGetFreeListBytes self
  = liftIO
      (ghcjs_dom_malloc_statistics_get_free_list_bytes
         (unMallocStatistics (toMallocStatistics self)))
#else
module GHCJS.DOM.MallocStatistics (
  ) where
#endif
