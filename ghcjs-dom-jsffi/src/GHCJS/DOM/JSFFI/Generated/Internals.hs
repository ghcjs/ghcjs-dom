{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Internals
       (js_address, address, address_, js_nodeNeedsStyleRecalc,
        nodeNeedsStyleRecalc, nodeNeedsStyleRecalc_, js_description,
        description, description_, js_hasPausedImageAnimations,
        hasPausedImageAnimations, hasPausedImageAnimations_,
        js_elementRenderTreeAsText, elementRenderTreeAsText,
        elementRenderTreeAsText_, js_isPreloaded, isPreloaded,
        isPreloaded_, js_isLoadingFromMemoryCache,
        isLoadingFromMemoryCache, isLoadingFromMemoryCache_,
        js_xhrResponseSource, xhrResponseSource, xhrResponseSource_,
        js_clearMemoryCache, clearMemoryCache, js_pruneMemoryCacheToSize,
        pruneMemoryCacheToSize, js_memoryCacheSize, memoryCacheSize,
        memoryCacheSize_, js_clearPageCache, clearPageCache,
        js_pageCacheSize, pageCacheSize, pageCacheSize_,
        js_computedStyleIncludingVisitedInfo,
        computedStyleIncludingVisitedInfo,
        computedStyleIncludingVisitedInfo_,
        computedStyleIncludingVisitedInfoUnsafe,
        computedStyleIncludingVisitedInfoUnchecked, js_ensureShadowRoot,
        ensureShadowRoot, ensureShadowRoot_, ensureShadowRootUnsafe,
        ensureShadowRootUnchecked, js_createShadowRoot, createShadowRoot,
        createShadowRoot_, createShadowRootUnsafe,
        createShadowRootUnchecked, js_shadowRoot, shadowRoot, shadowRoot_,
        shadowRootUnsafe, shadowRootUnchecked, js_shadowRootType,
        shadowRootType, shadowRootType_, js_includerFor, includerFor,
        includerFor_, includerForUnsafe, includerForUnchecked,
        js_shadowPseudoId, shadowPseudoId, shadowPseudoId_,
        js_setShadowPseudoId, setShadowPseudoId, js_treeScopeRootNode,
        treeScopeRootNode, treeScopeRootNode_, treeScopeRootNodeUnsafe,
        treeScopeRootNodeUnchecked, js_parentTreeScope, parentTreeScope,
        parentTreeScope_, parentTreeScopeUnsafe, parentTreeScopeUnchecked,
        js_lastSpatialNavigationCandidateCount,
        lastSpatialNavigationCandidateCount,
        lastSpatialNavigationCandidateCount_, js_numberOfActiveAnimations,
        numberOfActiveAnimations, numberOfActiveAnimations_,
        js_suspendAnimations, suspendAnimations, js_resumeAnimations,
        resumeAnimations, js_animationsAreSuspended,
        animationsAreSuspended, animationsAreSuspended_,
        js_pauseAnimationAtTimeOnElement, pauseAnimationAtTimeOnElement,
        pauseAnimationAtTimeOnElement_,
        js_pauseAnimationAtTimeOnPseudoElement,
        pauseAnimationAtTimeOnPseudoElement,
        pauseAnimationAtTimeOnPseudoElement_,
        js_pauseTransitionAtTimeOnElement, pauseTransitionAtTimeOnElement,
        pauseTransitionAtTimeOnElement_,
        js_pauseTransitionAtTimeOnPseudoElement,
        pauseTransitionAtTimeOnPseudoElement,
        pauseTransitionAtTimeOnPseudoElement_, js_attached, attached,
        attached_, js_visiblePlaceholder, visiblePlaceholder,
        visiblePlaceholder_, js_selectColorInColorChooser,
        selectColorInColorChooser,
        js_formControlStateOfPreviousHistoryItem,
        formControlStateOfPreviousHistoryItem,
        formControlStateOfPreviousHistoryItem_,
        js_setFormControlStateOfPreviousHistoryItem,
        setFormControlStateOfPreviousHistoryItem, js_absoluteCaretBounds,
        absoluteCaretBounds, absoluteCaretBounds_,
        absoluteCaretBoundsUnsafe, absoluteCaretBoundsUnchecked,
        js_boundingBox, boundingBox, boundingBox_, boundingBoxUnsafe,
        boundingBoxUnchecked, js_inspectorHighlightRects,
        inspectorHighlightRects, inspectorHighlightRects_,
        inspectorHighlightRectsUnsafe, inspectorHighlightRectsUnchecked,
        js_inspectorHighlightObject, inspectorHighlightObject,
        inspectorHighlightObject_, js_markerCountForNode,
        markerCountForNode, markerCountForNode_, js_markerRangeForNode,
        markerRangeForNode, markerRangeForNode_, markerRangeForNodeUnsafe,
        markerRangeForNodeUnchecked, js_markerDescriptionForNode,
        markerDescriptionForNode, markerDescriptionForNode_,
        js_addTextMatchMarker, addTextMatchMarker,
        js_setMarkedTextMatchesAreHighlighted,
        setMarkedTextMatchesAreHighlighted, js_invalidateFontCache,
        invalidateFontCache, js_setScrollViewPosition,
        setScrollViewPosition, js_setPagination, setPagination,
        js_configurationForViewport, configurationForViewport,
        configurationForViewport_, js_wasLastChangeUserEdit,
        wasLastChangeUserEdit, wasLastChangeUserEdit_,
        js_elementShouldAutoComplete, elementShouldAutoComplete,
        elementShouldAutoComplete_, js_setEditingValue, setEditingValue,
        js_setAutofilled, setAutofilled, js_countMatchesForText,
        countMatchesForText, countMatchesForText_, js_paintControlTints,
        paintControlTints, js_scrollElementToRect, scrollElementToRect,
        js_rangeFromLocationAndLength, rangeFromLocationAndLength,
        rangeFromLocationAndLength_, rangeFromLocationAndLengthUnsafe,
        rangeFromLocationAndLengthUnchecked, js_locationFromRange,
        locationFromRange, locationFromRange_, js_lengthFromRange,
        lengthFromRange, lengthFromRange_, js_rangeAsText, rangeAsText,
        rangeAsText_, js_subrange, subrange, subrange_, subrangeUnsafe,
        subrangeUnchecked, js_rangeForDictionaryLookupAtLocation,
        rangeForDictionaryLookupAtLocation,
        rangeForDictionaryLookupAtLocation_,
        rangeForDictionaryLookupAtLocationUnsafe,
        rangeForDictionaryLookupAtLocationUnchecked,
        js_setDelegatesScrolling, setDelegatesScrolling,
        js_lastSpellCheckRequestSequence, lastSpellCheckRequestSequence,
        lastSpellCheckRequestSequence_, js_lastSpellCheckProcessedSequence,
        lastSpellCheckProcessedSequence, lastSpellCheckProcessedSequence_,
        js_userPreferredLanguages, userPreferredLanguages,
        userPreferredLanguages_, js_setUserPreferredLanguages,
        setUserPreferredLanguages, js_wheelEventHandlerCount,
        wheelEventHandlerCount, wheelEventHandlerCount_,
        js_touchEventHandlerCount, touchEventHandlerCount,
        touchEventHandlerCount_, js_nodesFromRect, nodesFromRect,
        nodesFromRect_, nodesFromRectUnsafe, nodesFromRectUnchecked,
        js_parserMetaData, parserMetaData, parserMetaData_,
        js_updateEditorUINowIfScheduled, updateEditorUINowIfScheduled,
        js_hasSpellingMarker, hasSpellingMarker, hasSpellingMarker_,
        js_hasGrammarMarker, hasGrammarMarker, hasGrammarMarker_,
        js_hasAutocorrectedMarker, hasAutocorrectedMarker,
        hasAutocorrectedMarker_, js_setContinuousSpellCheckingEnabled,
        setContinuousSpellCheckingEnabled,
        js_setAutomaticQuoteSubstitutionEnabled,
        setAutomaticQuoteSubstitutionEnabled,
        js_setAutomaticLinkDetectionEnabled,
        setAutomaticLinkDetectionEnabled,
        js_setAutomaticDashSubstitutionEnabled,
        setAutomaticDashSubstitutionEnabled,
        js_setAutomaticTextReplacementEnabled,
        setAutomaticTextReplacementEnabled,
        js_setAutomaticSpellingCorrectionEnabled,
        setAutomaticSpellingCorrectionEnabled, js_isOverwriteModeEnabled,
        isOverwriteModeEnabled, isOverwriteModeEnabled_,
        js_toggleOverwriteModeEnabled, toggleOverwriteModeEnabled,
        js_numberOfScrollableAreas, numberOfScrollableAreas,
        numberOfScrollableAreas_, js_isPageBoxVisible, isPageBoxVisible,
        isPageBoxVisible_, js_layerTreeAsText, layerTreeAsText,
        layerTreeAsText_, js_scrollingStateTreeAsText,
        scrollingStateTreeAsText, scrollingStateTreeAsText_,
        js_mainThreadScrollingReasons, mainThreadScrollingReasons,
        mainThreadScrollingReasons_, js_nonFastScrollableRects,
        nonFastScrollableRects, nonFastScrollableRects_,
        nonFastScrollableRectsUnsafe, nonFastScrollableRectsUnchecked,
        js_repaintRectsAsText, repaintRectsAsText, repaintRectsAsText_,
        js_garbageCollectDocumentResources,
        garbageCollectDocumentResources, js_allowRoundingHacks,
        allowRoundingHacks, js_insertAuthorCSS, insertAuthorCSS,
        js_insertUserCSS, insertUserCSS, js_setBatteryStatus,
        setBatteryStatus, js_setDeviceProximity, setDeviceProximity,
        js_numberOfLiveNodes, numberOfLiveNodes, numberOfLiveNodes_,
        js_numberOfLiveDocuments, numberOfLiveDocuments,
        numberOfLiveDocuments_, js_consoleMessageArgumentCounts,
        consoleMessageArgumentCounts, consoleMessageArgumentCounts_,
        js_openDummyInspectorFrontend, openDummyInspectorFrontend,
        openDummyInspectorFrontend_, openDummyInspectorFrontendUnsafe,
        openDummyInspectorFrontendUnchecked,
        js_closeDummyInspectorFrontend, closeDummyInspectorFrontend,
        js_setJavaScriptProfilingEnabled, setJavaScriptProfilingEnabled,
        js_setInspectorIsUnderTest, setInspectorIsUnderTest,
        js_counterValue, counterValue, counterValue_, js_pageNumber,
        pageNumber, pageNumber_, js_shortcutIconURLs, shortcutIconURLs,
        shortcutIconURLs_, js_allIconURLs, allIconURLs, allIconURLs_,
        js_numberOfPages, numberOfPages, numberOfPages_, js_pageProperty,
        pageProperty, pageProperty_, js_pageSizeAndMarginsInPixels,
        pageSizeAndMarginsInPixels, pageSizeAndMarginsInPixels_,
        js_setPageScaleFactor, setPageScaleFactor, js_setPageZoomFactor,
        setPageZoomFactor, js_setHeaderHeight, setHeaderHeight,
        js_setFooterHeight, setFooterHeight, js_setTopContentInset,
        setTopContentInset, js_webkitWillEnterFullScreenForElement,
        webkitWillEnterFullScreenForElement,
        js_webkitDidEnterFullScreenForElement,
        webkitDidEnterFullScreenForElement,
        js_webkitWillExitFullScreenForElement,
        webkitWillExitFullScreenForElement,
        js_webkitDidExitFullScreenForElement,
        webkitDidExitFullScreenForElement,
        js_setApplicationCacheOriginQuota, setApplicationCacheOriginQuota,
        js_registerURLSchemeAsBypassingContentSecurityPolicy,
        registerURLSchemeAsBypassingContentSecurityPolicy,
        js_removeURLSchemeRegisteredAsBypassingContentSecurityPolicy,
        removeURLSchemeRegisteredAsBypassingContentSecurityPolicy,
        js_mallocStatistics, mallocStatistics, mallocStatistics_,
        mallocStatisticsUnsafe, mallocStatisticsUnchecked,
        js_typeConversions, typeConversions, typeConversions_,
        typeConversionsUnsafe, typeConversionsUnchecked, js_memoryInfo,
        memoryInfo, memoryInfo_, memoryInfoUnsafe, memoryInfoUnchecked,
        js_getReferencedFilePaths, getReferencedFilePaths,
        getReferencedFilePaths_, js_startTrackingRepaints,
        startTrackingRepaints, js_stopTrackingRepaints,
        stopTrackingRepaints, js_isTimerThrottled, isTimerThrottled,
        isTimerThrottled_,
        js_updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks,
        updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks,
        js_getCurrentCursorInfo, getCurrentCursorInfo,
        getCurrentCursorInfo_, js_markerTextForListItem,
        markerTextForListItem, markerTextForListItem_,
        js_toolTipFromElement, toolTipFromElement, toolTipFromElement_,
        js_deserializeBuffer, deserializeBuffer, deserializeBuffer_,
        deserializeBufferUnsafe, deserializeBufferUnchecked,
        js_serializeObject, serializeObject, serializeObject_,
        serializeObjectUnsafe, serializeObjectUnchecked,
        js_setUsesOverlayScrollbars, setUsesOverlayScrollbars,
        js_forceReload, forceReload, js_simulateAudioInterruption,
        simulateAudioInterruption, js_mediaElementHasCharacteristic,
        mediaElementHasCharacteristic, mediaElementHasCharacteristic_,
        js_initializeMockCDM, initializeMockCDM,
        js_enableMockSpeechSynthesizer, enableMockSpeechSynthesizer,
        js_getImageSourceURL, getImageSourceURL, getImageSourceURL_,
        js_captionsStyleSheetOverride, captionsStyleSheetOverride,
        captionsStyleSheetOverride_, js_setCaptionsStyleSheetOverride,
        setCaptionsStyleSheetOverride,
        js_setPrimaryAudioTrackLanguageOverride,
        setPrimaryAudioTrackLanguageOverride, js_setCaptionDisplayMode,
        setCaptionDisplayMode, js_createTimeRanges, createTimeRanges,
        createTimeRanges_, createTimeRangesUnsafe,
        createTimeRangesUnchecked, js_closestTimeToTimeRanges,
        closestTimeToTimeRanges, closestTimeToTimeRanges_,
        js_isSelectPopupVisible, isSelectPopupVisible,
        isSelectPopupVisible_, js_isVibrating, isVibrating, isVibrating_,
        js_isPluginUnavailabilityIndicatorObscured,
        isPluginUnavailabilityIndicatorObscured,
        isPluginUnavailabilityIndicatorObscured_, js_isPluginSnapshotted,
        isPluginSnapshotted, isPluginSnapshotted_, js_selectionBounds,
        selectionBounds, selectionBounds_, selectionBoundsUnsafe,
        selectionBoundsUnchecked, js_initializeMockMediaSource,
        initializeMockMediaSource, js_bufferedSamplesForTrackID,
        bufferedSamplesForTrackID, bufferedSamplesForTrackID_,
        js_beginMediaSessionInterruption, beginMediaSessionInterruption,
        js_endMediaSessionInterruption, endMediaSessionInterruption,
        js_applicationWillEnterForeground, applicationWillEnterForeground,
        js_applicationWillEnterBackground, applicationWillEnterBackground,
        js_setMediaSessionRestrictions, setMediaSessionRestrictions,
        js_postRemoteControlCommand, postRemoteControlCommand,
        js_simulateSystemSleep, simulateSystemSleep, js_simulateSystemWake,
        simulateSystemWake, js_elementIsBlockingDisplaySleep,
        elementIsBlockingDisplaySleep, elementIsBlockingDisplaySleep_,
        js_installMockPageOverlay, installMockPageOverlay,
        js_pageOverlayLayerTreeAsText, pageOverlayLayerTreeAsText,
        pageOverlayLayerTreeAsText_, js_setPageMuted, setPageMuted,
        js_isPagePlayingAudio, isPagePlayingAudio, isPagePlayingAudio_,
        pattern LAYER_TREE_INCLUDES_VISIBLE_RECTS,
        pattern LAYER_TREE_INCLUDES_TILE_CACHES,
        pattern LAYER_TREE_INCLUDES_REPAINT_RECTS,
        pattern LAYER_TREE_INCLUDES_PAINTING_PHASES,
        pattern LAYER_TREE_INCLUDES_CONTENT_LAYERS, js_getSettings,
        getSettings, getSettingsUnsafe, getSettingsUnchecked,
        js_getWorkerThreadCount, getWorkerThreadCount,
        js_getConsoleProfiles, getConsoleProfiles, Internals(..),
        gTypeInternals)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"address\"]($2)" js_address
        :: Internals -> Nullable Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.address Mozilla Internals.address documentation> 
address ::
        (MonadIO m, IsNode node, FromJSString result) =>
          Internals -> Maybe node -> m result
address self node
  = liftIO
      (fromJSString <$>
         (js_address (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.address Mozilla Internals.address documentation> 
address_ ::
         (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
address_ self node
  = liftIO
      (void (js_address (self) (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe
        "($1[\"nodeNeedsStyleRecalc\"]($2) ? 1 : 0)"
        js_nodeNeedsStyleRecalc :: Internals -> Nullable Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodeNeedsStyleRecalc Mozilla Internals.nodeNeedsStyleRecalc documentation> 
nodeNeedsStyleRecalc ::
                     (MonadIO m, IsNode node) => Internals -> Maybe node -> m Bool
nodeNeedsStyleRecalc self node
  = liftIO
      (js_nodeNeedsStyleRecalc (self)
         (maybeToNullable (fmap toNode node)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodeNeedsStyleRecalc Mozilla Internals.nodeNeedsStyleRecalc documentation> 
nodeNeedsStyleRecalc_ ::
                      (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
nodeNeedsStyleRecalc_ self node
  = liftIO
      (void
         (js_nodeNeedsStyleRecalc (self)
            (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe "$1[\"description\"]($2)"
        js_description :: Internals -> JSVal -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.description Mozilla Internals.description documentation> 
description ::
            (MonadIO m, FromJSString result) => Internals -> JSVal -> m result
description self value
  = liftIO (fromJSString <$> (js_description (self) value))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.description Mozilla Internals.description documentation> 
description_ :: (MonadIO m) => Internals -> JSVal -> m ()
description_ self value
  = liftIO (void (js_description (self) value))
 
foreign import javascript unsafe
        "($1[\"hasPausedImageAnimations\"]($2) ? 1 : 0)"
        js_hasPausedImageAnimations ::
        Internals -> Nullable Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasPausedImageAnimations Mozilla Internals.hasPausedImageAnimations documentation> 
hasPausedImageAnimations ::
                         (MonadIO m, IsElement element) =>
                           Internals -> Maybe element -> m Bool
hasPausedImageAnimations self element
  = liftIO
      (js_hasPausedImageAnimations (self)
         (maybeToNullable (fmap toElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasPausedImageAnimations Mozilla Internals.hasPausedImageAnimations documentation> 
hasPausedImageAnimations_ ::
                          (MonadIO m, IsElement element) =>
                            Internals -> Maybe element -> m ()
hasPausedImageAnimations_ self element
  = liftIO
      (void
         (js_hasPausedImageAnimations (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "$1[\"elementRenderTreeAsText\"]($2)" js_elementRenderTreeAsText ::
        Internals -> Nullable Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementRenderTreeAsText Mozilla Internals.elementRenderTreeAsText documentation> 
elementRenderTreeAsText ::
                        (MonadIO m, IsElement element, FromJSString result) =>
                          Internals -> Maybe element -> m result
elementRenderTreeAsText self element
  = liftIO
      (fromJSString <$>
         (js_elementRenderTreeAsText (self)
            (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementRenderTreeAsText Mozilla Internals.elementRenderTreeAsText documentation> 
elementRenderTreeAsText_ ::
                         (MonadIO m, IsElement element) =>
                           Internals -> Maybe element -> m ()
elementRenderTreeAsText_ self element
  = liftIO
      (void
         (js_elementRenderTreeAsText (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "($1[\"isPreloaded\"]($2) ? 1 : 0)" js_isPreloaded ::
        Internals -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPreloaded Mozilla Internals.isPreloaded documentation> 
isPreloaded ::
            (MonadIO m, ToJSString url) => Internals -> url -> m Bool
isPreloaded self url
  = liftIO (js_isPreloaded (self) (toJSString url))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPreloaded Mozilla Internals.isPreloaded documentation> 
isPreloaded_ ::
             (MonadIO m, ToJSString url) => Internals -> url -> m ()
isPreloaded_ self url
  = liftIO (void (js_isPreloaded (self) (toJSString url)))
 
foreign import javascript unsafe
        "($1[\"isLoadingFromMemoryCache\"]($2) ? 1 : 0)"
        js_isLoadingFromMemoryCache :: Internals -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isLoadingFromMemoryCache Mozilla Internals.isLoadingFromMemoryCache documentation> 
isLoadingFromMemoryCache ::
                         (MonadIO m, ToJSString url) => Internals -> url -> m Bool
isLoadingFromMemoryCache self url
  = liftIO (js_isLoadingFromMemoryCache (self) (toJSString url))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isLoadingFromMemoryCache Mozilla Internals.isLoadingFromMemoryCache documentation> 
isLoadingFromMemoryCache_ ::
                          (MonadIO m, ToJSString url) => Internals -> url -> m ()
isLoadingFromMemoryCache_ self url
  = liftIO
      (void (js_isLoadingFromMemoryCache (self) (toJSString url)))
 
foreign import javascript unsafe "$1[\"xhrResponseSource\"]($2)"
        js_xhrResponseSource ::
        Internals -> Nullable XMLHttpRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.xhrResponseSource Mozilla Internals.xhrResponseSource documentation> 
xhrResponseSource ::
                  (MonadIO m, FromJSString result) =>
                    Internals -> Maybe XMLHttpRequest -> m result
xhrResponseSource self xhr
  = liftIO
      (fromJSString <$>
         (js_xhrResponseSource (self) (maybeToNullable xhr)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.xhrResponseSource Mozilla Internals.xhrResponseSource documentation> 
xhrResponseSource_ ::
                   (MonadIO m) => Internals -> Maybe XMLHttpRequest -> m ()
xhrResponseSource_ self xhr
  = liftIO (void (js_xhrResponseSource (self) (maybeToNullable xhr)))
 
foreign import javascript unsafe "$1[\"clearMemoryCache\"]()"
        js_clearMemoryCache :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.clearMemoryCache Mozilla Internals.clearMemoryCache documentation> 
clearMemoryCache :: (MonadIO m) => Internals -> m ()
clearMemoryCache self = liftIO (js_clearMemoryCache (self))
 
foreign import javascript unsafe
        "$1[\"pruneMemoryCacheToSize\"]($2)" js_pruneMemoryCacheToSize ::
        Internals -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pruneMemoryCacheToSize Mozilla Internals.pruneMemoryCacheToSize documentation> 
pruneMemoryCacheToSize :: (MonadIO m) => Internals -> Int -> m ()
pruneMemoryCacheToSize self size
  = liftIO (js_pruneMemoryCacheToSize (self) size)
 
foreign import javascript unsafe "$1[\"memoryCacheSize\"]()"
        js_memoryCacheSize :: Internals -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryCacheSize Mozilla Internals.memoryCacheSize documentation> 
memoryCacheSize :: (MonadIO m) => Internals -> m Int
memoryCacheSize self = liftIO (js_memoryCacheSize (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryCacheSize Mozilla Internals.memoryCacheSize documentation> 
memoryCacheSize_ :: (MonadIO m) => Internals -> m ()
memoryCacheSize_ self = liftIO (void (js_memoryCacheSize (self)))
 
foreign import javascript unsafe "$1[\"clearPageCache\"]()"
        js_clearPageCache :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.clearPageCache Mozilla Internals.clearPageCache documentation> 
clearPageCache :: (MonadIO m) => Internals -> m ()
clearPageCache self = liftIO (js_clearPageCache (self))
 
foreign import javascript unsafe "$1[\"pageCacheSize\"]()"
        js_pageCacheSize :: Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageCacheSize Mozilla Internals.pageCacheSize documentation> 
pageCacheSize :: (MonadIO m) => Internals -> m Word
pageCacheSize self = liftIO (js_pageCacheSize (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageCacheSize Mozilla Internals.pageCacheSize documentation> 
pageCacheSize_ :: (MonadIO m) => Internals -> m ()
pageCacheSize_ self = liftIO (void (js_pageCacheSize (self)))
 
foreign import javascript unsafe
        "$1[\"computedStyleIncludingVisitedInfo\"]($2)"
        js_computedStyleIncludingVisitedInfo ::
        Internals -> Nullable Node -> IO (Nullable CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfo ::
                                  (MonadIO m, IsNode node) =>
                                    Internals -> Maybe node -> m (Maybe CSSStyleDeclaration)
computedStyleIncludingVisitedInfo self node
  = liftIO
      (nullableToMaybe <$>
         (js_computedStyleIncludingVisitedInfo (self)
            (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfo_ ::
                                   (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
computedStyleIncludingVisitedInfo_ self node
  = liftIO
      (void
         (js_computedStyleIncludingVisitedInfo (self)
            (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfoUnsafe ::
                                        (MonadIO m, IsNode node, HasCallStack) =>
                                          Internals -> Maybe node -> m CSSStyleDeclaration
computedStyleIncludingVisitedInfoUnsafe self node
  = liftIO
      ((nullableToMaybe <$>
          (js_computedStyleIncludingVisitedInfo (self)
             (maybeToNullable (fmap toNode node))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
computedStyleIncludingVisitedInfoUnchecked ::
                                           (MonadIO m, IsNode node) =>
                                             Internals -> Maybe node -> m CSSStyleDeclaration
computedStyleIncludingVisitedInfoUnchecked self node
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_computedStyleIncludingVisitedInfo (self)
            (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe "$1[\"ensureShadowRoot\"]($2)"
        js_ensureShadowRoot ::
        Internals -> Nullable Element -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRoot ::
                 (MonadIO m, IsElement host) =>
                   Internals -> Maybe host -> m (Maybe Node)
ensureShadowRoot self host
  = liftIO
      (nullableToMaybe <$>
         (js_ensureShadowRoot (self)
            (maybeToNullable (fmap toElement host))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRoot_ ::
                  (MonadIO m, IsElement host) => Internals -> Maybe host -> m ()
ensureShadowRoot_ self host
  = liftIO
      (void
         (js_ensureShadowRoot (self)
            (maybeToNullable (fmap toElement host))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRootUnsafe ::
                       (MonadIO m, IsElement host, HasCallStack) =>
                         Internals -> Maybe host -> m Node
ensureShadowRootUnsafe self host
  = liftIO
      ((nullableToMaybe <$>
          (js_ensureShadowRoot (self)
             (maybeToNullable (fmap toElement host))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
ensureShadowRootUnchecked ::
                          (MonadIO m, IsElement host) => Internals -> Maybe host -> m Node
ensureShadowRootUnchecked self host
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_ensureShadowRoot (self)
            (maybeToNullable (fmap toElement host))))
 
foreign import javascript unsafe "$1[\"createShadowRoot\"]($2)"
        js_createShadowRoot ::
        Internals -> Nullable Element -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRoot ::
                 (MonadIO m, IsElement host) =>
                   Internals -> Maybe host -> m (Maybe Node)
createShadowRoot self host
  = liftIO
      (nullableToMaybe <$>
         (js_createShadowRoot (self)
            (maybeToNullable (fmap toElement host))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRoot_ ::
                  (MonadIO m, IsElement host) => Internals -> Maybe host -> m ()
createShadowRoot_ self host
  = liftIO
      (void
         (js_createShadowRoot (self)
            (maybeToNullable (fmap toElement host))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRootUnsafe ::
                       (MonadIO m, IsElement host, HasCallStack) =>
                         Internals -> Maybe host -> m Node
createShadowRootUnsafe self host
  = liftIO
      ((nullableToMaybe <$>
          (js_createShadowRoot (self)
             (maybeToNullable (fmap toElement host))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
createShadowRootUnchecked ::
                          (MonadIO m, IsElement host) => Internals -> Maybe host -> m Node
createShadowRootUnchecked self host
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createShadowRoot (self)
            (maybeToNullable (fmap toElement host))))
 
foreign import javascript unsafe "$1[\"shadowRoot\"]($2)"
        js_shadowRoot ::
        Internals -> Nullable Element -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRoot ::
           (MonadIO m, IsElement host) =>
             Internals -> Maybe host -> m (Maybe Node)
shadowRoot self host
  = liftIO
      (nullableToMaybe <$>
         (js_shadowRoot (self) (maybeToNullable (fmap toElement host))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRoot_ ::
            (MonadIO m, IsElement host) => Internals -> Maybe host -> m ()
shadowRoot_ self host
  = liftIO
      (void
         (js_shadowRoot (self) (maybeToNullable (fmap toElement host))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRootUnsafe ::
                 (MonadIO m, IsElement host, HasCallStack) =>
                   Internals -> Maybe host -> m Node
shadowRootUnsafe self host
  = liftIO
      ((nullableToMaybe <$>
          (js_shadowRoot (self) (maybeToNullable (fmap toElement host))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
shadowRootUnchecked ::
                    (MonadIO m, IsElement host) => Internals -> Maybe host -> m Node
shadowRootUnchecked self host
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_shadowRoot (self) (maybeToNullable (fmap toElement host))))
 
foreign import javascript unsafe "$1[\"shadowRootType\"]($2)"
        js_shadowRootType :: Internals -> Nullable Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRootType Mozilla Internals.shadowRootType documentation> 
shadowRootType ::
               (MonadIO m, IsNode root, FromJSString result) =>
                 Internals -> Maybe root -> m result
shadowRootType self root
  = liftIO
      (fromJSString <$>
         (js_shadowRootType (self) (maybeToNullable (fmap toNode root))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRootType Mozilla Internals.shadowRootType documentation> 
shadowRootType_ ::
                (MonadIO m, IsNode root) => Internals -> Maybe root -> m ()
shadowRootType_ self root
  = liftIO
      (void
         (js_shadowRootType (self) (maybeToNullable (fmap toNode root))))
 
foreign import javascript unsafe "$1[\"includerFor\"]($2)"
        js_includerFor ::
        Internals -> Nullable Node -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerFor ::
            (MonadIO m, IsNode node) =>
              Internals -> Maybe node -> m (Maybe Element)
includerFor self node
  = liftIO
      (nullableToMaybe <$>
         (js_includerFor (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerFor_ ::
             (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
includerFor_ self node
  = liftIO
      (void (js_includerFor (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerForUnsafe ::
                  (MonadIO m, IsNode node, HasCallStack) =>
                    Internals -> Maybe node -> m Element
includerForUnsafe self node
  = liftIO
      ((nullableToMaybe <$>
          (js_includerFor (self) (maybeToNullable (fmap toNode node))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
includerForUnchecked ::
                     (MonadIO m, IsNode node) => Internals -> Maybe node -> m Element
includerForUnchecked self node
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_includerFor (self) (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe "$1[\"shadowPseudoId\"]($2)"
        js_shadowPseudoId :: Internals -> Nullable Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
shadowPseudoId ::
               (MonadIO m, IsElement element, FromJSString result) =>
                 Internals -> Maybe element -> m result
shadowPseudoId self element
  = liftIO
      (fromJSString <$>
         (js_shadowPseudoId (self)
            (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
shadowPseudoId_ ::
                (MonadIO m, IsElement element) =>
                  Internals -> Maybe element -> m ()
shadowPseudoId_ self element
  = liftIO
      (void
         (js_shadowPseudoId (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "$1[\"setShadowPseudoId\"]($2, $3)" js_setShadowPseudoId ::
        Internals -> Nullable Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setShadowPseudoId Mozilla Internals.setShadowPseudoId documentation> 
setShadowPseudoId ::
                  (MonadIO m, IsElement element, ToJSString id) =>
                    Internals -> Maybe element -> id -> m ()
setShadowPseudoId self element id
  = liftIO
      (js_setShadowPseudoId (self)
         (maybeToNullable (fmap toElement element))
         (toJSString id))
 
foreign import javascript unsafe "$1[\"treeScopeRootNode\"]($2)"
        js_treeScopeRootNode ::
        Internals -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
treeScopeRootNode ::
                  (MonadIO m, IsNode node) =>
                    Internals -> Maybe node -> m (Maybe Node)
treeScopeRootNode self node
  = liftIO
      (nullableToMaybe <$>
         (js_treeScopeRootNode (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
treeScopeRootNode_ ::
                   (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
treeScopeRootNode_ self node
  = liftIO
      (void
         (js_treeScopeRootNode (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
treeScopeRootNodeUnsafe ::
                        (MonadIO m, IsNode node, HasCallStack) =>
                          Internals -> Maybe node -> m Node
treeScopeRootNodeUnsafe self node
  = liftIO
      ((nullableToMaybe <$>
          (js_treeScopeRootNode (self) (maybeToNullable (fmap toNode node))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
treeScopeRootNodeUnchecked ::
                           (MonadIO m, IsNode node) => Internals -> Maybe node -> m Node
treeScopeRootNodeUnchecked self node
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_treeScopeRootNode (self) (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe "$1[\"parentTreeScope\"]($2)"
        js_parentTreeScope ::
        Internals -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScope ::
                (MonadIO m, IsNode node) =>
                  Internals -> Maybe node -> m (Maybe Node)
parentTreeScope self node
  = liftIO
      (nullableToMaybe <$>
         (js_parentTreeScope (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScope_ ::
                 (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
parentTreeScope_ self node
  = liftIO
      (void
         (js_parentTreeScope (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScopeUnsafe ::
                      (MonadIO m, IsNode node, HasCallStack) =>
                        Internals -> Maybe node -> m Node
parentTreeScopeUnsafe self node
  = liftIO
      ((nullableToMaybe <$>
          (js_parentTreeScope (self) (maybeToNullable (fmap toNode node))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
parentTreeScopeUnchecked ::
                         (MonadIO m, IsNode node) => Internals -> Maybe node -> m Node
parentTreeScopeUnchecked self node
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_parentTreeScope (self) (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe
        "$1[\"lastSpatialNavigationCandidateCount\"]()"
        js_lastSpatialNavigationCandidateCount :: Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpatialNavigationCandidateCount Mozilla Internals.lastSpatialNavigationCandidateCount documentation> 
lastSpatialNavigationCandidateCount ::
                                    (MonadIO m) => Internals -> m Word
lastSpatialNavigationCandidateCount self
  = liftIO (js_lastSpatialNavigationCandidateCount (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpatialNavigationCandidateCount Mozilla Internals.lastSpatialNavigationCandidateCount documentation> 
lastSpatialNavigationCandidateCount_ ::
                                     (MonadIO m) => Internals -> m ()
lastSpatialNavigationCandidateCount_ self
  = liftIO (void (js_lastSpatialNavigationCandidateCount (self)))
 
foreign import javascript unsafe
        "$1[\"numberOfActiveAnimations\"]()" js_numberOfActiveAnimations ::
        Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfActiveAnimations Mozilla Internals.numberOfActiveAnimations documentation> 
numberOfActiveAnimations :: (MonadIO m) => Internals -> m Word
numberOfActiveAnimations self
  = liftIO (js_numberOfActiveAnimations (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfActiveAnimations Mozilla Internals.numberOfActiveAnimations documentation> 
numberOfActiveAnimations_ :: (MonadIO m) => Internals -> m ()
numberOfActiveAnimations_ self
  = liftIO (void (js_numberOfActiveAnimations (self)))
 
foreign import javascript unsafe "$1[\"suspendAnimations\"]()"
        js_suspendAnimations :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.suspendAnimations Mozilla Internals.suspendAnimations documentation> 
suspendAnimations :: (MonadIO m) => Internals -> m ()
suspendAnimations self = liftIO (js_suspendAnimations (self))
 
foreign import javascript unsafe "$1[\"resumeAnimations\"]()"
        js_resumeAnimations :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.resumeAnimations Mozilla Internals.resumeAnimations documentation> 
resumeAnimations :: (MonadIO m) => Internals -> m ()
resumeAnimations self = liftIO (js_resumeAnimations (self))
 
foreign import javascript unsafe
        "($1[\"animationsAreSuspended\"]() ? 1 : 0)"
        js_animationsAreSuspended :: Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.animationsAreSuspended Mozilla Internals.animationsAreSuspended documentation> 
animationsAreSuspended :: (MonadIO m) => Internals -> m Bool
animationsAreSuspended self
  = liftIO (js_animationsAreSuspended (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.animationsAreSuspended Mozilla Internals.animationsAreSuspended documentation> 
animationsAreSuspended_ :: (MonadIO m) => Internals -> m ()
animationsAreSuspended_ self
  = liftIO (void (js_animationsAreSuspended (self)))
 
foreign import javascript unsafe
        "($1[\"pauseAnimationAtTimeOnElement\"]($2,\n$3, $4) ? 1 : 0)"
        js_pauseAnimationAtTimeOnElement ::
        Internals -> JSString -> Double -> Nullable Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnElement Mozilla Internals.pauseAnimationAtTimeOnElement documentation> 
pauseAnimationAtTimeOnElement ::
                              (MonadIO m, ToJSString animationName, IsElement element) =>
                                Internals -> animationName -> Double -> Maybe element -> m Bool
pauseAnimationAtTimeOnElement self animationName pauseTime element
  = liftIO
      (js_pauseAnimationAtTimeOnElement (self) (toJSString animationName)
         pauseTime
         (maybeToNullable (fmap toElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnElement Mozilla Internals.pauseAnimationAtTimeOnElement documentation> 
pauseAnimationAtTimeOnElement_ ::
                               (MonadIO m, ToJSString animationName, IsElement element) =>
                                 Internals -> animationName -> Double -> Maybe element -> m ()
pauseAnimationAtTimeOnElement_ self animationName pauseTime element
  = liftIO
      (void
         (js_pauseAnimationAtTimeOnElement (self) (toJSString animationName)
            pauseTime
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "($1[\"pauseAnimationAtTimeOnPseudoElement\"]($2,\n$3, $4, $5) ? 1 : 0)"
        js_pauseAnimationAtTimeOnPseudoElement ::
        Internals ->
          JSString -> Double -> Nullable Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnPseudoElement Mozilla Internals.pauseAnimationAtTimeOnPseudoElement documentation> 
pauseAnimationAtTimeOnPseudoElement ::
                                    (MonadIO m, ToJSString animationName, IsElement element,
                                     ToJSString pseudoId) =>
                                      Internals ->
                                        animationName ->
                                          Double -> Maybe element -> pseudoId -> m Bool
pauseAnimationAtTimeOnPseudoElement self animationName pauseTime
  element pseudoId
  = liftIO
      (js_pauseAnimationAtTimeOnPseudoElement (self)
         (toJSString animationName)
         pauseTime
         (maybeToNullable (fmap toElement element))
         (toJSString pseudoId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnPseudoElement Mozilla Internals.pauseAnimationAtTimeOnPseudoElement documentation> 
pauseAnimationAtTimeOnPseudoElement_ ::
                                     (MonadIO m, ToJSString animationName, IsElement element,
                                      ToJSString pseudoId) =>
                                       Internals ->
                                         animationName ->
                                           Double -> Maybe element -> pseudoId -> m ()
pauseAnimationAtTimeOnPseudoElement_ self animationName pauseTime
  element pseudoId
  = liftIO
      (void
         (js_pauseAnimationAtTimeOnPseudoElement (self)
            (toJSString animationName)
            pauseTime
            (maybeToNullable (fmap toElement element))
            (toJSString pseudoId)))
 
foreign import javascript unsafe
        "($1[\"pauseTransitionAtTimeOnElement\"]($2,\n$3, $4) ? 1 : 0)"
        js_pauseTransitionAtTimeOnElement ::
        Internals -> JSString -> Double -> Nullable Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnElement Mozilla Internals.pauseTransitionAtTimeOnElement documentation> 
pauseTransitionAtTimeOnElement ::
                               (MonadIO m, ToJSString propertyName, IsElement element) =>
                                 Internals -> propertyName -> Double -> Maybe element -> m Bool
pauseTransitionAtTimeOnElement self propertyName pauseTime element
  = liftIO
      (js_pauseTransitionAtTimeOnElement (self) (toJSString propertyName)
         pauseTime
         (maybeToNullable (fmap toElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnElement Mozilla Internals.pauseTransitionAtTimeOnElement documentation> 
pauseTransitionAtTimeOnElement_ ::
                                (MonadIO m, ToJSString propertyName, IsElement element) =>
                                  Internals -> propertyName -> Double -> Maybe element -> m ()
pauseTransitionAtTimeOnElement_ self propertyName pauseTime element
  = liftIO
      (void
         (js_pauseTransitionAtTimeOnElement (self) (toJSString propertyName)
            pauseTime
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "($1[\"pauseTransitionAtTimeOnPseudoElement\"]($2,\n$3, $4, $5) ? 1 : 0)"
        js_pauseTransitionAtTimeOnPseudoElement ::
        Internals ->
          JSString -> Double -> Nullable Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnPseudoElement Mozilla Internals.pauseTransitionAtTimeOnPseudoElement documentation> 
pauseTransitionAtTimeOnPseudoElement ::
                                     (MonadIO m, ToJSString property, IsElement element,
                                      ToJSString pseudoId) =>
                                       Internals ->
                                         property -> Double -> Maybe element -> pseudoId -> m Bool
pauseTransitionAtTimeOnPseudoElement self property pauseTime
  element pseudoId
  = liftIO
      (js_pauseTransitionAtTimeOnPseudoElement (self)
         (toJSString property)
         pauseTime
         (maybeToNullable (fmap toElement element))
         (toJSString pseudoId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnPseudoElement Mozilla Internals.pauseTransitionAtTimeOnPseudoElement documentation> 
pauseTransitionAtTimeOnPseudoElement_ ::
                                      (MonadIO m, ToJSString property, IsElement element,
                                       ToJSString pseudoId) =>
                                        Internals ->
                                          property -> Double -> Maybe element -> pseudoId -> m ()
pauseTransitionAtTimeOnPseudoElement_ self property pauseTime
  element pseudoId
  = liftIO
      (void
         (js_pauseTransitionAtTimeOnPseudoElement (self)
            (toJSString property)
            pauseTime
            (maybeToNullable (fmap toElement element))
            (toJSString pseudoId)))
 
foreign import javascript unsafe "($1[\"attached\"]($2) ? 1 : 0)"
        js_attached :: Internals -> Nullable Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.attached Mozilla Internals.attached documentation> 
attached ::
         (MonadIO m, IsNode node) => Internals -> Maybe node -> m Bool
attached self node
  = liftIO (js_attached (self) (maybeToNullable (fmap toNode node)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.attached Mozilla Internals.attached documentation> 
attached_ ::
          (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
attached_ self node
  = liftIO
      (void (js_attached (self) (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe "$1[\"visiblePlaceholder\"]($2)"
        js_visiblePlaceholder ::
        Internals -> Nullable Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.visiblePlaceholder Mozilla Internals.visiblePlaceholder documentation> 
visiblePlaceholder ::
                   (MonadIO m, IsElement element, FromJSString result) =>
                     Internals -> Maybe element -> m result
visiblePlaceholder self element
  = liftIO
      (fromJSString <$>
         (js_visiblePlaceholder (self)
            (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.visiblePlaceholder Mozilla Internals.visiblePlaceholder documentation> 
visiblePlaceholder_ ::
                    (MonadIO m, IsElement element) =>
                      Internals -> Maybe element -> m ()
visiblePlaceholder_ self element
  = liftIO
      (void
         (js_visiblePlaceholder (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "$1[\"selectColorInColorChooser\"]($2,\n$3)"
        js_selectColorInColorChooser ::
        Internals -> Nullable Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectColorInColorChooser Mozilla Internals.selectColorInColorChooser documentation> 
selectColorInColorChooser ::
                          (MonadIO m, IsElement element, ToJSString colorValue) =>
                            Internals -> Maybe element -> colorValue -> m ()
selectColorInColorChooser self element colorValue
  = liftIO
      (js_selectColorInColorChooser (self)
         (maybeToNullable (fmap toElement element))
         (toJSString colorValue))
 
foreign import javascript unsafe
        "$1[\"formControlStateOfPreviousHistoryItem\"]()"
        js_formControlStateOfPreviousHistoryItem :: Internals -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.formControlStateOfPreviousHistoryItem Mozilla Internals.formControlStateOfPreviousHistoryItem documentation> 
formControlStateOfPreviousHistoryItem ::
                                      (MonadIO m, FromJSString result) => Internals -> m [result]
formControlStateOfPreviousHistoryItem self
  = liftIO
      ((js_formControlStateOfPreviousHistoryItem (self)) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.formControlStateOfPreviousHistoryItem Mozilla Internals.formControlStateOfPreviousHistoryItem documentation> 
formControlStateOfPreviousHistoryItem_ ::
                                       (MonadIO m) => Internals -> m ()
formControlStateOfPreviousHistoryItem_ self
  = liftIO (void (js_formControlStateOfPreviousHistoryItem (self)))
 
foreign import javascript unsafe
        "$1[\"setFormControlStateOfPreviousHistoryItem\"]($2)"
        js_setFormControlStateOfPreviousHistoryItem ::
        Internals -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setFormControlStateOfPreviousHistoryItem Mozilla Internals.setFormControlStateOfPreviousHistoryItem documentation> 
setFormControlStateOfPreviousHistoryItem ::
                                         (MonadIO m, ToJSString values) =>
                                           Internals -> [values] -> m ()
setFormControlStateOfPreviousHistoryItem self values
  = liftIO
      (toJSVal values >>=
         \ values' ->
           js_setFormControlStateOfPreviousHistoryItem (self) values')
 
foreign import javascript unsafe "$1[\"absoluteCaretBounds\"]()"
        js_absoluteCaretBounds :: Internals -> IO (Nullable ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
absoluteCaretBounds ::
                    (MonadIO m) => Internals -> m (Maybe ClientRect)
absoluteCaretBounds self
  = liftIO (nullableToMaybe <$> (js_absoluteCaretBounds (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
absoluteCaretBounds_ :: (MonadIO m) => Internals -> m ()
absoluteCaretBounds_ self
  = liftIO (void (js_absoluteCaretBounds (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
absoluteCaretBoundsUnsafe ::
                          (MonadIO m, HasCallStack) => Internals -> m ClientRect
absoluteCaretBoundsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_absoluteCaretBounds (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
absoluteCaretBoundsUnchecked ::
                             (MonadIO m) => Internals -> m ClientRect
absoluteCaretBoundsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_absoluteCaretBounds (self)))
 
foreign import javascript unsafe "$1[\"boundingBox\"]($2)"
        js_boundingBox ::
        Internals -> Nullable Element -> IO (Nullable ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBox ::
            (MonadIO m, IsElement element) =>
              Internals -> Maybe element -> m (Maybe ClientRect)
boundingBox self element
  = liftIO
      (nullableToMaybe <$>
         (js_boundingBox (self) (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBox_ ::
             (MonadIO m, IsElement element) =>
               Internals -> Maybe element -> m ()
boundingBox_ self element
  = liftIO
      (void
         (js_boundingBox (self) (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBoxUnsafe ::
                  (MonadIO m, IsElement element, HasCallStack) =>
                    Internals -> Maybe element -> m ClientRect
boundingBoxUnsafe self element
  = liftIO
      ((nullableToMaybe <$>
          (js_boundingBox (self) (maybeToNullable (fmap toElement element))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
boundingBoxUnchecked ::
                     (MonadIO m, IsElement element) =>
                       Internals -> Maybe element -> m ClientRect
boundingBoxUnchecked self element
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_boundingBox (self) (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "$1[\"inspectorHighlightRects\"]()" js_inspectorHighlightRects ::
        Internals -> IO (Nullable ClientRectList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRects ::
                        (MonadIO m) => Internals -> m (Maybe ClientRectList)
inspectorHighlightRects self
  = liftIO (nullableToMaybe <$> (js_inspectorHighlightRects (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRects_ :: (MonadIO m) => Internals -> m ()
inspectorHighlightRects_ self
  = liftIO (void (js_inspectorHighlightRects (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRectsUnsafe ::
                              (MonadIO m, HasCallStack) => Internals -> m ClientRectList
inspectorHighlightRectsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_inspectorHighlightRects (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
inspectorHighlightRectsUnchecked ::
                                 (MonadIO m) => Internals -> m ClientRectList
inspectorHighlightRectsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_inspectorHighlightRects (self)))
 
foreign import javascript unsafe
        "$1[\"inspectorHighlightObject\"]()" js_inspectorHighlightObject ::
        Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightObject Mozilla Internals.inspectorHighlightObject documentation> 
inspectorHighlightObject ::
                         (MonadIO m, FromJSString result) => Internals -> m result
inspectorHighlightObject self
  = liftIO (fromJSString <$> (js_inspectorHighlightObject (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightObject Mozilla Internals.inspectorHighlightObject documentation> 
inspectorHighlightObject_ :: (MonadIO m) => Internals -> m ()
inspectorHighlightObject_ self
  = liftIO (void (js_inspectorHighlightObject (self)))
 
foreign import javascript unsafe
        "$1[\"markerCountForNode\"]($2, $3)" js_markerCountForNode ::
        Internals -> Nullable Node -> JSString -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerCountForNode Mozilla Internals.markerCountForNode documentation> 
markerCountForNode ::
                   (MonadIO m, IsNode node, ToJSString markerType) =>
                     Internals -> Maybe node -> markerType -> m Word
markerCountForNode self node markerType
  = liftIO
      (js_markerCountForNode (self) (maybeToNullable (fmap toNode node))
         (toJSString markerType))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerCountForNode Mozilla Internals.markerCountForNode documentation> 
markerCountForNode_ ::
                    (MonadIO m, IsNode node, ToJSString markerType) =>
                      Internals -> Maybe node -> markerType -> m ()
markerCountForNode_ self node markerType
  = liftIO
      (void
         (js_markerCountForNode (self) (maybeToNullable (fmap toNode node))
            (toJSString markerType)))
 
foreign import javascript unsafe
        "$1[\"markerRangeForNode\"]($2, $3,\n$4)" js_markerRangeForNode ::
        Internals ->
          Nullable Node -> JSString -> Word -> IO (Nullable Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNode ::
                   (MonadIO m, IsNode node, ToJSString markerType) =>
                     Internals -> Maybe node -> markerType -> Word -> m (Maybe Range)
markerRangeForNode self node markerType index
  = liftIO
      (nullableToMaybe <$>
         (js_markerRangeForNode (self) (maybeToNullable (fmap toNode node))
            (toJSString markerType)
            index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNode_ ::
                    (MonadIO m, IsNode node, ToJSString markerType) =>
                      Internals -> Maybe node -> markerType -> Word -> m ()
markerRangeForNode_ self node markerType index
  = liftIO
      (void
         (js_markerRangeForNode (self) (maybeToNullable (fmap toNode node))
            (toJSString markerType)
            index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNodeUnsafe ::
                         (MonadIO m, IsNode node, ToJSString markerType, HasCallStack) =>
                           Internals -> Maybe node -> markerType -> Word -> m Range
markerRangeForNodeUnsafe self node markerType index
  = liftIO
      ((nullableToMaybe <$>
          (js_markerRangeForNode (self) (maybeToNullable (fmap toNode node))
             (toJSString markerType)
             index))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
markerRangeForNodeUnchecked ::
                            (MonadIO m, IsNode node, ToJSString markerType) =>
                              Internals -> Maybe node -> markerType -> Word -> m Range
markerRangeForNodeUnchecked self node markerType index
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_markerRangeForNode (self) (maybeToNullable (fmap toNode node))
            (toJSString markerType)
            index))
 
foreign import javascript unsafe
        "$1[\"markerDescriptionForNode\"]($2,\n$3, $4)"
        js_markerDescriptionForNode ::
        Internals -> Nullable Node -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerDescriptionForNode Mozilla Internals.markerDescriptionForNode documentation> 
markerDescriptionForNode ::
                         (MonadIO m, IsNode node, ToJSString markerType,
                          FromJSString result) =>
                           Internals -> Maybe node -> markerType -> Word -> m result
markerDescriptionForNode self node markerType index
  = liftIO
      (fromJSString <$>
         (js_markerDescriptionForNode (self)
            (maybeToNullable (fmap toNode node))
            (toJSString markerType)
            index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerDescriptionForNode Mozilla Internals.markerDescriptionForNode documentation> 
markerDescriptionForNode_ ::
                          (MonadIO m, IsNode node, ToJSString markerType) =>
                            Internals -> Maybe node -> markerType -> Word -> m ()
markerDescriptionForNode_ self node markerType index
  = liftIO
      (void
         (js_markerDescriptionForNode (self)
            (maybeToNullable (fmap toNode node))
            (toJSString markerType)
            index))
 
foreign import javascript unsafe
        "$1[\"addTextMatchMarker\"]($2, $3)" js_addTextMatchMarker ::
        Internals -> Nullable Range -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.addTextMatchMarker Mozilla Internals.addTextMatchMarker documentation> 
addTextMatchMarker ::
                   (MonadIO m) => Internals -> Maybe Range -> Bool -> m ()
addTextMatchMarker self range isActive
  = liftIO
      (js_addTextMatchMarker (self) (maybeToNullable range) isActive)
 
foreign import javascript unsafe
        "$1[\"setMarkedTextMatchesAreHighlighted\"]($2)"
        js_setMarkedTextMatchesAreHighlighted :: Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setMarkedTextMatchesAreHighlighted Mozilla Internals.setMarkedTextMatchesAreHighlighted documentation> 
setMarkedTextMatchesAreHighlighted ::
                                   (MonadIO m) => Internals -> Bool -> m ()
setMarkedTextMatchesAreHighlighted self flag
  = liftIO (js_setMarkedTextMatchesAreHighlighted (self) flag)
 
foreign import javascript unsafe "$1[\"invalidateFontCache\"]()"
        js_invalidateFontCache :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.invalidateFontCache Mozilla Internals.invalidateFontCache documentation> 
invalidateFontCache :: (MonadIO m) => Internals -> m ()
invalidateFontCache self = liftIO (js_invalidateFontCache (self))
 
foreign import javascript unsafe
        "$1[\"setScrollViewPosition\"]($2,\n$3)" js_setScrollViewPosition
        :: Internals -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setScrollViewPosition Mozilla Internals.setScrollViewPosition documentation> 
setScrollViewPosition ::
                      (MonadIO m) => Internals -> Int -> Int -> m ()
setScrollViewPosition self x y
  = liftIO (js_setScrollViewPosition (self) x y)
 
foreign import javascript unsafe
        "$1[\"setPagination\"]($2, $3, $4)" js_setPagination ::
        Internals -> JSString -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPagination Mozilla Internals.setPagination documentation> 
setPagination ::
              (MonadIO m, ToJSString mode) =>
                Internals -> mode -> Int -> Int -> m ()
setPagination self mode gap pageLength
  = liftIO (js_setPagination (self) (toJSString mode) gap pageLength)
 
foreign import javascript unsafe
        "$1[\"configurationForViewport\"]($2,\n$3, $4, $5, $6)"
        js_configurationForViewport ::
        Internals -> Float -> Int -> Int -> Int -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.configurationForViewport Mozilla Internals.configurationForViewport documentation> 
configurationForViewport ::
                         (MonadIO m, FromJSString result) =>
                           Internals -> Float -> Int -> Int -> Int -> Int -> m result
configurationForViewport self devicePixelRatio deviceWidth
  deviceHeight availableWidth availableHeight
  = liftIO
      (fromJSString <$>
         (js_configurationForViewport (self) devicePixelRatio deviceWidth
            deviceHeight
            availableWidth
            availableHeight))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.configurationForViewport Mozilla Internals.configurationForViewport documentation> 
configurationForViewport_ ::
                          (MonadIO m) =>
                            Internals -> Float -> Int -> Int -> Int -> Int -> m ()
configurationForViewport_ self devicePixelRatio deviceWidth
  deviceHeight availableWidth availableHeight
  = liftIO
      (void
         (js_configurationForViewport (self) devicePixelRatio deviceWidth
            deviceHeight
            availableWidth
            availableHeight))
 
foreign import javascript unsafe
        "($1[\"wasLastChangeUserEdit\"]($2) ? 1 : 0)"
        js_wasLastChangeUserEdit ::
        Internals -> Nullable Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wasLastChangeUserEdit Mozilla Internals.wasLastChangeUserEdit documentation> 
wasLastChangeUserEdit ::
                      (MonadIO m, IsElement textField) =>
                        Internals -> Maybe textField -> m Bool
wasLastChangeUserEdit self textField
  = liftIO
      (js_wasLastChangeUserEdit (self)
         (maybeToNullable (fmap toElement textField)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wasLastChangeUserEdit Mozilla Internals.wasLastChangeUserEdit documentation> 
wasLastChangeUserEdit_ ::
                       (MonadIO m, IsElement textField) =>
                         Internals -> Maybe textField -> m ()
wasLastChangeUserEdit_ self textField
  = liftIO
      (void
         (js_wasLastChangeUserEdit (self)
            (maybeToNullable (fmap toElement textField))))
 
foreign import javascript unsafe
        "($1[\"elementShouldAutoComplete\"]($2) ? 1 : 0)"
        js_elementShouldAutoComplete ::
        Internals -> Nullable Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementShouldAutoComplete Mozilla Internals.elementShouldAutoComplete documentation> 
elementShouldAutoComplete ::
                          (MonadIO m, IsElement inputElement) =>
                            Internals -> Maybe inputElement -> m Bool
elementShouldAutoComplete self inputElement
  = liftIO
      (js_elementShouldAutoComplete (self)
         (maybeToNullable (fmap toElement inputElement)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementShouldAutoComplete Mozilla Internals.elementShouldAutoComplete documentation> 
elementShouldAutoComplete_ ::
                           (MonadIO m, IsElement inputElement) =>
                             Internals -> Maybe inputElement -> m ()
elementShouldAutoComplete_ self inputElement
  = liftIO
      (void
         (js_elementShouldAutoComplete (self)
            (maybeToNullable (fmap toElement inputElement))))
 
foreign import javascript unsafe "$1[\"setEditingValue\"]($2, $3)"
        js_setEditingValue ::
        Internals -> Nullable Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setEditingValue Mozilla Internals.setEditingValue documentation> 
setEditingValue ::
                (MonadIO m, IsElement inputElement, ToJSString value) =>
                  Internals -> Maybe inputElement -> value -> m ()
setEditingValue self inputElement value
  = liftIO
      (js_setEditingValue (self)
         (maybeToNullable (fmap toElement inputElement))
         (toJSString value))
 
foreign import javascript unsafe "$1[\"setAutofilled\"]($2, $3)"
        js_setAutofilled :: Internals -> Nullable Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutofilled Mozilla Internals.setAutofilled documentation> 
setAutofilled ::
              (MonadIO m, IsElement inputElement) =>
                Internals -> Maybe inputElement -> Bool -> m ()
setAutofilled self inputElement enabled
  = liftIO
      (js_setAutofilled (self)
         (maybeToNullable (fmap toElement inputElement))
         enabled)
 
foreign import javascript unsafe
        "$1[\"countMatchesForText\"]($2,\n$3, $4)" js_countMatchesForText
        :: Internals -> JSString -> Word -> JSString -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.countMatchesForText Mozilla Internals.countMatchesForText documentation> 
countMatchesForText ::
                    (MonadIO m, ToJSString text, ToJSString markMatches) =>
                      Internals -> text -> Word -> markMatches -> m Word
countMatchesForText self text findOptions markMatches
  = liftIO
      (js_countMatchesForText (self) (toJSString text) findOptions
         (toJSString markMatches))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.countMatchesForText Mozilla Internals.countMatchesForText documentation> 
countMatchesForText_ ::
                     (MonadIO m, ToJSString text, ToJSString markMatches) =>
                       Internals -> text -> Word -> markMatches -> m ()
countMatchesForText_ self text findOptions markMatches
  = liftIO
      (void
         (js_countMatchesForText (self) (toJSString text) findOptions
            (toJSString markMatches)))
 
foreign import javascript unsafe "$1[\"paintControlTints\"]()"
        js_paintControlTints :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.paintControlTints Mozilla Internals.paintControlTints documentation> 
paintControlTints :: (MonadIO m) => Internals -> m ()
paintControlTints self = liftIO (js_paintControlTints (self))
 
foreign import javascript unsafe
        "$1[\"scrollElementToRect\"]($2,\n$3, $4, $5, $6)"
        js_scrollElementToRect ::
        Internals -> Nullable Element -> Int -> Int -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollElementToRect Mozilla Internals.scrollElementToRect documentation> 
scrollElementToRect ::
                    (MonadIO m, IsElement element) =>
                      Internals -> Maybe element -> Int -> Int -> Int -> Int -> m ()
scrollElementToRect self element x y w h
  = liftIO
      (js_scrollElementToRect (self)
         (maybeToNullable (fmap toElement element))
         x
         y
         w
         h)
 
foreign import javascript unsafe
        "$1[\"rangeFromLocationAndLength\"]($2,\n$3, $4)"
        js_rangeFromLocationAndLength ::
        Internals -> Nullable Element -> Int -> Int -> IO (Nullable Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
rangeFromLocationAndLength ::
                           (MonadIO m, IsElement scope) =>
                             Internals -> Maybe scope -> Int -> Int -> m (Maybe Range)
rangeFromLocationAndLength self scope rangeLocation rangeLength
  = liftIO
      (nullableToMaybe <$>
         (js_rangeFromLocationAndLength (self)
            (maybeToNullable (fmap toElement scope))
            rangeLocation
            rangeLength))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
rangeFromLocationAndLength_ ::
                            (MonadIO m, IsElement scope) =>
                              Internals -> Maybe scope -> Int -> Int -> m ()
rangeFromLocationAndLength_ self scope rangeLocation rangeLength
  = liftIO
      (void
         (js_rangeFromLocationAndLength (self)
            (maybeToNullable (fmap toElement scope))
            rangeLocation
            rangeLength))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
rangeFromLocationAndLengthUnsafe ::
                                 (MonadIO m, IsElement scope, HasCallStack) =>
                                   Internals -> Maybe scope -> Int -> Int -> m Range
rangeFromLocationAndLengthUnsafe self scope rangeLocation
  rangeLength
  = liftIO
      ((nullableToMaybe <$>
          (js_rangeFromLocationAndLength (self)
             (maybeToNullable (fmap toElement scope))
             rangeLocation
             rangeLength))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
rangeFromLocationAndLengthUnchecked ::
                                    (MonadIO m, IsElement scope) =>
                                      Internals -> Maybe scope -> Int -> Int -> m Range
rangeFromLocationAndLengthUnchecked self scope rangeLocation
  rangeLength
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_rangeFromLocationAndLength (self)
            (maybeToNullable (fmap toElement scope))
            rangeLocation
            rangeLength))
 
foreign import javascript unsafe
        "$1[\"locationFromRange\"]($2, $3)" js_locationFromRange ::
        Internals -> Nullable Element -> Nullable Range -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.locationFromRange Mozilla Internals.locationFromRange documentation> 
locationFromRange ::
                  (MonadIO m, IsElement scope) =>
                    Internals -> Maybe scope -> Maybe Range -> m Word
locationFromRange self scope range
  = liftIO
      (js_locationFromRange (self)
         (maybeToNullable (fmap toElement scope))
         (maybeToNullable range))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.locationFromRange Mozilla Internals.locationFromRange documentation> 
locationFromRange_ ::
                   (MonadIO m, IsElement scope) =>
                     Internals -> Maybe scope -> Maybe Range -> m ()
locationFromRange_ self scope range
  = liftIO
      (void
         (js_locationFromRange (self)
            (maybeToNullable (fmap toElement scope))
            (maybeToNullable range)))
 
foreign import javascript unsafe "$1[\"lengthFromRange\"]($2, $3)"
        js_lengthFromRange ::
        Internals -> Nullable Element -> Nullable Range -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lengthFromRange Mozilla Internals.lengthFromRange documentation> 
lengthFromRange ::
                (MonadIO m, IsElement scope) =>
                  Internals -> Maybe scope -> Maybe Range -> m Word
lengthFromRange self scope range
  = liftIO
      (js_lengthFromRange (self) (maybeToNullable (fmap toElement scope))
         (maybeToNullable range))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lengthFromRange Mozilla Internals.lengthFromRange documentation> 
lengthFromRange_ ::
                 (MonadIO m, IsElement scope) =>
                   Internals -> Maybe scope -> Maybe Range -> m ()
lengthFromRange_ self scope range
  = liftIO
      (void
         (js_lengthFromRange (self) (maybeToNullable (fmap toElement scope))
            (maybeToNullable range)))
 
foreign import javascript unsafe "$1[\"rangeAsText\"]($2)"
        js_rangeAsText :: Internals -> Nullable Range -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeAsText Mozilla Internals.rangeAsText documentation> 
rangeAsText ::
            (MonadIO m, FromJSString result) =>
              Internals -> Maybe Range -> m result
rangeAsText self range
  = liftIO
      (fromJSString <$> (js_rangeAsText (self) (maybeToNullable range)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeAsText Mozilla Internals.rangeAsText documentation> 
rangeAsText_ :: (MonadIO m) => Internals -> Maybe Range -> m ()
rangeAsText_ self range
  = liftIO (void (js_rangeAsText (self) (maybeToNullable range)))
 
foreign import javascript unsafe "$1[\"subrange\"]($2, $3, $4)"
        js_subrange ::
        Internals -> Nullable Range -> Int -> Int -> IO (Nullable Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrange ::
         (MonadIO m) =>
           Internals -> Maybe Range -> Int -> Int -> m (Maybe Range)
subrange self range rangeLocation rangeLength
  = liftIO
      (nullableToMaybe <$>
         (js_subrange (self) (maybeToNullable range) rangeLocation
            rangeLength))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrange_ ::
          (MonadIO m) => Internals -> Maybe Range -> Int -> Int -> m ()
subrange_ self range rangeLocation rangeLength
  = liftIO
      (void
         (js_subrange (self) (maybeToNullable range) rangeLocation
            rangeLength))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrangeUnsafe ::
               (MonadIO m, HasCallStack) =>
                 Internals -> Maybe Range -> Int -> Int -> m Range
subrangeUnsafe self range rangeLocation rangeLength
  = liftIO
      ((nullableToMaybe <$>
          (js_subrange (self) (maybeToNullable range) rangeLocation
             rangeLength))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.subrange Mozilla Internals.subrange documentation> 
subrangeUnchecked ::
                  (MonadIO m) => Internals -> Maybe Range -> Int -> Int -> m Range
subrangeUnchecked self range rangeLocation rangeLength
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_subrange (self) (maybeToNullable range) rangeLocation
            rangeLength))
 
foreign import javascript unsafe
        "$1[\"rangeForDictionaryLookupAtLocation\"]($2,\n$3)"
        js_rangeForDictionaryLookupAtLocation ::
        Internals -> Int -> Int -> IO (Nullable Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocation ::
                                   (MonadIO m) => Internals -> Int -> Int -> m (Maybe Range)
rangeForDictionaryLookupAtLocation self x y
  = liftIO
      (nullableToMaybe <$>
         (js_rangeForDictionaryLookupAtLocation (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocation_ ::
                                    (MonadIO m) => Internals -> Int -> Int -> m ()
rangeForDictionaryLookupAtLocation_ self x y
  = liftIO (void (js_rangeForDictionaryLookupAtLocation (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocationUnsafe ::
                                         (MonadIO m, HasCallStack) =>
                                           Internals -> Int -> Int -> m Range
rangeForDictionaryLookupAtLocationUnsafe self x y
  = liftIO
      ((nullableToMaybe <$>
          (js_rangeForDictionaryLookupAtLocation (self) x y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeForDictionaryLookupAtLocation Mozilla Internals.rangeForDictionaryLookupAtLocation documentation> 
rangeForDictionaryLookupAtLocationUnchecked ::
                                            (MonadIO m) => Internals -> Int -> Int -> m Range
rangeForDictionaryLookupAtLocationUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_rangeForDictionaryLookupAtLocation (self) x y))
 
foreign import javascript unsafe
        "$1[\"setDelegatesScrolling\"]($2)" js_setDelegatesScrolling ::
        Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setDelegatesScrolling Mozilla Internals.setDelegatesScrolling documentation> 
setDelegatesScrolling :: (MonadIO m) => Internals -> Bool -> m ()
setDelegatesScrolling self enabled
  = liftIO (js_setDelegatesScrolling (self) enabled)
 
foreign import javascript unsafe
        "$1[\"lastSpellCheckRequestSequence\"]()"
        js_lastSpellCheckRequestSequence :: Internals -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckRequestSequence Mozilla Internals.lastSpellCheckRequestSequence documentation> 
lastSpellCheckRequestSequence :: (MonadIO m) => Internals -> m Int
lastSpellCheckRequestSequence self
  = liftIO (js_lastSpellCheckRequestSequence (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckRequestSequence Mozilla Internals.lastSpellCheckRequestSequence documentation> 
lastSpellCheckRequestSequence_ :: (MonadIO m) => Internals -> m ()
lastSpellCheckRequestSequence_ self
  = liftIO (void (js_lastSpellCheckRequestSequence (self)))
 
foreign import javascript unsafe
        "$1[\"lastSpellCheckProcessedSequence\"]()"
        js_lastSpellCheckProcessedSequence :: Internals -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckProcessedSequence Mozilla Internals.lastSpellCheckProcessedSequence documentation> 
lastSpellCheckProcessedSequence ::
                                (MonadIO m) => Internals -> m Int
lastSpellCheckProcessedSequence self
  = liftIO (js_lastSpellCheckProcessedSequence (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckProcessedSequence Mozilla Internals.lastSpellCheckProcessedSequence documentation> 
lastSpellCheckProcessedSequence_ ::
                                 (MonadIO m) => Internals -> m ()
lastSpellCheckProcessedSequence_ self
  = liftIO (void (js_lastSpellCheckProcessedSequence (self)))
 
foreign import javascript unsafe "$1[\"userPreferredLanguages\"]()"
        js_userPreferredLanguages :: Internals -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
userPreferredLanguages ::
                       (MonadIO m, FromJSString result) => Internals -> m [result]
userPreferredLanguages self
  = liftIO
      ((js_userPreferredLanguages (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
userPreferredLanguages_ :: (MonadIO m) => Internals -> m ()
userPreferredLanguages_ self
  = liftIO (void (js_userPreferredLanguages (self)))
 
foreign import javascript unsafe
        "$1[\"setUserPreferredLanguages\"]($2)"
        js_setUserPreferredLanguages :: Internals -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setUserPreferredLanguages Mozilla Internals.setUserPreferredLanguages documentation> 
setUserPreferredLanguages ::
                          (MonadIO m, ToJSString languages) =>
                            Internals -> [languages] -> m ()
setUserPreferredLanguages self languages
  = liftIO
      (toJSVal languages >>=
         \ languages' -> js_setUserPreferredLanguages (self) languages')
 
foreign import javascript unsafe "$1[\"wheelEventHandlerCount\"]()"
        js_wheelEventHandlerCount :: Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wheelEventHandlerCount Mozilla Internals.wheelEventHandlerCount documentation> 
wheelEventHandlerCount :: (MonadIO m) => Internals -> m Word
wheelEventHandlerCount self
  = liftIO (js_wheelEventHandlerCount (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wheelEventHandlerCount Mozilla Internals.wheelEventHandlerCount documentation> 
wheelEventHandlerCount_ :: (MonadIO m) => Internals -> m ()
wheelEventHandlerCount_ self
  = liftIO (void (js_wheelEventHandlerCount (self)))
 
foreign import javascript unsafe "$1[\"touchEventHandlerCount\"]()"
        js_touchEventHandlerCount :: Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.touchEventHandlerCount Mozilla Internals.touchEventHandlerCount documentation> 
touchEventHandlerCount :: (MonadIO m) => Internals -> m Word
touchEventHandlerCount self
  = liftIO (js_touchEventHandlerCount (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.touchEventHandlerCount Mozilla Internals.touchEventHandlerCount documentation> 
touchEventHandlerCount_ :: (MonadIO m) => Internals -> m ()
touchEventHandlerCount_ self
  = liftIO (void (js_touchEventHandlerCount (self)))
 
foreign import javascript unsafe
        "$1[\"nodesFromRect\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11)"
        js_nodesFromRect ::
        Internals ->
          Nullable Document ->
            Int ->
              Int ->
                Word ->
                  Word ->
                    Word -> Word -> Bool -> Bool -> Bool -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
nodesFromRect ::
              (MonadIO m, IsDocument document) =>
                Internals ->
                  Maybe document ->
                    Int ->
                      Int ->
                        Word ->
                          Word -> Word -> Word -> Bool -> Bool -> Bool -> m (Maybe NodeList)
nodesFromRect self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftIO
      (nullableToMaybe <$>
         (js_nodesFromRect (self)
            (maybeToNullable (fmap toDocument document))
            x
            y
            topPadding
            rightPadding
            bottomPadding
            leftPadding
            ignoreClipping
            allowShadowContent
            allowChildFrameContent))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
nodesFromRect_ ::
               (MonadIO m, IsDocument document) =>
                 Internals ->
                   Maybe document ->
                     Int ->
                       Int -> Word -> Word -> Word -> Word -> Bool -> Bool -> Bool -> m ()
nodesFromRect_ self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftIO
      (void
         (js_nodesFromRect (self)
            (maybeToNullable (fmap toDocument document))
            x
            y
            topPadding
            rightPadding
            bottomPadding
            leftPadding
            ignoreClipping
            allowShadowContent
            allowChildFrameContent))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
nodesFromRectUnsafe ::
                    (MonadIO m, IsDocument document, HasCallStack) =>
                      Internals ->
                        Maybe document ->
                          Int ->
                            Int ->
                              Word -> Word -> Word -> Word -> Bool -> Bool -> Bool -> m NodeList
nodesFromRectUnsafe self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftIO
      ((nullableToMaybe <$>
          (js_nodesFromRect (self)
             (maybeToNullable (fmap toDocument document))
             x
             y
             topPadding
             rightPadding
             bottomPadding
             leftPadding
             ignoreClipping
             allowShadowContent
             allowChildFrameContent))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
nodesFromRectUnchecked ::
                       (MonadIO m, IsDocument document) =>
                         Internals ->
                           Maybe document ->
                             Int ->
                               Int ->
                                 Word -> Word -> Word -> Word -> Bool -> Bool -> Bool -> m NodeList
nodesFromRectUnchecked self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_nodesFromRect (self)
            (maybeToNullable (fmap toDocument document))
            x
            y
            topPadding
            rightPadding
            bottomPadding
            leftPadding
            ignoreClipping
            allowShadowContent
            allowChildFrameContent))
 
foreign import javascript unsafe "$1[\"parserMetaData\"]($2)"
        js_parserMetaData :: Internals -> JSVal -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parserMetaData Mozilla Internals.parserMetaData documentation> 
parserMetaData ::
               (MonadIO m, FromJSString result) => Internals -> JSVal -> m result
parserMetaData self func
  = liftIO (fromJSString <$> (js_parserMetaData (self) func))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parserMetaData Mozilla Internals.parserMetaData documentation> 
parserMetaData_ :: (MonadIO m) => Internals -> JSVal -> m ()
parserMetaData_ self func
  = liftIO (void (js_parserMetaData (self) func))
 
foreign import javascript unsafe
        "$1[\"updateEditorUINowIfScheduled\"]()"
        js_updateEditorUINowIfScheduled :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateEditorUINowIfScheduled Mozilla Internals.updateEditorUINowIfScheduled documentation> 
updateEditorUINowIfScheduled :: (MonadIO m) => Internals -> m ()
updateEditorUINowIfScheduled self
  = liftIO (js_updateEditorUINowIfScheduled (self))
 
foreign import javascript unsafe
        "($1[\"hasSpellingMarker\"]($2,\n$3) ? 1 : 0)" js_hasSpellingMarker
        :: Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasSpellingMarker Mozilla Internals.hasSpellingMarker documentation> 
hasSpellingMarker ::
                  (MonadIO m) => Internals -> Int -> Int -> m Bool
hasSpellingMarker self from length
  = liftIO (js_hasSpellingMarker (self) from length)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasSpellingMarker Mozilla Internals.hasSpellingMarker documentation> 
hasSpellingMarker_ ::
                   (MonadIO m) => Internals -> Int -> Int -> m ()
hasSpellingMarker_ self from length
  = liftIO (void (js_hasSpellingMarker (self) from length))
 
foreign import javascript unsafe
        "($1[\"hasGrammarMarker\"]($2,\n$3) ? 1 : 0)" js_hasGrammarMarker
        :: Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasGrammarMarker Mozilla Internals.hasGrammarMarker documentation> 
hasGrammarMarker ::
                 (MonadIO m) => Internals -> Int -> Int -> m Bool
hasGrammarMarker self from length
  = liftIO (js_hasGrammarMarker (self) from length)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasGrammarMarker Mozilla Internals.hasGrammarMarker documentation> 
hasGrammarMarker_ :: (MonadIO m) => Internals -> Int -> Int -> m ()
hasGrammarMarker_ self from length
  = liftIO (void (js_hasGrammarMarker (self) from length))
 
foreign import javascript unsafe
        "($1[\"hasAutocorrectedMarker\"]($2,\n$3) ? 1 : 0)"
        js_hasAutocorrectedMarker :: Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasAutocorrectedMarker Mozilla Internals.hasAutocorrectedMarker documentation> 
hasAutocorrectedMarker ::
                       (MonadIO m) => Internals -> Int -> Int -> m Bool
hasAutocorrectedMarker self from length
  = liftIO (js_hasAutocorrectedMarker (self) from length)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasAutocorrectedMarker Mozilla Internals.hasAutocorrectedMarker documentation> 
hasAutocorrectedMarker_ ::
                        (MonadIO m) => Internals -> Int -> Int -> m ()
hasAutocorrectedMarker_ self from length
  = liftIO (void (js_hasAutocorrectedMarker (self) from length))
 
foreign import javascript unsafe
        "$1[\"setContinuousSpellCheckingEnabled\"]($2)"
        js_setContinuousSpellCheckingEnabled :: Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setContinuousSpellCheckingEnabled Mozilla Internals.setContinuousSpellCheckingEnabled documentation> 
setContinuousSpellCheckingEnabled ::
                                  (MonadIO m) => Internals -> Bool -> m ()
setContinuousSpellCheckingEnabled self enabled
  = liftIO (js_setContinuousSpellCheckingEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticQuoteSubstitutionEnabled\"]($2)"
        js_setAutomaticQuoteSubstitutionEnabled ::
        Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticQuoteSubstitutionEnabled Mozilla Internals.setAutomaticQuoteSubstitutionEnabled documentation> 
setAutomaticQuoteSubstitutionEnabled ::
                                     (MonadIO m) => Internals -> Bool -> m ()
setAutomaticQuoteSubstitutionEnabled self enabled
  = liftIO (js_setAutomaticQuoteSubstitutionEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticLinkDetectionEnabled\"]($2)"
        js_setAutomaticLinkDetectionEnabled :: Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticLinkDetectionEnabled Mozilla Internals.setAutomaticLinkDetectionEnabled documentation> 
setAutomaticLinkDetectionEnabled ::
                                 (MonadIO m) => Internals -> Bool -> m ()
setAutomaticLinkDetectionEnabled self enabled
  = liftIO (js_setAutomaticLinkDetectionEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticDashSubstitutionEnabled\"]($2)"
        js_setAutomaticDashSubstitutionEnabled ::
        Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticDashSubstitutionEnabled Mozilla Internals.setAutomaticDashSubstitutionEnabled documentation> 
setAutomaticDashSubstitutionEnabled ::
                                    (MonadIO m) => Internals -> Bool -> m ()
setAutomaticDashSubstitutionEnabled self enabled
  = liftIO (js_setAutomaticDashSubstitutionEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticTextReplacementEnabled\"]($2)"
        js_setAutomaticTextReplacementEnabled :: Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticTextReplacementEnabled Mozilla Internals.setAutomaticTextReplacementEnabled documentation> 
setAutomaticTextReplacementEnabled ::
                                   (MonadIO m) => Internals -> Bool -> m ()
setAutomaticTextReplacementEnabled self enabled
  = liftIO (js_setAutomaticTextReplacementEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticSpellingCorrectionEnabled\"]($2)"
        js_setAutomaticSpellingCorrectionEnabled ::
        Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setAutomaticSpellingCorrectionEnabled Mozilla Internals.setAutomaticSpellingCorrectionEnabled documentation> 
setAutomaticSpellingCorrectionEnabled ::
                                      (MonadIO m) => Internals -> Bool -> m ()
setAutomaticSpellingCorrectionEnabled self enabled
  = liftIO (js_setAutomaticSpellingCorrectionEnabled (self) enabled)
 
foreign import javascript unsafe
        "($1[\"isOverwriteModeEnabled\"]() ? 1 : 0)"
        js_isOverwriteModeEnabled :: Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isOverwriteModeEnabled Mozilla Internals.isOverwriteModeEnabled documentation> 
isOverwriteModeEnabled :: (MonadIO m) => Internals -> m Bool
isOverwriteModeEnabled self
  = liftIO (js_isOverwriteModeEnabled (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isOverwriteModeEnabled Mozilla Internals.isOverwriteModeEnabled documentation> 
isOverwriteModeEnabled_ :: (MonadIO m) => Internals -> m ()
isOverwriteModeEnabled_ self
  = liftIO (void (js_isOverwriteModeEnabled (self)))
 
foreign import javascript unsafe
        "$1[\"toggleOverwriteModeEnabled\"]()"
        js_toggleOverwriteModeEnabled :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toggleOverwriteModeEnabled Mozilla Internals.toggleOverwriteModeEnabled documentation> 
toggleOverwriteModeEnabled :: (MonadIO m) => Internals -> m ()
toggleOverwriteModeEnabled self
  = liftIO (js_toggleOverwriteModeEnabled (self))
 
foreign import javascript unsafe
        "$1[\"numberOfScrollableAreas\"]()" js_numberOfScrollableAreas ::
        Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfScrollableAreas Mozilla Internals.numberOfScrollableAreas documentation> 
numberOfScrollableAreas :: (MonadIO m) => Internals -> m Word
numberOfScrollableAreas self
  = liftIO (js_numberOfScrollableAreas (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfScrollableAreas Mozilla Internals.numberOfScrollableAreas documentation> 
numberOfScrollableAreas_ :: (MonadIO m) => Internals -> m ()
numberOfScrollableAreas_ self
  = liftIO (void (js_numberOfScrollableAreas (self)))
 
foreign import javascript unsafe
        "($1[\"isPageBoxVisible\"]($2) ? 1 : 0)" js_isPageBoxVisible ::
        Internals -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPageBoxVisible Mozilla Internals.isPageBoxVisible documentation> 
isPageBoxVisible :: (MonadIO m) => Internals -> Int -> m Bool
isPageBoxVisible self pageNumber
  = liftIO (js_isPageBoxVisible (self) pageNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPageBoxVisible Mozilla Internals.isPageBoxVisible documentation> 
isPageBoxVisible_ :: (MonadIO m) => Internals -> Int -> m ()
isPageBoxVisible_ self pageNumber
  = liftIO (void (js_isPageBoxVisible (self) pageNumber))
 
foreign import javascript unsafe "$1[\"layerTreeAsText\"]($2, $3)"
        js_layerTreeAsText ::
        Internals -> Nullable Document -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.layerTreeAsText Mozilla Internals.layerTreeAsText documentation> 
layerTreeAsText ::
                (MonadIO m, IsDocument document, FromJSString result) =>
                  Internals -> Maybe document -> Word -> m result
layerTreeAsText self document flags
  = liftIO
      (fromJSString <$>
         (js_layerTreeAsText (self)
            (maybeToNullable (fmap toDocument document))
            flags))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.layerTreeAsText Mozilla Internals.layerTreeAsText documentation> 
layerTreeAsText_ ::
                 (MonadIO m, IsDocument document) =>
                   Internals -> Maybe document -> Word -> m ()
layerTreeAsText_ self document flags
  = liftIO
      (void
         (js_layerTreeAsText (self)
            (maybeToNullable (fmap toDocument document))
            flags))
 
foreign import javascript unsafe
        "$1[\"scrollingStateTreeAsText\"]()" js_scrollingStateTreeAsText ::
        Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollingStateTreeAsText Mozilla Internals.scrollingStateTreeAsText documentation> 
scrollingStateTreeAsText ::
                         (MonadIO m, FromJSString result) => Internals -> m result
scrollingStateTreeAsText self
  = liftIO (fromJSString <$> (js_scrollingStateTreeAsText (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollingStateTreeAsText Mozilla Internals.scrollingStateTreeAsText documentation> 
scrollingStateTreeAsText_ :: (MonadIO m) => Internals -> m ()
scrollingStateTreeAsText_ self
  = liftIO (void (js_scrollingStateTreeAsText (self)))
 
foreign import javascript unsafe
        "$1[\"mainThreadScrollingReasons\"]()"
        js_mainThreadScrollingReasons :: Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mainThreadScrollingReasons Mozilla Internals.mainThreadScrollingReasons documentation> 
mainThreadScrollingReasons ::
                           (MonadIO m, FromJSString result) => Internals -> m result
mainThreadScrollingReasons self
  = liftIO (fromJSString <$> (js_mainThreadScrollingReasons (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mainThreadScrollingReasons Mozilla Internals.mainThreadScrollingReasons documentation> 
mainThreadScrollingReasons_ :: (MonadIO m) => Internals -> m ()
mainThreadScrollingReasons_ self
  = liftIO (void (js_mainThreadScrollingReasons (self)))
 
foreign import javascript unsafe "$1[\"nonFastScrollableRects\"]()"
        js_nonFastScrollableRects ::
        Internals -> IO (Nullable ClientRectList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRects ::
                       (MonadIO m) => Internals -> m (Maybe ClientRectList)
nonFastScrollableRects self
  = liftIO (nullableToMaybe <$> (js_nonFastScrollableRects (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRects_ :: (MonadIO m) => Internals -> m ()
nonFastScrollableRects_ self
  = liftIO (void (js_nonFastScrollableRects (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRectsUnsafe ::
                             (MonadIO m, HasCallStack) => Internals -> m ClientRectList
nonFastScrollableRectsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_nonFastScrollableRects (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
nonFastScrollableRectsUnchecked ::
                                (MonadIO m) => Internals -> m ClientRectList
nonFastScrollableRectsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_nonFastScrollableRects (self)))
 
foreign import javascript unsafe "$1[\"repaintRectsAsText\"]()"
        js_repaintRectsAsText :: Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.repaintRectsAsText Mozilla Internals.repaintRectsAsText documentation> 
repaintRectsAsText ::
                   (MonadIO m, FromJSString result) => Internals -> m result
repaintRectsAsText self
  = liftIO (fromJSString <$> (js_repaintRectsAsText (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.repaintRectsAsText Mozilla Internals.repaintRectsAsText documentation> 
repaintRectsAsText_ :: (MonadIO m) => Internals -> m ()
repaintRectsAsText_ self
  = liftIO (void (js_repaintRectsAsText (self)))
 
foreign import javascript unsafe
        "$1[\"garbageCollectDocumentResources\"]()"
        js_garbageCollectDocumentResources :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.garbageCollectDocumentResources Mozilla Internals.garbageCollectDocumentResources documentation> 
garbageCollectDocumentResources :: (MonadIO m) => Internals -> m ()
garbageCollectDocumentResources self
  = liftIO (js_garbageCollectDocumentResources (self))
 
foreign import javascript unsafe "$1[\"allowRoundingHacks\"]()"
        js_allowRoundingHacks :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allowRoundingHacks Mozilla Internals.allowRoundingHacks documentation> 
allowRoundingHacks :: (MonadIO m) => Internals -> m ()
allowRoundingHacks self = liftIO (js_allowRoundingHacks (self))
 
foreign import javascript unsafe "$1[\"insertAuthorCSS\"]($2)"
        js_insertAuthorCSS :: Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.insertAuthorCSS Mozilla Internals.insertAuthorCSS documentation> 
insertAuthorCSS ::
                (MonadIO m, ToJSString css) => Internals -> css -> m ()
insertAuthorCSS self css
  = liftIO (js_insertAuthorCSS (self) (toJSString css))
 
foreign import javascript unsafe "$1[\"insertUserCSS\"]($2)"
        js_insertUserCSS :: Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.insertUserCSS Mozilla Internals.insertUserCSS documentation> 
insertUserCSS ::
              (MonadIO m, ToJSString css) => Internals -> css -> m ()
insertUserCSS self css
  = liftIO (js_insertUserCSS (self) (toJSString css))
 
foreign import javascript unsafe
        "$1[\"setBatteryStatus\"]($2, $3,\n$4, $5, $6)" js_setBatteryStatus
        ::
        Internals ->
          JSString -> Bool -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setBatteryStatus Mozilla Internals.setBatteryStatus documentation> 
setBatteryStatus ::
                 (MonadIO m, ToJSString eventType) =>
                   Internals ->
                     eventType -> Bool -> Double -> Double -> Double -> m ()
setBatteryStatus self eventType charging chargingTime
  dischargingTime level
  = liftIO
      (js_setBatteryStatus (self) (toJSString eventType) charging
         chargingTime
         dischargingTime
         level)
 
foreign import javascript unsafe
        "$1[\"setDeviceProximity\"]($2, $3,\n$4, $5)" js_setDeviceProximity
        :: Internals -> JSString -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setDeviceProximity Mozilla Internals.setDeviceProximity documentation> 
setDeviceProximity ::
                   (MonadIO m, ToJSString eventType) =>
                     Internals -> eventType -> Double -> Double -> Double -> m ()
setDeviceProximity self eventType value min max
  = liftIO
      (js_setDeviceProximity (self) (toJSString eventType) value min max)
 
foreign import javascript unsafe "$1[\"numberOfLiveNodes\"]()"
        js_numberOfLiveNodes :: Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveNodes Mozilla Internals.numberOfLiveNodes documentation> 
numberOfLiveNodes :: (MonadIO m) => Internals -> m Word
numberOfLiveNodes self = liftIO (js_numberOfLiveNodes (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveNodes Mozilla Internals.numberOfLiveNodes documentation> 
numberOfLiveNodes_ :: (MonadIO m) => Internals -> m ()
numberOfLiveNodes_ self
  = liftIO (void (js_numberOfLiveNodes (self)))
 
foreign import javascript unsafe "$1[\"numberOfLiveDocuments\"]()"
        js_numberOfLiveDocuments :: Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveDocuments Mozilla Internals.numberOfLiveDocuments documentation> 
numberOfLiveDocuments :: (MonadIO m) => Internals -> m Word
numberOfLiveDocuments self
  = liftIO (js_numberOfLiveDocuments (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveDocuments Mozilla Internals.numberOfLiveDocuments documentation> 
numberOfLiveDocuments_ :: (MonadIO m) => Internals -> m ()
numberOfLiveDocuments_ self
  = liftIO (void (js_numberOfLiveDocuments (self)))
 
foreign import javascript unsafe
        "$1[\"consoleMessageArgumentCounts\"]()"
        js_consoleMessageArgumentCounts :: Internals -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleMessageArgumentCounts Mozilla Internals.consoleMessageArgumentCounts documentation> 
consoleMessageArgumentCounts ::
                             (MonadIO m, FromJSString result) => Internals -> m [result]
consoleMessageArgumentCounts self
  = liftIO
      ((js_consoleMessageArgumentCounts (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleMessageArgumentCounts Mozilla Internals.consoleMessageArgumentCounts documentation> 
consoleMessageArgumentCounts_ :: (MonadIO m) => Internals -> m ()
consoleMessageArgumentCounts_ self
  = liftIO (void (js_consoleMessageArgumentCounts (self)))
 
foreign import javascript unsafe
        "$1[\"openDummyInspectorFrontend\"]($2)"
        js_openDummyInspectorFrontend ::
        Internals -> JSString -> IO (Nullable Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontend ::
                           (MonadIO m, ToJSString url) => Internals -> url -> m (Maybe Window)
openDummyInspectorFrontend self url
  = liftIO
      (nullableToMaybe <$>
         (js_openDummyInspectorFrontend (self) (toJSString url)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontend_ ::
                            (MonadIO m, ToJSString url) => Internals -> url -> m ()
openDummyInspectorFrontend_ self url
  = liftIO
      (void (js_openDummyInspectorFrontend (self) (toJSString url)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontendUnsafe ::
                                 (MonadIO m, ToJSString url, HasCallStack) =>
                                   Internals -> url -> m Window
openDummyInspectorFrontendUnsafe self url
  = liftIO
      ((nullableToMaybe <$>
          (js_openDummyInspectorFrontend (self) (toJSString url)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
openDummyInspectorFrontendUnchecked ::
                                    (MonadIO m, ToJSString url) => Internals -> url -> m Window
openDummyInspectorFrontendUnchecked self url
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_openDummyInspectorFrontend (self) (toJSString url)))
 
foreign import javascript unsafe
        "$1[\"closeDummyInspectorFrontend\"]()"
        js_closeDummyInspectorFrontend :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closeDummyInspectorFrontend Mozilla Internals.closeDummyInspectorFrontend documentation> 
closeDummyInspectorFrontend :: (MonadIO m) => Internals -> m ()
closeDummyInspectorFrontend self
  = liftIO (js_closeDummyInspectorFrontend (self))
 
foreign import javascript unsafe
        "$1[\"setJavaScriptProfilingEnabled\"]($2)"
        js_setJavaScriptProfilingEnabled :: Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setJavaScriptProfilingEnabled Mozilla Internals.setJavaScriptProfilingEnabled documentation> 
setJavaScriptProfilingEnabled ::
                              (MonadIO m) => Internals -> Bool -> m ()
setJavaScriptProfilingEnabled self creates
  = liftIO (js_setJavaScriptProfilingEnabled (self) creates)
 
foreign import javascript unsafe
        "$1[\"setInspectorIsUnderTest\"]($2)" js_setInspectorIsUnderTest ::
        Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setInspectorIsUnderTest Mozilla Internals.setInspectorIsUnderTest documentation> 
setInspectorIsUnderTest :: (MonadIO m) => Internals -> Bool -> m ()
setInspectorIsUnderTest self isUnderTest
  = liftIO (js_setInspectorIsUnderTest (self) isUnderTest)
 
foreign import javascript unsafe "$1[\"counterValue\"]($2)"
        js_counterValue :: Internals -> Nullable Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.counterValue Mozilla Internals.counterValue documentation> 
counterValue ::
             (MonadIO m, IsElement element, FromJSString result) =>
               Internals -> Maybe element -> m result
counterValue self element
  = liftIO
      (fromJSString <$>
         (js_counterValue (self)
            (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.counterValue Mozilla Internals.counterValue documentation> 
counterValue_ ::
              (MonadIO m, IsElement element) =>
                Internals -> Maybe element -> m ()
counterValue_ self element
  = liftIO
      (void
         (js_counterValue (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe "$1[\"pageNumber\"]($2, $3, $4)"
        js_pageNumber ::
        Internals -> Nullable Element -> Float -> Float -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageNumber Mozilla Internals.pageNumber documentation> 
pageNumber ::
           (MonadIO m, IsElement element) =>
             Internals -> Maybe element -> Float -> Float -> m Int
pageNumber self element pageWidth pageHeight
  = liftIO
      (js_pageNumber (self) (maybeToNullable (fmap toElement element))
         pageWidth
         pageHeight)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageNumber Mozilla Internals.pageNumber documentation> 
pageNumber_ ::
            (MonadIO m, IsElement element) =>
              Internals -> Maybe element -> Float -> Float -> m ()
pageNumber_ self element pageWidth pageHeight
  = liftIO
      (void
         (js_pageNumber (self) (maybeToNullable (fmap toElement element))
            pageWidth
            pageHeight))
 
foreign import javascript unsafe "$1[\"shortcutIconURLs\"]()"
        js_shortcutIconURLs :: Internals -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shortcutIconURLs Mozilla Internals.shortcutIconURLs documentation> 
shortcutIconURLs ::
                 (MonadIO m, FromJSString result) => Internals -> m [result]
shortcutIconURLs self
  = liftIO ((js_shortcutIconURLs (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shortcutIconURLs Mozilla Internals.shortcutIconURLs documentation> 
shortcutIconURLs_ :: (MonadIO m) => Internals -> m ()
shortcutIconURLs_ self = liftIO (void (js_shortcutIconURLs (self)))
 
foreign import javascript unsafe "$1[\"allIconURLs\"]()"
        js_allIconURLs :: Internals -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allIconURLs Mozilla Internals.allIconURLs documentation> 
allIconURLs ::
            (MonadIO m, FromJSString result) => Internals -> m [result]
allIconURLs self
  = liftIO ((js_allIconURLs (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allIconURLs Mozilla Internals.allIconURLs documentation> 
allIconURLs_ :: (MonadIO m) => Internals -> m ()
allIconURLs_ self = liftIO (void (js_allIconURLs (self)))
 
foreign import javascript unsafe "$1[\"numberOfPages\"]($2, $3)"
        js_numberOfPages :: Internals -> Double -> Double -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfPages Mozilla Internals.numberOfPages documentation> 
numberOfPages ::
              (MonadIO m) => Internals -> Double -> Double -> m Int
numberOfPages self pageWidthInPixels pageHeightInPixels
  = liftIO
      (js_numberOfPages (self) pageWidthInPixels pageHeightInPixels)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfPages Mozilla Internals.numberOfPages documentation> 
numberOfPages_ ::
               (MonadIO m) => Internals -> Double -> Double -> m ()
numberOfPages_ self pageWidthInPixels pageHeightInPixels
  = liftIO
      (void
         (js_numberOfPages (self) pageWidthInPixels pageHeightInPixels))
 
foreign import javascript unsafe "$1[\"pageProperty\"]($2, $3)"
        js_pageProperty :: Internals -> JSString -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageProperty Mozilla Internals.pageProperty documentation> 
pageProperty ::
             (MonadIO m, ToJSString propertyName, FromJSString result) =>
               Internals -> propertyName -> Int -> m result
pageProperty self propertyName pageNumber
  = liftIO
      (fromJSString <$>
         (js_pageProperty (self) (toJSString propertyName) pageNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageProperty Mozilla Internals.pageProperty documentation> 
pageProperty_ ::
              (MonadIO m, ToJSString propertyName) =>
                Internals -> propertyName -> Int -> m ()
pageProperty_ self propertyName pageNumber
  = liftIO
      (void
         (js_pageProperty (self) (toJSString propertyName) pageNumber))
 
foreign import javascript unsafe
        "$1[\"pageSizeAndMarginsInPixels\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_pageSizeAndMarginsInPixels ::
        Internals ->
          Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageSizeAndMarginsInPixels Mozilla Internals.pageSizeAndMarginsInPixels documentation> 
pageSizeAndMarginsInPixels ::
                           (MonadIO m, FromJSString result) =>
                             Internals ->
                               Int -> Int -> Int -> Int -> Int -> Int -> Int -> m result
pageSizeAndMarginsInPixels self pageIndex width height marginTop
  marginRight marginBottom marginLeft
  = liftIO
      (fromJSString <$>
         (js_pageSizeAndMarginsInPixels (self) pageIndex width height
            marginTop
            marginRight
            marginBottom
            marginLeft))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageSizeAndMarginsInPixels Mozilla Internals.pageSizeAndMarginsInPixels documentation> 
pageSizeAndMarginsInPixels_ ::
                            (MonadIO m) =>
                              Internals -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> m ()
pageSizeAndMarginsInPixels_ self pageIndex width height marginTop
  marginRight marginBottom marginLeft
  = liftIO
      (void
         (js_pageSizeAndMarginsInPixels (self) pageIndex width height
            marginTop
            marginRight
            marginBottom
            marginLeft))
 
foreign import javascript unsafe
        "$1[\"setPageScaleFactor\"]($2, $3,\n$4)" js_setPageScaleFactor ::
        Internals -> Float -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPageScaleFactor Mozilla Internals.setPageScaleFactor documentation> 
setPageScaleFactor ::
                   (MonadIO m) => Internals -> Float -> Int -> Int -> m ()
setPageScaleFactor self scaleFactor x y
  = liftIO (js_setPageScaleFactor (self) scaleFactor x y)
 
foreign import javascript unsafe "$1[\"setPageZoomFactor\"]($2)"
        js_setPageZoomFactor :: Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPageZoomFactor Mozilla Internals.setPageZoomFactor documentation> 
setPageZoomFactor :: (MonadIO m) => Internals -> Float -> m ()
setPageZoomFactor self zoomFactor
  = liftIO (js_setPageZoomFactor (self) zoomFactor)
 
foreign import javascript unsafe "$1[\"setHeaderHeight\"]($2)"
        js_setHeaderHeight :: Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setHeaderHeight Mozilla Internals.setHeaderHeight documentation> 
setHeaderHeight :: (MonadIO m) => Internals -> Float -> m ()
setHeaderHeight self height
  = liftIO (js_setHeaderHeight (self) height)
 
foreign import javascript unsafe "$1[\"setFooterHeight\"]($2)"
        js_setFooterHeight :: Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setFooterHeight Mozilla Internals.setFooterHeight documentation> 
setFooterHeight :: (MonadIO m) => Internals -> Float -> m ()
setFooterHeight self height
  = liftIO (js_setFooterHeight (self) height)
 
foreign import javascript unsafe "$1[\"setTopContentInset\"]($2)"
        js_setTopContentInset :: Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setTopContentInset Mozilla Internals.setTopContentInset documentation> 
setTopContentInset :: (MonadIO m) => Internals -> Float -> m ()
setTopContentInset self contentInset
  = liftIO (js_setTopContentInset (self) contentInset)
 
foreign import javascript unsafe
        "$1[\"webkitWillEnterFullScreenForElement\"]($2)"
        js_webkitWillEnterFullScreenForElement ::
        Internals -> Nullable Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitWillEnterFullScreenForElement Mozilla Internals.webkitWillEnterFullScreenForElement documentation> 
webkitWillEnterFullScreenForElement ::
                                    (MonadIO m, IsElement element) =>
                                      Internals -> Maybe element -> m ()
webkitWillEnterFullScreenForElement self element
  = liftIO
      (js_webkitWillEnterFullScreenForElement (self)
         (maybeToNullable (fmap toElement element)))
 
foreign import javascript unsafe
        "$1[\"webkitDidEnterFullScreenForElement\"]($2)"
        js_webkitDidEnterFullScreenForElement ::
        Internals -> Nullable Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitDidEnterFullScreenForElement Mozilla Internals.webkitDidEnterFullScreenForElement documentation> 
webkitDidEnterFullScreenForElement ::
                                   (MonadIO m, IsElement element) =>
                                     Internals -> Maybe element -> m ()
webkitDidEnterFullScreenForElement self element
  = liftIO
      (js_webkitDidEnterFullScreenForElement (self)
         (maybeToNullable (fmap toElement element)))
 
foreign import javascript unsafe
        "$1[\"webkitWillExitFullScreenForElement\"]($2)"
        js_webkitWillExitFullScreenForElement ::
        Internals -> Nullable Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitWillExitFullScreenForElement Mozilla Internals.webkitWillExitFullScreenForElement documentation> 
webkitWillExitFullScreenForElement ::
                                   (MonadIO m, IsElement element) =>
                                     Internals -> Maybe element -> m ()
webkitWillExitFullScreenForElement self element
  = liftIO
      (js_webkitWillExitFullScreenForElement (self)
         (maybeToNullable (fmap toElement element)))
 
foreign import javascript unsafe
        "$1[\"webkitDidExitFullScreenForElement\"]($2)"
        js_webkitDidExitFullScreenForElement ::
        Internals -> Nullable Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitDidExitFullScreenForElement Mozilla Internals.webkitDidExitFullScreenForElement documentation> 
webkitDidExitFullScreenForElement ::
                                  (MonadIO m, IsElement element) =>
                                    Internals -> Maybe element -> m ()
webkitDidExitFullScreenForElement self element
  = liftIO
      (js_webkitDidExitFullScreenForElement (self)
         (maybeToNullable (fmap toElement element)))
 
foreign import javascript unsafe
        "$1[\"setApplicationCacheOriginQuota\"]($2)"
        js_setApplicationCacheOriginQuota :: Internals -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setApplicationCacheOriginQuota Mozilla Internals.setApplicationCacheOriginQuota documentation> 
setApplicationCacheOriginQuota ::
                               (MonadIO m) => Internals -> Word64 -> m ()
setApplicationCacheOriginQuota self quota
  = liftIO
      (js_setApplicationCacheOriginQuota (self) (fromIntegral quota))
 
foreign import javascript unsafe
        "$1[\"registerURLSchemeAsBypassingContentSecurityPolicy\"]($2)"
        js_registerURLSchemeAsBypassingContentSecurityPolicy ::
        Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.registerURLSchemeAsBypassingContentSecurityPolicy Mozilla Internals.registerURLSchemeAsBypassingContentSecurityPolicy documentation> 
registerURLSchemeAsBypassingContentSecurityPolicy ::
                                                  (MonadIO m, ToJSString scheme) =>
                                                    Internals -> scheme -> m ()
registerURLSchemeAsBypassingContentSecurityPolicy self scheme
  = liftIO
      (js_registerURLSchemeAsBypassingContentSecurityPolicy (self)
         (toJSString scheme))
 
foreign import javascript unsafe
        "$1[\"removeURLSchemeRegisteredAsBypassingContentSecurityPolicy\"]($2)"
        js_removeURLSchemeRegisteredAsBypassingContentSecurityPolicy ::
        Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.removeURLSchemeRegisteredAsBypassingContentSecurityPolicy Mozilla Internals.removeURLSchemeRegisteredAsBypassingContentSecurityPolicy documentation> 
removeURLSchemeRegisteredAsBypassingContentSecurityPolicy ::
                                                          (MonadIO m, ToJSString scheme) =>
                                                            Internals -> scheme -> m ()
removeURLSchemeRegisteredAsBypassingContentSecurityPolicy self
  scheme
  = liftIO
      (js_removeURLSchemeRegisteredAsBypassingContentSecurityPolicy
         (self)
         (toJSString scheme))
 
foreign import javascript unsafe "$1[\"mallocStatistics\"]()"
        js_mallocStatistics :: Internals -> IO (Nullable MallocStatistics)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
mallocStatistics ::
                 (MonadIO m) => Internals -> m (Maybe MallocStatistics)
mallocStatistics self
  = liftIO (nullableToMaybe <$> (js_mallocStatistics (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
mallocStatistics_ :: (MonadIO m) => Internals -> m ()
mallocStatistics_ self = liftIO (void (js_mallocStatistics (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
mallocStatisticsUnsafe ::
                       (MonadIO m, HasCallStack) => Internals -> m MallocStatistics
mallocStatisticsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_mallocStatistics (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
mallocStatisticsUnchecked ::
                          (MonadIO m) => Internals -> m MallocStatistics
mallocStatisticsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_mallocStatistics (self)))
 
foreign import javascript unsafe "$1[\"typeConversions\"]()"
        js_typeConversions :: Internals -> IO (Nullable TypeConversions)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversions ::
                (MonadIO m) => Internals -> m (Maybe TypeConversions)
typeConversions self
  = liftIO (nullableToMaybe <$> (js_typeConversions (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversions_ :: (MonadIO m) => Internals -> m ()
typeConversions_ self = liftIO (void (js_typeConversions (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversionsUnsafe ::
                      (MonadIO m, HasCallStack) => Internals -> m TypeConversions
typeConversionsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_typeConversions (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
typeConversionsUnchecked ::
                         (MonadIO m) => Internals -> m TypeConversions
typeConversionsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_typeConversions (self)))
 
foreign import javascript unsafe "$1[\"memoryInfo\"]()"
        js_memoryInfo :: Internals -> IO (Nullable MemoryInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfo :: (MonadIO m) => Internals -> m (Maybe MemoryInfo)
memoryInfo self
  = liftIO (nullableToMaybe <$> (js_memoryInfo (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfo_ :: (MonadIO m) => Internals -> m ()
memoryInfo_ self = liftIO (void (js_memoryInfo (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfoUnsafe ::
                 (MonadIO m, HasCallStack) => Internals -> m MemoryInfo
memoryInfoUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_memoryInfo (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
memoryInfoUnchecked :: (MonadIO m) => Internals -> m MemoryInfo
memoryInfoUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_memoryInfo (self)))
 
foreign import javascript unsafe "$1[\"getReferencedFilePaths\"]()"
        js_getReferencedFilePaths :: Internals -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getReferencedFilePaths Mozilla Internals.getReferencedFilePaths documentation> 
getReferencedFilePaths ::
                       (MonadIO m, FromJSString result) => Internals -> m [result]
getReferencedFilePaths self
  = liftIO
      ((js_getReferencedFilePaths (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getReferencedFilePaths Mozilla Internals.getReferencedFilePaths documentation> 
getReferencedFilePaths_ :: (MonadIO m) => Internals -> m ()
getReferencedFilePaths_ self
  = liftIO (void (js_getReferencedFilePaths (self)))
 
foreign import javascript unsafe "$1[\"startTrackingRepaints\"]()"
        js_startTrackingRepaints :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.startTrackingRepaints Mozilla Internals.startTrackingRepaints documentation> 
startTrackingRepaints :: (MonadIO m) => Internals -> m ()
startTrackingRepaints self
  = liftIO (js_startTrackingRepaints (self))
 
foreign import javascript unsafe "$1[\"stopTrackingRepaints\"]()"
        js_stopTrackingRepaints :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.stopTrackingRepaints Mozilla Internals.stopTrackingRepaints documentation> 
stopTrackingRepaints :: (MonadIO m) => Internals -> m ()
stopTrackingRepaints self = liftIO (js_stopTrackingRepaints (self))
 
foreign import javascript unsafe
        "($1[\"isTimerThrottled\"]($2) ? 1 : 0)" js_isTimerThrottled ::
        Internals -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isTimerThrottled Mozilla Internals.isTimerThrottled documentation> 
isTimerThrottled :: (MonadIO m) => Internals -> Int -> m Bool
isTimerThrottled self timerHandle
  = liftIO (js_isTimerThrottled (self) timerHandle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isTimerThrottled Mozilla Internals.isTimerThrottled documentation> 
isTimerThrottled_ :: (MonadIO m) => Internals -> Int -> m ()
isTimerThrottled_ self timerHandle
  = liftIO (void (js_isTimerThrottled (self) timerHandle))
 
foreign import javascript unsafe
        "$1[\"updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks\"]($2)"
        js_updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks ::
        Internals -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks Mozilla Internals.updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks documentation> 
updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks ::
                                                          (MonadIO m, IsNode node) =>
                                                            Internals -> Maybe node -> m ()
updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks self node
  = liftIO
      (js_updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks
         (self)
         (maybeToNullable (fmap toNode node)))
 
foreign import javascript unsafe "$1[\"getCurrentCursorInfo\"]()"
        js_getCurrentCursorInfo :: Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getCurrentCursorInfo Mozilla Internals.getCurrentCursorInfo documentation> 
getCurrentCursorInfo ::
                     (MonadIO m, FromJSString result) => Internals -> m result
getCurrentCursorInfo self
  = liftIO (fromJSString <$> (js_getCurrentCursorInfo (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getCurrentCursorInfo Mozilla Internals.getCurrentCursorInfo documentation> 
getCurrentCursorInfo_ :: (MonadIO m) => Internals -> m ()
getCurrentCursorInfo_ self
  = liftIO (void (js_getCurrentCursorInfo (self)))
 
foreign import javascript unsafe
        "$1[\"markerTextForListItem\"]($2)" js_markerTextForListItem ::
        Internals -> Nullable Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerTextForListItem Mozilla Internals.markerTextForListItem documentation> 
markerTextForListItem ::
                      (MonadIO m, IsElement element, FromJSString result) =>
                        Internals -> Maybe element -> m result
markerTextForListItem self element
  = liftIO
      (fromJSString <$>
         (js_markerTextForListItem (self)
            (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerTextForListItem Mozilla Internals.markerTextForListItem documentation> 
markerTextForListItem_ ::
                       (MonadIO m, IsElement element) =>
                         Internals -> Maybe element -> m ()
markerTextForListItem_ self element
  = liftIO
      (void
         (js_markerTextForListItem (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe "$1[\"toolTipFromElement\"]($2)"
        js_toolTipFromElement ::
        Internals -> Nullable Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toolTipFromElement Mozilla Internals.toolTipFromElement documentation> 
toolTipFromElement ::
                   (MonadIO m, IsElement element, FromJSString result) =>
                     Internals -> Maybe element -> m result
toolTipFromElement self element
  = liftIO
      (fromJSString <$>
         (js_toolTipFromElement (self)
            (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toolTipFromElement Mozilla Internals.toolTipFromElement documentation> 
toolTipFromElement_ ::
                    (MonadIO m, IsElement element) =>
                      Internals -> Maybe element -> m ()
toolTipFromElement_ self element
  = liftIO
      (void
         (js_toolTipFromElement (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe "$1[\"deserializeBuffer\"]($2)"
        js_deserializeBuffer ::
        Internals ->
          Nullable ArrayBuffer -> IO (Nullable SerializedScriptValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBuffer ::
                  (MonadIO m, IsArrayBuffer buffer) =>
                    Internals -> Maybe buffer -> m (Maybe SerializedScriptValue)
deserializeBuffer self buffer
  = liftIO
      (nullableToMaybe <$>
         (js_deserializeBuffer (self)
            (maybeToNullable (fmap toArrayBuffer buffer))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBuffer_ ::
                   (MonadIO m, IsArrayBuffer buffer) =>
                     Internals -> Maybe buffer -> m ()
deserializeBuffer_ self buffer
  = liftIO
      (void
         (js_deserializeBuffer (self)
            (maybeToNullable (fmap toArrayBuffer buffer))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBufferUnsafe ::
                        (MonadIO m, IsArrayBuffer buffer, HasCallStack) =>
                          Internals -> Maybe buffer -> m SerializedScriptValue
deserializeBufferUnsafe self buffer
  = liftIO
      ((nullableToMaybe <$>
          (js_deserializeBuffer (self)
             (maybeToNullable (fmap toArrayBuffer buffer))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
deserializeBufferUnchecked ::
                           (MonadIO m, IsArrayBuffer buffer) =>
                             Internals -> Maybe buffer -> m SerializedScriptValue
deserializeBufferUnchecked self buffer
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_deserializeBuffer (self)
            (maybeToNullable (fmap toArrayBuffer buffer))))
 
foreign import javascript unsafe "$1[\"serializeObject\"]($2)"
        js_serializeObject ::
        Internals ->
          Nullable SerializedScriptValue -> IO (Nullable ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObject ::
                (MonadIO m, IsSerializedScriptValue obj) =>
                  Internals -> Maybe obj -> m (Maybe ArrayBuffer)
serializeObject self obj
  = liftIO
      (nullableToMaybe <$>
         (js_serializeObject (self)
            (maybeToNullable (fmap toSerializedScriptValue obj))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObject_ ::
                 (MonadIO m, IsSerializedScriptValue obj) =>
                   Internals -> Maybe obj -> m ()
serializeObject_ self obj
  = liftIO
      (void
         (js_serializeObject (self)
            (maybeToNullable (fmap toSerializedScriptValue obj))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObjectUnsafe ::
                      (MonadIO m, IsSerializedScriptValue obj, HasCallStack) =>
                        Internals -> Maybe obj -> m ArrayBuffer
serializeObjectUnsafe self obj
  = liftIO
      ((nullableToMaybe <$>
          (js_serializeObject (self)
             (maybeToNullable (fmap toSerializedScriptValue obj))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
serializeObjectUnchecked ::
                         (MonadIO m, IsSerializedScriptValue obj) =>
                           Internals -> Maybe obj -> m ArrayBuffer
serializeObjectUnchecked self obj
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_serializeObject (self)
            (maybeToNullable (fmap toSerializedScriptValue obj))))
 
foreign import javascript unsafe
        "$1[\"setUsesOverlayScrollbars\"]($2)" js_setUsesOverlayScrollbars
        :: Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setUsesOverlayScrollbars Mozilla Internals.setUsesOverlayScrollbars documentation> 
setUsesOverlayScrollbars ::
                         (MonadIO m) => Internals -> Bool -> m ()
setUsesOverlayScrollbars self enabled
  = liftIO (js_setUsesOverlayScrollbars (self) enabled)
 
foreign import javascript unsafe "$1[\"forceReload\"]($2)"
        js_forceReload :: Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.forceReload Mozilla Internals.forceReload documentation> 
forceReload :: (MonadIO m) => Internals -> Bool -> m ()
forceReload self endToEnd = liftIO (js_forceReload (self) endToEnd)
 
foreign import javascript unsafe
        "$1[\"simulateAudioInterruption\"]($2)"
        js_simulateAudioInterruption :: Internals -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateAudioInterruption Mozilla Internals.simulateAudioInterruption documentation> 
simulateAudioInterruption ::
                          (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
simulateAudioInterruption self node
  = liftIO
      (js_simulateAudioInterruption (self)
         (maybeToNullable (fmap toNode node)))
 
foreign import javascript unsafe
        "($1[\"mediaElementHasCharacteristic\"]($2,\n$3) ? 1 : 0)"
        js_mediaElementHasCharacteristic ::
        Internals -> Nullable Node -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mediaElementHasCharacteristic Mozilla Internals.mediaElementHasCharacteristic documentation> 
mediaElementHasCharacteristic ::
                              (MonadIO m, IsNode node, ToJSString characteristic) =>
                                Internals -> Maybe node -> characteristic -> m Bool
mediaElementHasCharacteristic self node characteristic
  = liftIO
      (js_mediaElementHasCharacteristic (self)
         (maybeToNullable (fmap toNode node))
         (toJSString characteristic))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mediaElementHasCharacteristic Mozilla Internals.mediaElementHasCharacteristic documentation> 
mediaElementHasCharacteristic_ ::
                               (MonadIO m, IsNode node, ToJSString characteristic) =>
                                 Internals -> Maybe node -> characteristic -> m ()
mediaElementHasCharacteristic_ self node characteristic
  = liftIO
      (void
         (js_mediaElementHasCharacteristic (self)
            (maybeToNullable (fmap toNode node))
            (toJSString characteristic)))
 
foreign import javascript unsafe "$1[\"initializeMockCDM\"]()"
        js_initializeMockCDM :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockCDM Mozilla Internals.initializeMockCDM documentation> 
initializeMockCDM :: (MonadIO m) => Internals -> m ()
initializeMockCDM self = liftIO (js_initializeMockCDM (self))
 
foreign import javascript unsafe
        "$1[\"enableMockSpeechSynthesizer\"]()"
        js_enableMockSpeechSynthesizer :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.enableMockSpeechSynthesizer Mozilla Internals.enableMockSpeechSynthesizer documentation> 
enableMockSpeechSynthesizer :: (MonadIO m) => Internals -> m ()
enableMockSpeechSynthesizer self
  = liftIO (js_enableMockSpeechSynthesizer (self))
 
foreign import javascript unsafe "$1[\"getImageSourceURL\"]($2)"
        js_getImageSourceURL ::
        Internals -> Nullable Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getImageSourceURL Mozilla Internals.getImageSourceURL documentation> 
getImageSourceURL ::
                  (MonadIO m, IsElement element, FromJSString result) =>
                    Internals -> Maybe element -> m result
getImageSourceURL self element
  = liftIO
      (fromJSString <$>
         (js_getImageSourceURL (self)
            (maybeToNullable (fmap toElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.getImageSourceURL Mozilla Internals.getImageSourceURL documentation> 
getImageSourceURL_ ::
                   (MonadIO m, IsElement element) =>
                     Internals -> Maybe element -> m ()
getImageSourceURL_ self element
  = liftIO
      (void
         (js_getImageSourceURL (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "$1[\"captionsStyleSheetOverride\"]()"
        js_captionsStyleSheetOverride :: Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
captionsStyleSheetOverride ::
                           (MonadIO m, FromJSString result) => Internals -> m result
captionsStyleSheetOverride self
  = liftIO (fromJSString <$> (js_captionsStyleSheetOverride (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
captionsStyleSheetOverride_ :: (MonadIO m) => Internals -> m ()
captionsStyleSheetOverride_ self
  = liftIO (void (js_captionsStyleSheetOverride (self)))
 
foreign import javascript unsafe
        "$1[\"setCaptionsStyleSheetOverride\"]($2)"
        js_setCaptionsStyleSheetOverride :: Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setCaptionsStyleSheetOverride Mozilla Internals.setCaptionsStyleSheetOverride documentation> 
setCaptionsStyleSheetOverride ::
                              (MonadIO m, ToJSString override) => Internals -> override -> m ()
setCaptionsStyleSheetOverride self override
  = liftIO
      (js_setCaptionsStyleSheetOverride (self) (toJSString override))
 
foreign import javascript unsafe
        "$1[\"setPrimaryAudioTrackLanguageOverride\"]($2)"
        js_setPrimaryAudioTrackLanguageOverride ::
        Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPrimaryAudioTrackLanguageOverride Mozilla Internals.setPrimaryAudioTrackLanguageOverride documentation> 
setPrimaryAudioTrackLanguageOverride ::
                                     (MonadIO m, ToJSString language) =>
                                       Internals -> language -> m ()
setPrimaryAudioTrackLanguageOverride self language
  = liftIO
      (js_setPrimaryAudioTrackLanguageOverride (self)
         (toJSString language))
 
foreign import javascript unsafe
        "$1[\"setCaptionDisplayMode\"]($2)" js_setCaptionDisplayMode ::
        Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setCaptionDisplayMode Mozilla Internals.setCaptionDisplayMode documentation> 
setCaptionDisplayMode ::
                      (MonadIO m, ToJSString mode) => Internals -> mode -> m ()
setCaptionDisplayMode self mode
  = liftIO (js_setCaptionDisplayMode (self) (toJSString mode))
 
foreign import javascript unsafe "$1[\"createTimeRanges\"]($2, $3)"
        js_createTimeRanges ::
        Internals ->
          Nullable Float32Array ->
            Nullable Float32Array -> IO (Nullable TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
createTimeRanges ::
                 (MonadIO m, IsFloat32Array startTimes, IsFloat32Array endTimes) =>
                   Internals ->
                     Maybe startTimes -> Maybe endTimes -> m (Maybe TimeRanges)
createTimeRanges self startTimes endTimes
  = liftIO
      (nullableToMaybe <$>
         (js_createTimeRanges (self)
            (maybeToNullable (fmap toFloat32Array startTimes))
            (maybeToNullable (fmap toFloat32Array endTimes))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
createTimeRanges_ ::
                  (MonadIO m, IsFloat32Array startTimes, IsFloat32Array endTimes) =>
                    Internals -> Maybe startTimes -> Maybe endTimes -> m ()
createTimeRanges_ self startTimes endTimes
  = liftIO
      (void
         (js_createTimeRanges (self)
            (maybeToNullable (fmap toFloat32Array startTimes))
            (maybeToNullable (fmap toFloat32Array endTimes))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
createTimeRangesUnsafe ::
                       (MonadIO m, IsFloat32Array startTimes, IsFloat32Array endTimes,
                        HasCallStack) =>
                         Internals -> Maybe startTimes -> Maybe endTimes -> m TimeRanges
createTimeRangesUnsafe self startTimes endTimes
  = liftIO
      ((nullableToMaybe <$>
          (js_createTimeRanges (self)
             (maybeToNullable (fmap toFloat32Array startTimes))
             (maybeToNullable (fmap toFloat32Array endTimes))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
createTimeRangesUnchecked ::
                          (MonadIO m, IsFloat32Array startTimes, IsFloat32Array endTimes) =>
                            Internals -> Maybe startTimes -> Maybe endTimes -> m TimeRanges
createTimeRangesUnchecked self startTimes endTimes
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createTimeRanges (self)
            (maybeToNullable (fmap toFloat32Array startTimes))
            (maybeToNullable (fmap toFloat32Array endTimes))))
 
foreign import javascript unsafe
        "$1[\"closestTimeToTimeRanges\"]($2,\n$3)"
        js_closestTimeToTimeRanges ::
        Internals -> Double -> Nullable TimeRanges -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closestTimeToTimeRanges Mozilla Internals.closestTimeToTimeRanges documentation> 
closestTimeToTimeRanges ::
                        (MonadIO m) => Internals -> Double -> Maybe TimeRanges -> m Double
closestTimeToTimeRanges self time ranges
  = liftIO
      (js_closestTimeToTimeRanges (self) time (maybeToNullable ranges))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closestTimeToTimeRanges Mozilla Internals.closestTimeToTimeRanges documentation> 
closestTimeToTimeRanges_ ::
                         (MonadIO m) => Internals -> Double -> Maybe TimeRanges -> m ()
closestTimeToTimeRanges_ self time ranges
  = liftIO
      (void
         (js_closestTimeToTimeRanges (self) time (maybeToNullable ranges)))
 
foreign import javascript unsafe
        "($1[\"isSelectPopupVisible\"]($2) ? 1 : 0)"
        js_isSelectPopupVisible :: Internals -> Nullable Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isSelectPopupVisible Mozilla Internals.isSelectPopupVisible documentation> 
isSelectPopupVisible ::
                     (MonadIO m, IsNode node) => Internals -> Maybe node -> m Bool
isSelectPopupVisible self node
  = liftIO
      (js_isSelectPopupVisible (self)
         (maybeToNullable (fmap toNode node)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isSelectPopupVisible Mozilla Internals.isSelectPopupVisible documentation> 
isSelectPopupVisible_ ::
                      (MonadIO m, IsNode node) => Internals -> Maybe node -> m ()
isSelectPopupVisible_ self node
  = liftIO
      (void
         (js_isSelectPopupVisible (self)
            (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe "($1[\"isVibrating\"]() ? 1 : 0)"
        js_isVibrating :: Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isVibrating Mozilla Internals.isVibrating documentation> 
isVibrating :: (MonadIO m) => Internals -> m Bool
isVibrating self = liftIO (js_isVibrating (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isVibrating Mozilla Internals.isVibrating documentation> 
isVibrating_ :: (MonadIO m) => Internals -> m ()
isVibrating_ self = liftIO (void (js_isVibrating (self)))
 
foreign import javascript unsafe
        "($1[\"isPluginUnavailabilityIndicatorObscured\"]($2) ? 1 : 0)"
        js_isPluginUnavailabilityIndicatorObscured ::
        Internals -> Nullable Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginUnavailabilityIndicatorObscured Mozilla Internals.isPluginUnavailabilityIndicatorObscured documentation> 
isPluginUnavailabilityIndicatorObscured ::
                                        (MonadIO m, IsElement element) =>
                                          Internals -> Maybe element -> m Bool
isPluginUnavailabilityIndicatorObscured self element
  = liftIO
      (js_isPluginUnavailabilityIndicatorObscured (self)
         (maybeToNullable (fmap toElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginUnavailabilityIndicatorObscured Mozilla Internals.isPluginUnavailabilityIndicatorObscured documentation> 
isPluginUnavailabilityIndicatorObscured_ ::
                                         (MonadIO m, IsElement element) =>
                                           Internals -> Maybe element -> m ()
isPluginUnavailabilityIndicatorObscured_ self element
  = liftIO
      (void
         (js_isPluginUnavailabilityIndicatorObscured (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "($1[\"isPluginSnapshotted\"]($2) ? 1 : 0)" js_isPluginSnapshotted
        :: Internals -> Nullable Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginSnapshotted Mozilla Internals.isPluginSnapshotted documentation> 
isPluginSnapshotted ::
                    (MonadIO m, IsElement element) =>
                      Internals -> Maybe element -> m Bool
isPluginSnapshotted self element
  = liftIO
      (js_isPluginSnapshotted (self)
         (maybeToNullable (fmap toElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginSnapshotted Mozilla Internals.isPluginSnapshotted documentation> 
isPluginSnapshotted_ ::
                     (MonadIO m, IsElement element) =>
                       Internals -> Maybe element -> m ()
isPluginSnapshotted_ self element
  = liftIO
      (void
         (js_isPluginSnapshotted (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe "$1[\"selectionBounds\"]()"
        js_selectionBounds :: Internals -> IO (Nullable ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBounds :: (MonadIO m) => Internals -> m (Maybe ClientRect)
selectionBounds self
  = liftIO (nullableToMaybe <$> (js_selectionBounds (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBounds_ :: (MonadIO m) => Internals -> m ()
selectionBounds_ self = liftIO (void (js_selectionBounds (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBoundsUnsafe ::
                      (MonadIO m, HasCallStack) => Internals -> m ClientRect
selectionBoundsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_selectionBounds (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
selectionBoundsUnchecked ::
                         (MonadIO m) => Internals -> m ClientRect
selectionBoundsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_selectionBounds (self)))
 
foreign import javascript unsafe
        "$1[\"initializeMockMediaSource\"]()" js_initializeMockMediaSource
        :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockMediaSource Mozilla Internals.initializeMockMediaSource documentation> 
initializeMockMediaSource :: (MonadIO m) => Internals -> m ()
initializeMockMediaSource self
  = liftIO (js_initializeMockMediaSource (self))
 
foreign import javascript unsafe
        "$1[\"bufferedSamplesForTrackID\"]($2,\n$3)"
        js_bufferedSamplesForTrackID ::
        Internals -> Nullable SourceBuffer -> JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.bufferedSamplesForTrackID Mozilla Internals.bufferedSamplesForTrackID documentation> 
bufferedSamplesForTrackID ::
                          (MonadIO m, ToJSString trackID, FromJSString result) =>
                            Internals -> Maybe SourceBuffer -> trackID -> m [result]
bufferedSamplesForTrackID self buffer trackID
  = liftIO
      ((js_bufferedSamplesForTrackID (self) (maybeToNullable buffer)
          (toJSString trackID))
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.bufferedSamplesForTrackID Mozilla Internals.bufferedSamplesForTrackID documentation> 
bufferedSamplesForTrackID_ ::
                           (MonadIO m, ToJSString trackID) =>
                             Internals -> Maybe SourceBuffer -> trackID -> m ()
bufferedSamplesForTrackID_ self buffer trackID
  = liftIO
      (void
         (js_bufferedSamplesForTrackID (self) (maybeToNullable buffer)
            (toJSString trackID)))
 
foreign import javascript unsafe
        "$1[\"beginMediaSessionInterruption\"]()"
        js_beginMediaSessionInterruption :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.beginMediaSessionInterruption Mozilla Internals.beginMediaSessionInterruption documentation> 
beginMediaSessionInterruption :: (MonadIO m) => Internals -> m ()
beginMediaSessionInterruption self
  = liftIO (js_beginMediaSessionInterruption (self))
 
foreign import javascript unsafe
        "$1[\"endMediaSessionInterruption\"]($2)"
        js_endMediaSessionInterruption :: Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.endMediaSessionInterruption Mozilla Internals.endMediaSessionInterruption documentation> 
endMediaSessionInterruption ::
                            (MonadIO m, ToJSString flags) => Internals -> flags -> m ()
endMediaSessionInterruption self flags
  = liftIO (js_endMediaSessionInterruption (self) (toJSString flags))
 
foreign import javascript unsafe
        "$1[\"applicationWillEnterForeground\"]()"
        js_applicationWillEnterForeground :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterForeground Mozilla Internals.applicationWillEnterForeground documentation> 
applicationWillEnterForeground :: (MonadIO m) => Internals -> m ()
applicationWillEnterForeground self
  = liftIO (js_applicationWillEnterForeground (self))
 
foreign import javascript unsafe
        "$1[\"applicationWillEnterBackground\"]()"
        js_applicationWillEnterBackground :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterBackground Mozilla Internals.applicationWillEnterBackground documentation> 
applicationWillEnterBackground :: (MonadIO m) => Internals -> m ()
applicationWillEnterBackground self
  = liftIO (js_applicationWillEnterBackground (self))
 
foreign import javascript unsafe
        "$1[\"setMediaSessionRestrictions\"]($2,\n$3)"
        js_setMediaSessionRestrictions ::
        Internals -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setMediaSessionRestrictions Mozilla Internals.setMediaSessionRestrictions documentation> 
setMediaSessionRestrictions ::
                            (MonadIO m, ToJSString mediaType, ToJSString restrictions) =>
                              Internals -> mediaType -> restrictions -> m ()
setMediaSessionRestrictions self mediaType restrictions
  = liftIO
      (js_setMediaSessionRestrictions (self) (toJSString mediaType)
         (toJSString restrictions))
 
foreign import javascript unsafe
        "$1[\"postRemoteControlCommand\"]($2)" js_postRemoteControlCommand
        :: Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.postRemoteControlCommand Mozilla Internals.postRemoteControlCommand documentation> 
postRemoteControlCommand ::
                         (MonadIO m, ToJSString command) => Internals -> command -> m ()
postRemoteControlCommand self command
  = liftIO (js_postRemoteControlCommand (self) (toJSString command))
 
foreign import javascript unsafe "$1[\"simulateSystemSleep\"]()"
        js_simulateSystemSleep :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemSleep Mozilla Internals.simulateSystemSleep documentation> 
simulateSystemSleep :: (MonadIO m) => Internals -> m ()
simulateSystemSleep self = liftIO (js_simulateSystemSleep (self))
 
foreign import javascript unsafe "$1[\"simulateSystemWake\"]()"
        js_simulateSystemWake :: Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemWake Mozilla Internals.simulateSystemWake documentation> 
simulateSystemWake :: (MonadIO m) => Internals -> m ()
simulateSystemWake self = liftIO (js_simulateSystemWake (self))
 
foreign import javascript unsafe
        "($1[\"elementIsBlockingDisplaySleep\"]($2) ? 1 : 0)"
        js_elementIsBlockingDisplaySleep ::
        Internals -> Nullable Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementIsBlockingDisplaySleep Mozilla Internals.elementIsBlockingDisplaySleep documentation> 
elementIsBlockingDisplaySleep ::
                              (MonadIO m, IsElement element) =>
                                Internals -> Maybe element -> m Bool
elementIsBlockingDisplaySleep self element
  = liftIO
      (js_elementIsBlockingDisplaySleep (self)
         (maybeToNullable (fmap toElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementIsBlockingDisplaySleep Mozilla Internals.elementIsBlockingDisplaySleep documentation> 
elementIsBlockingDisplaySleep_ ::
                               (MonadIO m, IsElement element) =>
                                 Internals -> Maybe element -> m ()
elementIsBlockingDisplaySleep_ self element
  = liftIO
      (void
         (js_elementIsBlockingDisplaySleep (self)
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "$1[\"installMockPageOverlay\"]($2)" js_installMockPageOverlay ::
        Internals -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.installMockPageOverlay Mozilla Internals.installMockPageOverlay documentation> 
installMockPageOverlay ::
                       (MonadIO m) => Internals -> PageOverlayType -> m ()
installMockPageOverlay self type'
  = liftIO (js_installMockPageOverlay (self) (pToJSVal type'))
 
foreign import javascript unsafe
        "$1[\"pageOverlayLayerTreeAsText\"]()"
        js_pageOverlayLayerTreeAsText :: Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageOverlayLayerTreeAsText Mozilla Internals.pageOverlayLayerTreeAsText documentation> 
pageOverlayLayerTreeAsText ::
                           (MonadIO m, FromJSString result) => Internals -> m result
pageOverlayLayerTreeAsText self
  = liftIO (fromJSString <$> (js_pageOverlayLayerTreeAsText (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageOverlayLayerTreeAsText Mozilla Internals.pageOverlayLayerTreeAsText documentation> 
pageOverlayLayerTreeAsText_ :: (MonadIO m) => Internals -> m ()
pageOverlayLayerTreeAsText_ self
  = liftIO (void (js_pageOverlayLayerTreeAsText (self)))
 
foreign import javascript unsafe "$1[\"setPageMuted\"]($2)"
        js_setPageMuted :: Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.setPageMuted Mozilla Internals.setPageMuted documentation> 
setPageMuted :: (MonadIO m) => Internals -> Bool -> m ()
setPageMuted self muted = liftIO (js_setPageMuted (self) muted)
 
foreign import javascript unsafe
        "($1[\"isPagePlayingAudio\"]() ? 1 : 0)" js_isPagePlayingAudio ::
        Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPagePlayingAudio Mozilla Internals.isPagePlayingAudio documentation> 
isPagePlayingAudio :: (MonadIO m) => Internals -> m Bool
isPagePlayingAudio self = liftIO (js_isPagePlayingAudio (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPagePlayingAudio Mozilla Internals.isPagePlayingAudio documentation> 
isPagePlayingAudio_ :: (MonadIO m) => Internals -> m ()
isPagePlayingAudio_ self
  = liftIO (void (js_isPagePlayingAudio (self)))
pattern LAYER_TREE_INCLUDES_VISIBLE_RECTS = 1
pattern LAYER_TREE_INCLUDES_TILE_CACHES = 2
pattern LAYER_TREE_INCLUDES_REPAINT_RECTS = 4
pattern LAYER_TREE_INCLUDES_PAINTING_PHASES = 8
pattern LAYER_TREE_INCLUDES_CONTENT_LAYERS = 16
 
foreign import javascript unsafe "$1[\"settings\"]" js_getSettings
        :: Internals -> IO (Nullable InternalSettings)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.settings Mozilla Internals.settings documentation> 
getSettings ::
            (MonadIO m) => Internals -> m (Maybe InternalSettings)
getSettings self
  = liftIO (nullableToMaybe <$> (js_getSettings (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.settings Mozilla Internals.settings documentation> 
getSettingsUnsafe ::
                  (MonadIO m, HasCallStack) => Internals -> m InternalSettings
getSettingsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSettings (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.settings Mozilla Internals.settings documentation> 
getSettingsUnchecked ::
                     (MonadIO m) => Internals -> m InternalSettings
getSettingsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getSettings (self)))
 
foreign import javascript unsafe "$1[\"workerThreadCount\"]"
        js_getWorkerThreadCount :: Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.workerThreadCount Mozilla Internals.workerThreadCount documentation> 
getWorkerThreadCount :: (MonadIO m) => Internals -> m Word
getWorkerThreadCount self = liftIO (js_getWorkerThreadCount (self))
 
foreign import javascript unsafe "$1[\"consoleProfiles\"]"
        js_getConsoleProfiles :: Internals -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleProfiles Mozilla Internals.consoleProfiles documentation> 
getConsoleProfiles ::
                   (MonadIO m) => Internals -> m [Maybe ScriptProfile]
getConsoleProfiles self
  = liftIO ((js_getConsoleProfiles (self)) >>= fromJSValUnchecked)