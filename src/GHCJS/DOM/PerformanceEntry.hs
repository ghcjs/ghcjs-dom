{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PerformanceEntry
       (ghcjs_dom_performance_entry_get_name, performanceEntryGetName,
        ghcjs_dom_performance_entry_get_entry_type,
        performanceEntryGetEntryType,
        ghcjs_dom_performance_entry_get_start_time,
        performanceEntryGetStartTime,
        ghcjs_dom_performance_entry_get_duration,
        performanceEntryGetDuration, PerformanceEntry, IsPerformanceEntry,
        castToPerformanceEntry, gTypePerformanceEntry, toPerformanceEntry)
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

 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_performance_entry_get_name ::
        JSRef PerformanceEntry -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.name Mozilla PerformanceEntry.name documentation> 
performanceEntryGetName ::
                        (MonadIO m, IsPerformanceEntry self, FromJSString result) =>
                          self -> m result
performanceEntryGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_performance_entry_get_name
            (unPerformanceEntry (toPerformanceEntry self))))
 
foreign import javascript unsafe "$1[\"entryType\"]"
        ghcjs_dom_performance_entry_get_entry_type ::
        JSRef PerformanceEntry -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.entryType Mozilla PerformanceEntry.entryType documentation> 
performanceEntryGetEntryType ::
                             (MonadIO m, IsPerformanceEntry self, FromJSString result) =>
                               self -> m result
performanceEntryGetEntryType self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_performance_entry_get_entry_type
            (unPerformanceEntry (toPerformanceEntry self))))
 
foreign import javascript unsafe "$1[\"startTime\"]"
        ghcjs_dom_performance_entry_get_start_time ::
        JSRef PerformanceEntry -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.startTime Mozilla PerformanceEntry.startTime documentation> 
performanceEntryGetStartTime ::
                             (MonadIO m, IsPerformanceEntry self) => self -> m Double
performanceEntryGetStartTime self
  = liftIO
      (ghcjs_dom_performance_entry_get_start_time
         (unPerformanceEntry (toPerformanceEntry self)))
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_performance_entry_get_duration ::
        JSRef PerformanceEntry -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.duration Mozilla PerformanceEntry.duration documentation> 
performanceEntryGetDuration ::
                            (MonadIO m, IsPerformanceEntry self) => self -> m Double
performanceEntryGetDuration self
  = liftIO
      (ghcjs_dom_performance_entry_get_duration
         (unPerformanceEntry (toPerformanceEntry self)))
#else
module GHCJS.DOM.PerformanceEntry (
  ) where
#endif
