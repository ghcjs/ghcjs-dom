{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Performance
       (js_webkitGetEntries, webkitGetEntries, webkitGetEntries_,
        webkitGetEntriesUnsafe, webkitGetEntriesUnchecked,
        js_webkitGetEntriesByType, webkitGetEntriesByType,
        webkitGetEntriesByType_, webkitGetEntriesByTypeUnsafe,
        webkitGetEntriesByTypeUnchecked, js_webkitGetEntriesByName,
        webkitGetEntriesByName, webkitGetEntriesByName_,
        webkitGetEntriesByNameUnsafe, webkitGetEntriesByNameUnchecked,
        js_webkitClearResourceTimings, webkitClearResourceTimings,
        js_webkitSetResourceTimingBufferSize,
        webkitSetResourceTimingBufferSize, js_webkitMark, webkitMark,
        js_webkitClearMarks, webkitClearMarks, js_webkitMeasure,
        webkitMeasure, js_webkitClearMeasures, webkitClearMeasures, js_now,
        now, now_, js_getNavigation, getNavigation, getNavigationUnsafe,
        getNavigationUnchecked, js_getTiming, getTiming, getTimingUnsafe,
        getTimingUnchecked, webKitResourceTimingBufferFull,
        Performance(..), gTypePerformance)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"webkitGetEntries\"]()"
        js_webkitGetEntries ::
        Performance -> IO (Nullable PerformanceEntryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntries ::
                 (MonadIO m) => Performance -> m (Maybe PerformanceEntryList)
webkitGetEntries self
  = liftIO (nullableToMaybe <$> (js_webkitGetEntries (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntries_ :: (MonadIO m) => Performance -> m ()
webkitGetEntries_ self = liftIO (void (js_webkitGetEntries (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntriesUnsafe ::
                       (MonadIO m, HasCallStack) => Performance -> m PerformanceEntryList
webkitGetEntriesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_webkitGetEntries (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
webkitGetEntriesUnchecked ::
                          (MonadIO m) => Performance -> m PerformanceEntryList
webkitGetEntriesUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_webkitGetEntries (self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByType_ ::
                        (MonadIO m, ToJSString entryType) =>
                          Performance -> entryType -> m ()
webkitGetEntriesByType_ self entryType
  = liftIO
      (void (js_webkitGetEntriesByType (self) (toJSString entryType)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByTypeUnsafe ::
                             (MonadIO m, ToJSString entryType, HasCallStack) =>
                               Performance -> entryType -> m PerformanceEntryList
webkitGetEntriesByTypeUnsafe self entryType
  = liftIO
      ((nullableToMaybe <$>
          (js_webkitGetEntriesByType (self) (toJSString entryType)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
webkitGetEntriesByTypeUnchecked ::
                                (MonadIO m, ToJSString entryType) =>
                                  Performance -> entryType -> m PerformanceEntryList
webkitGetEntriesByTypeUnchecked self entryType
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByName_ ::
                        (MonadIO m, ToJSString name, ToJSString entryType) =>
                          Performance -> name -> entryType -> m ()
webkitGetEntriesByName_ self name entryType
  = liftIO
      (void
         (js_webkitGetEntriesByName (self) (toJSString name)
            (toJSString entryType)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByNameUnsafe ::
                             (MonadIO m, ToJSString name, ToJSString entryType, HasCallStack) =>
                               Performance -> name -> entryType -> m PerformanceEntryList
webkitGetEntriesByNameUnsafe self name entryType
  = liftIO
      ((nullableToMaybe <$>
          (js_webkitGetEntriesByName (self) (toJSString name)
             (toJSString entryType)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
webkitGetEntriesByNameUnchecked ::
                                (MonadIO m, ToJSString name, ToJSString entryType) =>
                                  Performance -> name -> entryType -> m PerformanceEntryList
webkitGetEntriesByNameUnchecked self name entryType
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
now_ :: (MonadIO m) => Performance -> m ()
now_ self = liftIO (void (js_now (self)))
 
foreign import javascript unsafe "$1[\"navigation\"]"
        js_getNavigation ::
        Performance -> IO (Nullable PerformanceNavigation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigation ::
              (MonadIO m) => Performance -> m (Maybe PerformanceNavigation)
getNavigation self
  = liftIO (nullableToMaybe <$> (js_getNavigation (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigationUnsafe ::
                    (MonadIO m, HasCallStack) => Performance -> m PerformanceNavigation
getNavigationUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getNavigation (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
getNavigationUnchecked ::
                       (MonadIO m) => Performance -> m PerformanceNavigation
getNavigationUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getNavigation (self)))
 
foreign import javascript unsafe "$1[\"timing\"]" js_getTiming ::
        Performance -> IO (Nullable PerformanceTiming)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTiming ::
          (MonadIO m) => Performance -> m (Maybe PerformanceTiming)
getTiming self = liftIO (nullableToMaybe <$> (js_getTiming (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTimingUnsafe ::
                (MonadIO m, HasCallStack) => Performance -> m PerformanceTiming
getTimingUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTiming (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
getTimingUnchecked ::
                   (MonadIO m) => Performance -> m PerformanceTiming
getTimingUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTiming (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.onwebkitresourcetimingbufferfull Mozilla Performance.onwebkitresourcetimingbufferfull documentation> 
webKitResourceTimingBufferFull :: EventName Performance Event
webKitResourceTimingBufferFull
  = unsafeEventName (toJSString "webkitresourcetimingbufferfull")