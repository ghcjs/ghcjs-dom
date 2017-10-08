{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Performance
       (js_now, now, now_, js_getEntries, getEntries, getEntries_,
        js_getEntriesByType, getEntriesByType, getEntriesByType_,
        js_getEntriesByName, getEntriesByName, getEntriesByName_,
        js_clearResourceTimings, clearResourceTimings,
        js_setResourceTimingBufferSize, setResourceTimingBufferSize,
        js_mark, mark, js_clearMarks, clearMarks, js_measure, measure,
        js_clearMeasures, clearMeasures, js_getNavigation, getNavigation,
        js_getTiming, getTiming, resourceTimingBufferFull, Performance(..),
        gTypePerformance)
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
 
foreign import javascript unsafe "$1[\"now\"]()" js_now ::
        Performance -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
now :: (MonadIO m) => Performance -> m DOMHighResTimeStamp
now self = liftIO (js_now self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
now_ :: (MonadIO m) => Performance -> m ()
now_ self = liftIO (void (js_now self))
 
foreign import javascript unsafe "$1[\"getEntries\"]()"
        js_getEntries :: Performance -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntries Mozilla Performance.getEntries documentation> 
getEntries :: (MonadIO m) => Performance -> m PerformanceEntryList
getEntries self
  = liftIO ((js_getEntries self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntries Mozilla Performance.getEntries documentation> 
getEntries_ :: (MonadIO m) => Performance -> m ()
getEntries_ self = liftIO (void (js_getEntries self))
 
foreign import javascript unsafe "$1[\"getEntriesByType\"]($2)"
        js_getEntriesByType :: Performance -> JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntriesByType Mozilla Performance.getEntriesByType documentation> 
getEntriesByType ::
                 (MonadIO m, ToJSString entryType) =>
                   Performance -> entryType -> m PerformanceEntryList
getEntriesByType self entryType
  = liftIO
      ((js_getEntriesByType self (toJSString entryType)) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntriesByType Mozilla Performance.getEntriesByType documentation> 
getEntriesByType_ ::
                  (MonadIO m, ToJSString entryType) =>
                    Performance -> entryType -> m ()
getEntriesByType_ self entryType
  = liftIO (void (js_getEntriesByType self (toJSString entryType)))
 
foreign import javascript unsafe "$1[\"getEntriesByName\"]($2, $3)"
        js_getEntriesByName ::
        Performance -> JSString -> Optional JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntriesByName Mozilla Performance.getEntriesByName documentation> 
getEntriesByName ::
                 (MonadIO m, ToJSString name, ToJSString entryType) =>
                   Performance -> name -> Maybe entryType -> m PerformanceEntryList
getEntriesByName self name entryType
  = liftIO
      ((js_getEntriesByName self (toJSString name)
          (toOptionalJSString entryType))
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.getEntriesByName Mozilla Performance.getEntriesByName documentation> 
getEntriesByName_ ::
                  (MonadIO m, ToJSString name, ToJSString entryType) =>
                    Performance -> name -> Maybe entryType -> m ()
getEntriesByName_ self name entryType
  = liftIO
      (void
         (js_getEntriesByName self (toJSString name)
            (toOptionalJSString entryType)))
 
foreign import javascript unsafe "$1[\"clearResourceTimings\"]()"
        js_clearResourceTimings :: Performance -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.clearResourceTimings Mozilla Performance.clearResourceTimings documentation> 
clearResourceTimings :: (MonadIO m) => Performance -> m ()
clearResourceTimings self = liftIO (js_clearResourceTimings self)
 
foreign import javascript unsafe
        "$1[\"setResourceTimingBufferSize\"]($2)"
        js_setResourceTimingBufferSize :: Performance -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.setResourceTimingBufferSize Mozilla Performance.setResourceTimingBufferSize documentation> 
setResourceTimingBufferSize ::
                            (MonadIO m) => Performance -> Word -> m ()
setResourceTimingBufferSize self maxSize
  = liftIO (js_setResourceTimingBufferSize self maxSize)
 
foreign import javascript safe "$1[\"mark\"]($2)" js_mark ::
        Performance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.mark Mozilla Performance.mark documentation> 
mark ::
     (MonadIO m, ToJSString markName) => Performance -> markName -> m ()
mark self markName = liftIO (js_mark self (toJSString markName))
 
foreign import javascript unsafe "$1[\"clearMarks\"]($2)"
        js_clearMarks :: Performance -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.clearMarks Mozilla Performance.clearMarks documentation> 
clearMarks ::
           (MonadIO m, ToJSString markName) =>
             Performance -> Maybe markName -> m ()
clearMarks self markName
  = liftIO (js_clearMarks self (toOptionalJSString markName))
 
foreign import javascript safe "$1[\"measure\"]($2, $3, $4)"
        js_measure ::
        Performance ->
          JSString -> Optional JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.measure Mozilla Performance.measure documentation> 
measure ::
        (MonadIO m, ToJSString measureName, ToJSString startMark,
         ToJSString endMark) =>
          Performance ->
            measureName -> Maybe startMark -> Maybe endMark -> m ()
measure self measureName startMark endMark
  = liftIO
      (js_measure self (toJSString measureName)
         (toOptionalJSString startMark)
         (toOptionalJSString endMark))
 
foreign import javascript unsafe "$1[\"clearMeasures\"]($2)"
        js_clearMeasures :: Performance -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.clearMeasures Mozilla Performance.clearMeasures documentation> 
clearMeasures ::
              (MonadIO m, ToJSString measureName) =>
                Performance -> Maybe measureName -> m ()
clearMeasures self measureName
  = liftIO (js_clearMeasures self (toOptionalJSString measureName))
 
foreign import javascript unsafe "$1[\"navigation\"]"
        js_getNavigation :: Performance -> IO PerformanceNavigation

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigation ::
              (MonadIO m) => Performance -> m PerformanceNavigation
getNavigation self = liftIO (js_getNavigation self)
 
foreign import javascript unsafe "$1[\"timing\"]" js_getTiming ::
        Performance -> IO PerformanceTiming

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTiming :: (MonadIO m) => Performance -> m PerformanceTiming
getTiming self = liftIO (js_getTiming self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.onresourcetimingbufferfull Mozilla Performance.onresourcetimingbufferfull documentation> 
resourceTimingBufferFull ::
                           EventName Performance onresourcetimingbufferfull
resourceTimingBufferFull
  = unsafeEventName (toJSString "resourcetimingbufferfull")