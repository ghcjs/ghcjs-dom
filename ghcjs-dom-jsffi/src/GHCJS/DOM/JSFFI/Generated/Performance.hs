{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Performance
       (js_webkitGetEntries, webkitGetEntries, js_webkitGetEntriesByType,
        webkitGetEntriesByType, js_webkitGetEntriesByName,
        webkitGetEntriesByName, js_webkitClearResourceTimings,
        webkitClearResourceTimings, js_webkitSetResourceTimingBufferSize,
        webkitSetResourceTimingBufferSize, js_webkitMark, webkitMark,
        js_webkitClearMarks, webkitClearMarks, js_webkitMeasure,
        webkitMeasure, js_webkitClearMeasures, webkitClearMeasures, js_now,
        now, js_getNavigation, getNavigation, js_getTiming, getTiming,
        webKitResourceTimingBufferFull, Performance, castToPerformance,
        gTypePerformance)
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
 
foreign import javascript unsafe "$1[\"webkitGetEntries\"]()"
        js_webkitGetEntries ::
        Performance -> IO (Nullable PerformanceEntryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntries ::
                 (MonadIO m) => Performance -> m (Maybe PerformanceEntryList)
webkitGetEntries self
  = liftIO (nullableToMaybe <$> (js_webkitGetEntries (self)))
 
foreign import javascript unsafe
        "$1[\"webkitGetEntriesByType\"]($2)" js_webkitGetEntriesByType ::
        Performance -> JSString -> IO (Nullable PerformanceEntryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByType ::
                       (MonadIO m, ToJSString entryType) =>
                         Performance -> entryType -> m (Maybe PerformanceEntryList)
webkitGetEntriesByType self entryType
  = liftIO
      (nullableToMaybe <$>
         (js_webkitGetEntriesByType (self) (toJSString entryType)))
 
foreign import javascript unsafe
        "$1[\"webkitGetEntriesByName\"]($2,\n$3)" js_webkitGetEntriesByName
        ::
        Performance ->
          JSString -> JSString -> IO (Nullable PerformanceEntryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByName ::
                       (MonadIO m, ToJSString name, ToJSString entryType) =>
                         Performance -> name -> entryType -> m (Maybe PerformanceEntryList)
webkitGetEntriesByName self name entryType
  = liftIO
      (nullableToMaybe <$>
         (js_webkitGetEntriesByName (self) (toJSString name)
            (toJSString entryType)))
 
foreign import javascript unsafe
        "$1[\"webkitClearResourceTimings\"]()"
        js_webkitClearResourceTimings :: Performance -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearResourceTimings Mozilla Performance.webkitClearResourceTimings documentation> 
webkitClearResourceTimings :: (MonadIO m) => Performance -> m ()
webkitClearResourceTimings self
  = liftIO (js_webkitClearResourceTimings (self))
 
foreign import javascript unsafe
        "$1[\"webkitSetResourceTimingBufferSize\"]($2)"
        js_webkitSetResourceTimingBufferSize ::
        Performance -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitSetResourceTimingBufferSize Mozilla Performance.webkitSetResourceTimingBufferSize documentation> 
webkitSetResourceTimingBufferSize ::
                                  (MonadIO m) => Performance -> Word -> m ()
webkitSetResourceTimingBufferSize self maxSize
  = liftIO (js_webkitSetResourceTimingBufferSize (self) maxSize)
 
foreign import javascript unsafe "$1[\"webkitMark\"]($2)"
        js_webkitMark :: Performance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitMark Mozilla Performance.webkitMark documentation> 
webkitMark ::
           (MonadIO m, ToJSString markName) => Performance -> markName -> m ()
webkitMark self markName
  = liftIO (js_webkitMark (self) (toJSString markName))
 
foreign import javascript unsafe "$1[\"webkitClearMarks\"]($2)"
        js_webkitClearMarks :: Performance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearMarks Mozilla Performance.webkitClearMarks documentation> 
webkitClearMarks ::
                 (MonadIO m, ToJSString markName) => Performance -> markName -> m ()
webkitClearMarks self markName
  = liftIO (js_webkitClearMarks (self) (toJSString markName))
 
foreign import javascript unsafe
        "$1[\"webkitMeasure\"]($2, $3, $4)" js_webkitMeasure ::
        Performance -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitMeasure Mozilla Performance.webkitMeasure documentation> 
webkitMeasure ::
              (MonadIO m, ToJSString measureName, ToJSString startMark,
               ToJSString endMark) =>
                Performance -> measureName -> startMark -> endMark -> m ()
webkitMeasure self measureName startMark endMark
  = liftIO
      (js_webkitMeasure (self) (toJSString measureName)
         (toJSString startMark)
         (toJSString endMark))
 
foreign import javascript unsafe "$1[\"webkitClearMeasures\"]($2)"
        js_webkitClearMeasures :: Performance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearMeasures Mozilla Performance.webkitClearMeasures documentation> 
webkitClearMeasures ::
                    (MonadIO m, ToJSString measureName) =>
                      Performance -> measureName -> m ()
webkitClearMeasures self measureName
  = liftIO (js_webkitClearMeasures (self) (toJSString measureName))
 
foreign import javascript unsafe "$1[\"now\"]()" js_now ::
        Performance -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
now :: (MonadIO m) => Performance -> m Double
now self = liftIO (js_now (self))
 
foreign import javascript unsafe "$1[\"navigation\"]"
        js_getNavigation ::
        Performance -> IO (Nullable PerformanceNavigation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigation ::
              (MonadIO m) => Performance -> m (Maybe PerformanceNavigation)
getNavigation self
  = liftIO (nullableToMaybe <$> (js_getNavigation (self)))
 
foreign import javascript unsafe "$1[\"timing\"]" js_getTiming ::
        Performance -> IO (Nullable PerformanceTiming)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTiming ::
          (MonadIO m) => Performance -> m (Maybe PerformanceTiming)
getTiming self = liftIO (nullableToMaybe <$> (js_getTiming (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.onwebkitresourcetimingbufferfull Mozilla Performance.onwebkitresourcetimingbufferfull documentation> 
webKitResourceTimingBufferFull :: EventName Performance Event
webKitResourceTimingBufferFull
  = unsafeEventName (toJSString "webkitresourcetimingbufferfull")