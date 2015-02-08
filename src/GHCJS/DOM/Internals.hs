{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Internals
       (ghcjs_dom_internals_address, internalsAddress,
        ghcjs_dom_internals_node_needs_style_recalc,
        internalsNodeNeedsStyleRecalc, ghcjs_dom_internals_description,
        internalsDescription,
        ghcjs_dom_internals_element_render_tree_as_text,
        internalsElementRenderTreeAsText, ghcjs_dom_internals_is_preloaded,
        internalsIsPreloaded,
        ghcjs_dom_internals_is_loading_from_memory_cache,
        internalsIsLoadingFromMemoryCache,
        ghcjs_dom_internals_computed_style_including_visited_info,
        internalsComputedStyleIncludingVisitedInfo,
        ghcjs_dom_internals_ensure_shadow_root, internalsEnsureShadowRoot,
        ghcjs_dom_internals_create_shadow_root, internalsCreateShadowRoot,
        ghcjs_dom_internals_shadow_root, internalsShadowRoot,
        ghcjs_dom_internals_shadow_root_type, internalsShadowRootType,
        ghcjs_dom_internals_includer_for, internalsIncluderFor,
        ghcjs_dom_internals_shadow_pseudo_id, internalsShadowPseudoId,
        ghcjs_dom_internals_set_shadow_pseudo_id,
        internalsSetShadowPseudoId,
        ghcjs_dom_internals_tree_scope_root_node,
        internalsTreeScopeRootNode, ghcjs_dom_internals_parent_tree_scope,
        internalsParentTreeScope,
        ghcjs_dom_internals_last_spatial_navigation_candidate_count,
        internalsLastSpatialNavigationCandidateCount,
        ghcjs_dom_internals_number_of_active_animations,
        internalsNumberOfActiveAnimations,
        ghcjs_dom_internals_suspend_animations, internalsSuspendAnimations,
        ghcjs_dom_internals_resume_animations, internalsResumeAnimations,
        ghcjs_dom_internals_animations_are_suspended,
        internalsAnimationsAreSuspended,
        ghcjs_dom_internals_pause_animation_at_time_on_element,
        internalsPauseAnimationAtTimeOnElement,
        ghcjs_dom_internals_pause_animation_at_time_on_pseudo_element,
        internalsPauseAnimationAtTimeOnPseudoElement,
        ghcjs_dom_internals_pause_transition_at_time_on_element,
        internalsPauseTransitionAtTimeOnElement,
        ghcjs_dom_internals_pause_transition_at_time_on_pseudo_element,
        internalsPauseTransitionAtTimeOnPseudoElement,
        ghcjs_dom_internals_attached, internalsAttached,
        ghcjs_dom_internals_visible_placeholder,
        internalsVisiblePlaceholder,
        ghcjs_dom_internals_select_color_in_color_chooser,
        internalsSelectColorInColorChooser,
        ghcjs_dom_internals_form_control_state_of_previous_history_item,
        internalsFormControlStateOfPreviousHistoryItem,
        ghcjs_dom_internals_set_form_control_state_of_previous_history_item,
        internalsSetFormControlStateOfPreviousHistoryItem,
        ghcjs_dom_internals_absolute_caret_bounds,
        internalsAbsoluteCaretBounds, ghcjs_dom_internals_bounding_box,
        internalsBoundingBox,
        ghcjs_dom_internals_inspector_highlight_rects,
        internalsInspectorHighlightRects,
        ghcjs_dom_internals_inspector_highlight_object,
        internalsInspectorHighlightObject,
        ghcjs_dom_internals_marker_count_for_node,
        internalsMarkerCountForNode,
        ghcjs_dom_internals_marker_range_for_node,
        internalsMarkerRangeForNode,
        ghcjs_dom_internals_marker_description_for_node,
        internalsMarkerDescriptionForNode,
        ghcjs_dom_internals_add_text_match_marker,
        internalsAddTextMatchMarker,
        ghcjs_dom_internals_set_marked_text_matches_are_highlighted,
        internalsSetMarkedTextMatchesAreHighlighted,
        ghcjs_dom_internals_invalidate_font_cache,
        internalsInvalidateFontCache,
        ghcjs_dom_internals_set_scroll_view_position,
        internalsSetScrollViewPosition, ghcjs_dom_internals_set_pagination,
        internalsSetPagination,
        ghcjs_dom_internals_configuration_for_viewport,
        internalsConfigurationForViewport,
        ghcjs_dom_internals_was_last_change_user_edit,
        internalsWasLastChangeUserEdit,
        ghcjs_dom_internals_element_should_auto_complete,
        internalsElementShouldAutoComplete,
        ghcjs_dom_internals_set_editing_value, internalsSetEditingValue,
        ghcjs_dom_internals_set_autofilled, internalsSetAutofilled,
        ghcjs_dom_internals_count_matches_for_text,
        internalsCountMatchesForText,
        ghcjs_dom_internals_paint_control_tints,
        internalsPaintControlTints,
        ghcjs_dom_internals_scroll_element_to_rect,
        internalsScrollElementToRect,
        ghcjs_dom_internals_range_from_location_and_length,
        internalsRangeFromLocationAndLength,
        ghcjs_dom_internals_location_from_range,
        internalsLocationFromRange, ghcjs_dom_internals_length_from_range,
        internalsLengthFromRange, ghcjs_dom_internals_range_as_text,
        internalsRangeAsText, ghcjs_dom_internals_set_delegates_scrolling,
        internalsSetDelegatesScrolling,
        ghcjs_dom_internals_last_spell_check_request_sequence,
        internalsLastSpellCheckRequestSequence,
        ghcjs_dom_internals_last_spell_check_processed_sequence,
        internalsLastSpellCheckProcessedSequence,
        ghcjs_dom_internals_user_preferred_languages,
        internalsUserPreferredLanguages,
        ghcjs_dom_internals_set_user_preferred_languages,
        internalsSetUserPreferredLanguages,
        ghcjs_dom_internals_wheel_event_handler_count,
        internalsWheelEventHandlerCount,
        ghcjs_dom_internals_touch_event_handler_count,
        internalsTouchEventHandlerCount,
        ghcjs_dom_internals_nodes_from_rect, internalsNodesFromRect,
        ghcjs_dom_internals_parser_meta_data, internalsParserMetaData,
        ghcjs_dom_internals_update_editor_ui_now_if_scheduled,
        internalsUpdateEditorUINowIfScheduled,
        ghcjs_dom_internals_has_spelling_marker,
        internalsHasSpellingMarker, ghcjs_dom_internals_has_grammar_marker,
        internalsHasGrammarMarker,
        ghcjs_dom_internals_has_autocorrected_marker,
        internalsHasAutocorrectedMarker,
        ghcjs_dom_internals_set_continuous_spell_checking_enabled,
        internalsSetContinuousSpellCheckingEnabled,
        ghcjs_dom_internals_set_automatic_quote_substitution_enabled,
        internalsSetAutomaticQuoteSubstitutionEnabled,
        ghcjs_dom_internals_set_automatic_link_detection_enabled,
        internalsSetAutomaticLinkDetectionEnabled,
        ghcjs_dom_internals_set_automatic_dash_substitution_enabled,
        internalsSetAutomaticDashSubstitutionEnabled,
        ghcjs_dom_internals_set_automatic_text_replacement_enabled,
        internalsSetAutomaticTextReplacementEnabled,
        ghcjs_dom_internals_set_automatic_spelling_correction_enabled,
        internalsSetAutomaticSpellingCorrectionEnabled,
        ghcjs_dom_internals_is_overwrite_mode_enabled,
        internalsIsOverwriteModeEnabled,
        ghcjs_dom_internals_toggle_overwrite_mode_enabled,
        internalsToggleOverwriteModeEnabled,
        ghcjs_dom_internals_number_of_scrollable_areas,
        internalsNumberOfScrollableAreas,
        ghcjs_dom_internals_is_page_box_visible, internalsIsPageBoxVisible,
        ghcjs_dom_internals_layer_tree_as_text, internalsLayerTreeAsText,
        ghcjs_dom_internals_scrolling_state_tree_as_text,
        internalsScrollingStateTreeAsText,
        ghcjs_dom_internals_main_thread_scrolling_reasons,
        internalsMainThreadScrollingReasons,
        ghcjs_dom_internals_non_fast_scrollable_rects,
        internalsNonFastScrollableRects,
        ghcjs_dom_internals_repaint_rects_as_text,
        internalsRepaintRectsAsText,
        ghcjs_dom_internals_garbage_collect_document_resources,
        internalsGarbageCollectDocumentResources,
        ghcjs_dom_internals_allow_rounding_hacks,
        internalsAllowRoundingHacks, ghcjs_dom_internals_insert_author_css,
        internalsInsertAuthorCSS, ghcjs_dom_internals_insert_user_css,
        internalsInsertUserCSS, ghcjs_dom_internals_set_battery_status,
        internalsSetBatteryStatus,
        ghcjs_dom_internals_set_device_proximity,
        internalsSetDeviceProximity,
        ghcjs_dom_internals_number_of_live_nodes,
        internalsNumberOfLiveNodes,
        ghcjs_dom_internals_number_of_live_documents,
        internalsNumberOfLiveDocuments,
        ghcjs_dom_internals_console_message_argument_counts,
        internalsConsoleMessageArgumentCounts,
        ghcjs_dom_internals_open_dummy_inspector_frontend,
        internalsOpenDummyInspectorFrontend,
        ghcjs_dom_internals_close_dummy_inspector_frontend,
        internalsCloseDummyInspectorFrontend,
        ghcjs_dom_internals_set_java_script_profiling_enabled,
        internalsSetJavaScriptProfilingEnabled,
        ghcjs_dom_internals_set_inspector_is_under_test,
        internalsSetInspectorIsUnderTest,
        ghcjs_dom_internals_counter_value, internalsCounterValue,
        ghcjs_dom_internals_page_number, internalsPageNumber,
        ghcjs_dom_internals_shortcut_icon_ur_ls, internalsShortcutIconURLs,
        ghcjs_dom_internals_all_icon_ur_ls, internalsAllIconURLs,
        ghcjs_dom_internals_number_of_pages, internalsNumberOfPages,
        ghcjs_dom_internals_page_property, internalsPageProperty,
        ghcjs_dom_internals_page_size_and_margins_in_pixels,
        internalsPageSizeAndMarginsInPixels,
        ghcjs_dom_internals_set_page_scale_factor,
        internalsSetPageScaleFactor,
        ghcjs_dom_internals_set_page_zoom_factor,
        internalsSetPageZoomFactor, ghcjs_dom_internals_set_header_height,
        internalsSetHeaderHeight, ghcjs_dom_internals_set_footer_height,
        internalsSetFooterHeight,
        ghcjs_dom_internals_set_top_content_inset,
        internalsSetTopContentInset,
        ghcjs_dom_internals_webkit_will_enter_full_screen_for_element,
        internalsWebkitWillEnterFullScreenForElement,
        ghcjs_dom_internals_webkit_did_enter_full_screen_for_element,
        internalsWebkitDidEnterFullScreenForElement,
        ghcjs_dom_internals_webkit_will_exit_full_screen_for_element,
        internalsWebkitWillExitFullScreenForElement,
        ghcjs_dom_internals_webkit_did_exit_full_screen_for_element,
        internalsWebkitDidExitFullScreenForElement,
        ghcjs_dom_internals_set_application_cache_origin_quota,
        internalsSetApplicationCacheOriginQuota,
        ghcjs_dom_internals_register_url_scheme_as_bypassing_content_security_policy,
        internalsRegisterURLSchemeAsBypassingContentSecurityPolicy,
        ghcjs_dom_internals_remove_url_scheme_registered_as_bypassing_content_security_policy,
        internalsRemoveURLSchemeRegisteredAsBypassingContentSecurityPolicy,
        ghcjs_dom_internals_malloc_statistics, internalsMallocStatistics,
        ghcjs_dom_internals_type_conversions, internalsTypeConversions,
        ghcjs_dom_internals_memory_info, internalsMemoryInfo,
        ghcjs_dom_internals_get_referenced_file_paths,
        internalsGetReferencedFilePaths,
        ghcjs_dom_internals_start_tracking_repaints,
        internalsStartTrackingRepaints,
        ghcjs_dom_internals_stop_tracking_repaints,
        internalsStopTrackingRepaints,
        ghcjs_dom_internals_is_timer_throttled, internalsIsTimerThrottled,
        ghcjs_dom_internals_update_layout_ignore_pending_stylesheets_and_run_post_layout_tasks,
        internalsUpdateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks,
        ghcjs_dom_internals_get_current_cursor_info,
        internalsGetCurrentCursorInfo,
        ghcjs_dom_internals_marker_text_for_list_item,
        internalsMarkerTextForListItem,
        ghcjs_dom_internals_deserialize_buffer, internalsDeserializeBuffer,
        ghcjs_dom_internals_serialize_object, internalsSerializeObject,
        ghcjs_dom_internals_set_uses_overlay_scrollbars,
        internalsSetUsesOverlayScrollbars,
        ghcjs_dom_internals_force_reload, internalsForceReload,
        ghcjs_dom_internals_simulate_audio_interruption,
        internalsSimulateAudioInterruption,
        ghcjs_dom_internals_media_element_has_characteristic,
        internalsMediaElementHasCharacteristic,
        ghcjs_dom_internals_initialize_mock_cdm,
        internalsInitializeMockCDM,
        ghcjs_dom_internals_enable_mock_speech_synthesizer,
        internalsEnableMockSpeechSynthesizer,
        ghcjs_dom_internals_get_image_source_url,
        internalsGetImageSourceURL,
        ghcjs_dom_internals_captions_style_sheet_override,
        internalsCaptionsStyleSheetOverride,
        ghcjs_dom_internals_set_captions_style_sheet_override,
        internalsSetCaptionsStyleSheetOverride,
        ghcjs_dom_internals_set_primary_audio_track_language_override,
        internalsSetPrimaryAudioTrackLanguageOverride,
        ghcjs_dom_internals_set_caption_display_mode,
        internalsSetCaptionDisplayMode,
        ghcjs_dom_internals_create_time_ranges, internalsCreateTimeRanges,
        ghcjs_dom_internals_closest_time_to_time_ranges,
        internalsClosestTimeToTimeRanges,
        ghcjs_dom_internals_is_select_popup_visible,
        internalsIsSelectPopupVisible, ghcjs_dom_internals_is_vibrating,
        internalsIsVibrating,
        ghcjs_dom_internals_is_plugin_unavailability_indicator_obscured,
        internalsIsPluginUnavailabilityIndicatorObscured,
        ghcjs_dom_internals_is_plugin_snapshotted,
        internalsIsPluginSnapshotted, ghcjs_dom_internals_selection_bounds,
        internalsSelectionBounds,
        ghcjs_dom_internals_initialize_mock_media_source,
        internalsInitializeMockMediaSource,
        ghcjs_dom_internals_buffered_samples_for_track_id,
        internalsBufferedSamplesForTrackID,
        ghcjs_dom_internals_begin_media_session_interruption,
        internalsBeginMediaSessionInterruption,
        ghcjs_dom_internals_end_media_session_interruption,
        internalsEndMediaSessionInterruption,
        ghcjs_dom_internals_application_will_enter_foreground,
        internalsApplicationWillEnterForeground,
        ghcjs_dom_internals_application_will_enter_background,
        internalsApplicationWillEnterBackground,
        ghcjs_dom_internals_set_media_session_restrictions,
        internalsSetMediaSessionRestrictions,
        ghcjs_dom_internals_post_remote_control_command,
        internalsPostRemoteControlCommand,
        ghcjs_dom_internals_simulate_system_sleep,
        internalsSimulateSystemSleep,
        ghcjs_dom_internals_simulate_system_wake,
        internalsSimulateSystemWake,
        ghcjs_dom_internals_install_mock_page_overlay,
        internalsInstallMockPageOverlay,
        ghcjs_dom_internals_page_overlay_layer_tree_as_text,
        internalsPageOverlayLayerTreeAsText,
        ghcjs_dom_internals_set_page_muted, internalsSetPageMuted,
        ghcjs_dom_internals_is_page_playing_audio,
        internalsIsPagePlayingAudio, cLAYER_TREE_INCLUDES_VISIBLE_RECTS,
        cLAYER_TREE_INCLUDES_TILE_CACHES,
        cLAYER_TREE_INCLUDES_REPAINT_RECTS,
        cLAYER_TREE_INCLUDES_PAINTING_PHASES,
        cLAYER_TREE_INCLUDES_CONTENT_LAYERS,
        ghcjs_dom_internals_get_settings, internalsGetSettings,
        ghcjs_dom_internals_get_worker_thread_count,
        internalsGetWorkerThreadCount,
        ghcjs_dom_internals_get_console_profiles,
        internalsGetConsoleProfiles, Internals, IsInternals,
        castToInternals, gTypeInternals, toInternals)
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

 
foreign import javascript unsafe "$1[\"address\"]($2)"
        ghcjs_dom_internals_address ::
        JSRef Internals -> JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.address Mozilla Internals.address documentation> 
internalsAddress ::
                 (MonadIO m, IsInternals self, IsNode node, FromJSString result) =>
                   self -> Maybe node -> m result
internalsAddress self node
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_address (unInternals (toInternals self))
            (maybe jsNull (unNode . toNode) node)))
 
foreign import javascript unsafe
        "($1[\"nodeNeedsStyleRecalc\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_node_needs_style_recalc ::
        JSRef Internals -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodeNeedsStyleRecalc Mozilla Internals.nodeNeedsStyleRecalc documentation> 
internalsNodeNeedsStyleRecalc ::
                              (MonadIO m, IsInternals self, IsNode node) =>
                                self -> Maybe node -> m Bool
internalsNodeNeedsStyleRecalc self node
  = liftIO
      (ghcjs_dom_internals_node_needs_style_recalc
         (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node))
 
foreign import javascript unsafe "$1[\"description\"]($2)"
        ghcjs_dom_internals_description ::
        JSRef Internals -> JSRef a -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.description Mozilla Internals.description documentation> 
internalsDescription ::
                     (MonadIO m, IsInternals self, FromJSString result) =>
                       self -> JSRef a -> m result
internalsDescription self value
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_description (unInternals (toInternals self))
            value))
 
foreign import javascript unsafe
        "$1[\"elementRenderTreeAsText\"]($2)"
        ghcjs_dom_internals_element_render_tree_as_text ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementRenderTreeAsText Mozilla Internals.elementRenderTreeAsText documentation> 
internalsElementRenderTreeAsText ::
                                 (MonadIO m, IsInternals self, IsElement element,
                                  FromJSString result) =>
                                   self -> Maybe element -> m result
internalsElementRenderTreeAsText self element
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_element_render_tree_as_text
            (unInternals (toInternals self))
            (maybe jsNull (unElement . toElement) element)))
 
foreign import javascript unsafe
        "($1[\"isPreloaded\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_preloaded ::
        JSRef Internals -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPreloaded Mozilla Internals.isPreloaded documentation> 
internalsIsPreloaded ::
                     (MonadIO m, IsInternals self, ToJSString url) =>
                       self -> url -> m Bool
internalsIsPreloaded self url
  = liftIO
      (ghcjs_dom_internals_is_preloaded (unInternals (toInternals self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"isLoadingFromMemoryCache\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_loading_from_memory_cache ::
        JSRef Internals -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isLoadingFromMemoryCache Mozilla Internals.isLoadingFromMemoryCache documentation> 
internalsIsLoadingFromMemoryCache ::
                                  (MonadIO m, IsInternals self, ToJSString url) =>
                                    self -> url -> m Bool
internalsIsLoadingFromMemoryCache self url
  = liftIO
      (ghcjs_dom_internals_is_loading_from_memory_cache
         (unInternals (toInternals self))
         (toJSString url))
 
foreign import javascript unsafe
        "$1[\"computedStyleIncludingVisitedInfo\"]($2)"
        ghcjs_dom_internals_computed_style_including_visited_info ::
        JSRef Internals -> JSRef Node -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
internalsComputedStyleIncludingVisitedInfo ::
                                           (MonadIO m, IsInternals self, IsNode node) =>
                                             self -> Maybe node -> m (Maybe CSSStyleDeclaration)
internalsComputedStyleIncludingVisitedInfo self node
  = liftIO
      ((ghcjs_dom_internals_computed_style_including_visited_info
          (unInternals (toInternals self))
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"ensureShadowRoot\"]($2)"
        ghcjs_dom_internals_ensure_shadow_root ::
        JSRef Internals -> JSRef Element -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
internalsEnsureShadowRoot ::
                          (MonadIO m, IsInternals self, IsElement host) =>
                            self -> Maybe host -> m (Maybe Node)
internalsEnsureShadowRoot self host
  = liftIO
      ((ghcjs_dom_internals_ensure_shadow_root
          (unInternals (toInternals self))
          (maybe jsNull (unElement . toElement) host))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createShadowRoot\"]($2)"
        ghcjs_dom_internals_create_shadow_root ::
        JSRef Internals -> JSRef Element -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
internalsCreateShadowRoot ::
                          (MonadIO m, IsInternals self, IsElement host) =>
                            self -> Maybe host -> m (Maybe Node)
internalsCreateShadowRoot self host
  = liftIO
      ((ghcjs_dom_internals_create_shadow_root
          (unInternals (toInternals self))
          (maybe jsNull (unElement . toElement) host))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"shadowRoot\"]($2)"
        ghcjs_dom_internals_shadow_root ::
        JSRef Internals -> JSRef Element -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
internalsShadowRoot ::
                    (MonadIO m, IsInternals self, IsElement host) =>
                      self -> Maybe host -> m (Maybe Node)
internalsShadowRoot self host
  = liftIO
      ((ghcjs_dom_internals_shadow_root (unInternals (toInternals self))
          (maybe jsNull (unElement . toElement) host))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"shadowRootType\"]($2)"
        ghcjs_dom_internals_shadow_root_type ::
        JSRef Internals -> JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRootType Mozilla Internals.shadowRootType documentation> 
internalsShadowRootType ::
                        (MonadIO m, IsInternals self, IsNode root, FromJSString result) =>
                          self -> Maybe root -> m result
internalsShadowRootType self root
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_shadow_root_type
            (unInternals (toInternals self))
            (maybe jsNull (unNode . toNode) root)))
 
foreign import javascript unsafe "$1[\"includerFor\"]($2)"
        ghcjs_dom_internals_includer_for ::
        JSRef Internals -> JSRef Node -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
internalsIncluderFor ::
                     (MonadIO m, IsInternals self, IsNode node) =>
                       self -> Maybe node -> m (Maybe Element)
internalsIncluderFor self node
  = liftIO
      ((ghcjs_dom_internals_includer_for (unInternals (toInternals self))
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"shadowPseudoId\"]($2)"
        ghcjs_dom_internals_shadow_pseudo_id ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
internalsShadowPseudoId ::
                        (MonadIO m, IsInternals self, IsElement element,
                         FromJSString result) =>
                          self -> Maybe element -> m result
internalsShadowPseudoId self element
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_shadow_pseudo_id
            (unInternals (toInternals self))
            (maybe jsNull (unElement . toElement) element)))
 
foreign import javascript unsafe
        "$1[\"setShadowPseudoId\"]($2, $3)"
        ghcjs_dom_internals_set_shadow_pseudo_id ::
        JSRef Internals -> JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
internalsSetShadowPseudoId ::
                           (MonadIO m, IsInternals self, IsElement element, ToJSString id) =>
                             self -> Maybe element -> id -> m ()
internalsSetShadowPseudoId self element id
  = liftIO
      (ghcjs_dom_internals_set_shadow_pseudo_id
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element)
         (toJSString id))
 
foreign import javascript unsafe "$1[\"treeScopeRootNode\"]($2)"
        ghcjs_dom_internals_tree_scope_root_node ::
        JSRef Internals -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
internalsTreeScopeRootNode ::
                           (MonadIO m, IsInternals self, IsNode node) =>
                             self -> Maybe node -> m (Maybe Node)
internalsTreeScopeRootNode self node
  = liftIO
      ((ghcjs_dom_internals_tree_scope_root_node
          (unInternals (toInternals self))
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"parentTreeScope\"]($2)"
        ghcjs_dom_internals_parent_tree_scope ::
        JSRef Internals -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
internalsParentTreeScope ::
                         (MonadIO m, IsInternals self, IsNode node) =>
                           self -> Maybe node -> m (Maybe Node)
internalsParentTreeScope self node
  = liftIO
      ((ghcjs_dom_internals_parent_tree_scope
          (unInternals (toInternals self))
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"lastSpatialNavigationCandidateCount\"]()"
        ghcjs_dom_internals_last_spatial_navigation_candidate_count ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpatialNavigationCandidateCount Mozilla Internals.lastSpatialNavigationCandidateCount documentation> 
internalsLastSpatialNavigationCandidateCount ::
                                             (MonadIO m, IsInternals self) => self -> m Word
internalsLastSpatialNavigationCandidateCount self
  = liftIO
      (ghcjs_dom_internals_last_spatial_navigation_candidate_count
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"numberOfActiveAnimations\"]()"
        ghcjs_dom_internals_number_of_active_animations ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfActiveAnimations Mozilla Internals.numberOfActiveAnimations documentation> 
internalsNumberOfActiveAnimations ::
                                  (MonadIO m, IsInternals self) => self -> m Word
internalsNumberOfActiveAnimations self
  = liftIO
      (ghcjs_dom_internals_number_of_active_animations
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"suspendAnimations\"]()"
        ghcjs_dom_internals_suspend_animations :: JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.suspendAnimations Mozilla Internals.suspendAnimations documentation> 
internalsSuspendAnimations ::
                           (MonadIO m, IsInternals self) => self -> m ()
internalsSuspendAnimations self
  = liftIO
      (ghcjs_dom_internals_suspend_animations
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"resumeAnimations\"]()"
        ghcjs_dom_internals_resume_animations :: JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.resumeAnimations Mozilla Internals.resumeAnimations documentation> 
internalsResumeAnimations ::
                          (MonadIO m, IsInternals self) => self -> m ()
internalsResumeAnimations self
  = liftIO
      (ghcjs_dom_internals_resume_animations
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "($1[\"animationsAreSuspended\"]() ? 1 : 0)"
        ghcjs_dom_internals_animations_are_suspended ::
        JSRef Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.animationsAreSuspended Mozilla Internals.animationsAreSuspended documentation> 
internalsAnimationsAreSuspended ::
                                (MonadIO m, IsInternals self) => self -> m Bool
internalsAnimationsAreSuspended self
  = liftIO
      (ghcjs_dom_internals_animations_are_suspended
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "($1[\"pauseAnimationAtTimeOnElement\"]($2,\n$3, $4) ? 1 : 0)"
        ghcjs_dom_internals_pause_animation_at_time_on_element ::
        JSRef Internals -> JSString -> Double -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnElement Mozilla Internals.pauseAnimationAtTimeOnElement documentation> 
internalsPauseAnimationAtTimeOnElement ::
                                       (MonadIO m, IsInternals self, ToJSString animationName,
                                        IsElement element) =>
                                         self -> animationName -> Double -> Maybe element -> m Bool
internalsPauseAnimationAtTimeOnElement self animationName pauseTime
  element
  = liftIO
      (ghcjs_dom_internals_pause_animation_at_time_on_element
         (unInternals (toInternals self))
         (toJSString animationName)
         pauseTime
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "($1[\"pauseAnimationAtTimeOnPseudoElement\"]($2,\n$3, $4, $5) ? 1 : 0)"
        ghcjs_dom_internals_pause_animation_at_time_on_pseudo_element ::
        JSRef Internals ->
          JSString -> Double -> JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnPseudoElement Mozilla Internals.pauseAnimationAtTimeOnPseudoElement documentation> 
internalsPauseAnimationAtTimeOnPseudoElement ::
                                             (MonadIO m, IsInternals self, ToJSString animationName,
                                              IsElement element, ToJSString pseudoId) =>
                                               self ->
                                                 animationName ->
                                                   Double -> Maybe element -> pseudoId -> m Bool
internalsPauseAnimationAtTimeOnPseudoElement self animationName
  pauseTime element pseudoId
  = liftIO
      (ghcjs_dom_internals_pause_animation_at_time_on_pseudo_element
         (unInternals (toInternals self))
         (toJSString animationName)
         pauseTime
         (maybe jsNull (unElement . toElement) element)
         (toJSString pseudoId))
 
foreign import javascript unsafe
        "($1[\"pauseTransitionAtTimeOnElement\"]($2,\n$3, $4) ? 1 : 0)"
        ghcjs_dom_internals_pause_transition_at_time_on_element ::
        JSRef Internals -> JSString -> Double -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnElement Mozilla Internals.pauseTransitionAtTimeOnElement documentation> 
internalsPauseTransitionAtTimeOnElement ::
                                        (MonadIO m, IsInternals self, ToJSString propertyName,
                                         IsElement element) =>
                                          self -> propertyName -> Double -> Maybe element -> m Bool
internalsPauseTransitionAtTimeOnElement self propertyName pauseTime
  element
  = liftIO
      (ghcjs_dom_internals_pause_transition_at_time_on_element
         (unInternals (toInternals self))
         (toJSString propertyName)
         pauseTime
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "($1[\"pauseTransitionAtTimeOnPseudoElement\"]($2,\n$3, $4, $5) ? 1 : 0)"
        ghcjs_dom_internals_pause_transition_at_time_on_pseudo_element ::
        JSRef Internals ->
          JSString -> Double -> JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnPseudoElement Mozilla Internals.pauseTransitionAtTimeOnPseudoElement documentation> 
internalsPauseTransitionAtTimeOnPseudoElement ::
                                              (MonadIO m, IsInternals self, ToJSString property,
                                               IsElement element, ToJSString pseudoId) =>
                                                self ->
                                                  property ->
                                                    Double -> Maybe element -> pseudoId -> m Bool
internalsPauseTransitionAtTimeOnPseudoElement self property
  pauseTime element pseudoId
  = liftIO
      (ghcjs_dom_internals_pause_transition_at_time_on_pseudo_element
         (unInternals (toInternals self))
         (toJSString property)
         pauseTime
         (maybe jsNull (unElement . toElement) element)
         (toJSString pseudoId))
 
foreign import javascript unsafe "($1[\"attached\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_attached ::
        JSRef Internals -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.attached Mozilla Internals.attached documentation> 
internalsAttached ::
                  (MonadIO m, IsInternals self, IsNode node) =>
                    self -> Maybe node -> m Bool
internalsAttached self node
  = liftIO
      (ghcjs_dom_internals_attached (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node))
 
foreign import javascript unsafe "$1[\"visiblePlaceholder\"]($2)"
        ghcjs_dom_internals_visible_placeholder ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.visiblePlaceholder Mozilla Internals.visiblePlaceholder documentation> 
internalsVisiblePlaceholder ::
                            (MonadIO m, IsInternals self, IsElement element,
                             FromJSString result) =>
                              self -> Maybe element -> m result
internalsVisiblePlaceholder self element
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_visible_placeholder
            (unInternals (toInternals self))
            (maybe jsNull (unElement . toElement) element)))
 
foreign import javascript unsafe
        "$1[\"selectColorInColorChooser\"]($2,\n$3)"
        ghcjs_dom_internals_select_color_in_color_chooser ::
        JSRef Internals -> JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectColorInColorChooser Mozilla Internals.selectColorInColorChooser documentation> 
internalsSelectColorInColorChooser ::
                                   (MonadIO m, IsInternals self, IsElement element,
                                    ToJSString colorValue) =>
                                     self -> Maybe element -> colorValue -> m ()
internalsSelectColorInColorChooser self element colorValue
  = liftIO
      (ghcjs_dom_internals_select_color_in_color_chooser
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element)
         (toJSString colorValue))
 
foreign import javascript unsafe
        "$1[\"formControlStateOfPreviousHistoryItem\"]()"
        ghcjs_dom_internals_form_control_state_of_previous_history_item ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.formControlStateOfPreviousHistoryItem Mozilla Internals.formControlStateOfPreviousHistoryItem documentation> 
internalsFormControlStateOfPreviousHistoryItem ::
                                               (MonadIO m, IsInternals self, FromJSString result) =>
                                                 self -> m [result]
internalsFormControlStateOfPreviousHistoryItem self
  = liftIO
      ((ghcjs_dom_internals_form_control_state_of_previous_history_item
          (unInternals (toInternals self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"setFormControlStateOfPreviousHistoryItem\"]($2)"
        ghcjs_dom_internals_set_form_control_state_of_previous_history_item
        :: JSRef Internals -> JSRef [values] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.formControlStateOfPreviousHistoryItem Mozilla Internals.formControlStateOfPreviousHistoryItem documentation> 
internalsSetFormControlStateOfPreviousHistoryItem ::
                                                  (MonadIO m, IsInternals self,
                                                   ToJSString values) =>
                                                    self -> [values] -> m ()
internalsSetFormControlStateOfPreviousHistoryItem self values
  = liftIO
      (toJSRef values >>=
         \ values' ->
           ghcjs_dom_internals_set_form_control_state_of_previous_history_item
             (unInternals (toInternals self))
             values')
 
foreign import javascript unsafe "$1[\"absoluteCaretBounds\"]()"
        ghcjs_dom_internals_absolute_caret_bounds ::
        JSRef Internals -> IO (JSRef ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
internalsAbsoluteCaretBounds ::
                             (MonadIO m, IsInternals self) => self -> m (Maybe ClientRect)
internalsAbsoluteCaretBounds self
  = liftIO
      ((ghcjs_dom_internals_absolute_caret_bounds
          (unInternals (toInternals self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"boundingBox\"]($2)"
        ghcjs_dom_internals_bounding_box ::
        JSRef Internals -> JSRef Element -> IO (JSRef ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
internalsBoundingBox ::
                     (MonadIO m, IsInternals self, IsElement element) =>
                       self -> Maybe element -> m (Maybe ClientRect)
internalsBoundingBox self element
  = liftIO
      ((ghcjs_dom_internals_bounding_box (unInternals (toInternals self))
          (maybe jsNull (unElement . toElement) element))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"inspectorHighlightRects\"]()"
        ghcjs_dom_internals_inspector_highlight_rects ::
        JSRef Internals -> IO (JSRef ClientRectList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
internalsInspectorHighlightRects ::
                                 (MonadIO m, IsInternals self) => self -> m (Maybe ClientRectList)
internalsInspectorHighlightRects self
  = liftIO
      ((ghcjs_dom_internals_inspector_highlight_rects
          (unInternals (toInternals self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"inspectorHighlightObject\"]()"
        ghcjs_dom_internals_inspector_highlight_object ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightObject Mozilla Internals.inspectorHighlightObject documentation> 
internalsInspectorHighlightObject ::
                                  (MonadIO m, IsInternals self, FromJSString result) =>
                                    self -> m result
internalsInspectorHighlightObject self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_inspector_highlight_object
            (unInternals (toInternals self))))
 
foreign import javascript unsafe
        "$1[\"markerCountForNode\"]($2, $3)"
        ghcjs_dom_internals_marker_count_for_node ::
        JSRef Internals -> JSRef Node -> JSString -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerCountForNode Mozilla Internals.markerCountForNode documentation> 
internalsMarkerCountForNode ::
                            (MonadIO m, IsInternals self, IsNode node,
                             ToJSString markerType) =>
                              self -> Maybe node -> markerType -> m Word
internalsMarkerCountForNode self node markerType
  = liftIO
      (ghcjs_dom_internals_marker_count_for_node
         (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node)
         (toJSString markerType))
 
foreign import javascript unsafe
        "$1[\"markerRangeForNode\"]($2, $3,\n$4)"
        ghcjs_dom_internals_marker_range_for_node ::
        JSRef Internals ->
          JSRef Node -> JSString -> Word -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
internalsMarkerRangeForNode ::
                            (MonadIO m, IsInternals self, IsNode node,
                             ToJSString markerType) =>
                              self -> Maybe node -> markerType -> Word -> m (Maybe DOMRange)
internalsMarkerRangeForNode self node markerType index
  = liftIO
      ((ghcjs_dom_internals_marker_range_for_node
          (unInternals (toInternals self))
          (maybe jsNull (unNode . toNode) node)
          (toJSString markerType)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"markerDescriptionForNode\"]($2,\n$3, $4)"
        ghcjs_dom_internals_marker_description_for_node ::
        JSRef Internals -> JSRef Node -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerDescriptionForNode Mozilla Internals.markerDescriptionForNode documentation> 
internalsMarkerDescriptionForNode ::
                                  (MonadIO m, IsInternals self, IsNode node, ToJSString markerType,
                                   FromJSString result) =>
                                    self -> Maybe node -> markerType -> Word -> m result
internalsMarkerDescriptionForNode self node markerType index
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_marker_description_for_node
            (unInternals (toInternals self))
            (maybe jsNull (unNode . toNode) node)
            (toJSString markerType)
            index))
 
foreign import javascript unsafe
        "$1[\"addTextMatchMarker\"]($2, $3)"
        ghcjs_dom_internals_add_text_match_marker ::
        JSRef Internals -> JSRef DOMRange -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.addTextMatchMarker Mozilla Internals.addTextMatchMarker documentation> 
internalsAddTextMatchMarker ::
                            (MonadIO m, IsInternals self, IsDOMRange range) =>
                              self -> Maybe range -> Bool -> m ()
internalsAddTextMatchMarker self range isActive
  = liftIO
      (ghcjs_dom_internals_add_text_match_marker
         (unInternals (toInternals self))
         (maybe jsNull (unDOMRange . toDOMRange) range)
         isActive)
 
foreign import javascript unsafe
        "$1[\"setMarkedTextMatchesAreHighlighted\"]($2)"
        ghcjs_dom_internals_set_marked_text_matches_are_highlighted ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markedTextMatchesAreHighlighted Mozilla Internals.markedTextMatchesAreHighlighted documentation> 
internalsSetMarkedTextMatchesAreHighlighted ::
                                            (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetMarkedTextMatchesAreHighlighted self flag
  = liftIO
      (ghcjs_dom_internals_set_marked_text_matches_are_highlighted
         (unInternals (toInternals self))
         flag)
 
foreign import javascript unsafe "$1[\"invalidateFontCache\"]()"
        ghcjs_dom_internals_invalidate_font_cache ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.invalidateFontCache Mozilla Internals.invalidateFontCache documentation> 
internalsInvalidateFontCache ::
                             (MonadIO m, IsInternals self) => self -> m ()
internalsInvalidateFontCache self
  = liftIO
      (ghcjs_dom_internals_invalidate_font_cache
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"setScrollViewPosition\"]($2,\n$3)"
        ghcjs_dom_internals_set_scroll_view_position ::
        JSRef Internals -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollViewPosition Mozilla Internals.scrollViewPosition documentation> 
internalsSetScrollViewPosition ::
                               (MonadIO m, IsInternals self) => self -> Int -> Int -> m ()
internalsSetScrollViewPosition self x y
  = liftIO
      (ghcjs_dom_internals_set_scroll_view_position
         (unInternals (toInternals self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"setPagination\"]($2, $3, $4)"
        ghcjs_dom_internals_set_pagination ::
        JSRef Internals -> JSString -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pagination Mozilla Internals.pagination documentation> 
internalsSetPagination ::
                       (MonadIO m, IsInternals self, ToJSString mode) =>
                         self -> mode -> Int -> Int -> m ()
internalsSetPagination self mode gap pageLength
  = liftIO
      (ghcjs_dom_internals_set_pagination
         (unInternals (toInternals self))
         (toJSString mode)
         gap
         pageLength)
 
foreign import javascript unsafe
        "$1[\"configurationForViewport\"]($2,\n$3, $4, $5, $6)"
        ghcjs_dom_internals_configuration_for_viewport ::
        JSRef Internals -> Float -> Int -> Int -> Int -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.configurationForViewport Mozilla Internals.configurationForViewport documentation> 
internalsConfigurationForViewport ::
                                  (MonadIO m, IsInternals self, FromJSString result) =>
                                    self -> Float -> Int -> Int -> Int -> Int -> m result
internalsConfigurationForViewport self devicePixelRatio deviceWidth
  deviceHeight availableWidth availableHeight
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_configuration_for_viewport
            (unInternals (toInternals self))
            devicePixelRatio
            deviceWidth
            deviceHeight
            availableWidth
            availableHeight))
 
foreign import javascript unsafe
        "($1[\"wasLastChangeUserEdit\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_was_last_change_user_edit ::
        JSRef Internals -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wasLastChangeUserEdit Mozilla Internals.wasLastChangeUserEdit documentation> 
internalsWasLastChangeUserEdit ::
                               (MonadIO m, IsInternals self, IsElement textField) =>
                                 self -> Maybe textField -> m Bool
internalsWasLastChangeUserEdit self textField
  = liftIO
      (ghcjs_dom_internals_was_last_change_user_edit
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) textField))
 
foreign import javascript unsafe
        "($1[\"elementShouldAutoComplete\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_element_should_auto_complete ::
        JSRef Internals -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementShouldAutoComplete Mozilla Internals.elementShouldAutoComplete documentation> 
internalsElementShouldAutoComplete ::
                                   (MonadIO m, IsInternals self, IsElement inputElement) =>
                                     self -> Maybe inputElement -> m Bool
internalsElementShouldAutoComplete self inputElement
  = liftIO
      (ghcjs_dom_internals_element_should_auto_complete
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) inputElement))
 
foreign import javascript unsafe "$1[\"setEditingValue\"]($2, $3)"
        ghcjs_dom_internals_set_editing_value ::
        JSRef Internals -> JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.editingValue Mozilla Internals.editingValue documentation> 
internalsSetEditingValue ::
                         (MonadIO m, IsInternals self, IsElement inputElement,
                          ToJSString value) =>
                           self -> Maybe inputElement -> value -> m ()
internalsSetEditingValue self inputElement value
  = liftIO
      (ghcjs_dom_internals_set_editing_value
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) inputElement)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"setAutofilled\"]($2, $3)"
        ghcjs_dom_internals_set_autofilled ::
        JSRef Internals -> JSRef Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.autofilled Mozilla Internals.autofilled documentation> 
internalsSetAutofilled ::
                       (MonadIO m, IsInternals self, IsElement inputElement) =>
                         self -> Maybe inputElement -> Bool -> m ()
internalsSetAutofilled self inputElement enabled
  = liftIO
      (ghcjs_dom_internals_set_autofilled
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) inputElement)
         enabled)
 
foreign import javascript unsafe
        "$1[\"countMatchesForText\"]($2,\n$3, $4)"
        ghcjs_dom_internals_count_matches_for_text ::
        JSRef Internals -> JSString -> Word -> JSString -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.countMatchesForText Mozilla Internals.countMatchesForText documentation> 
internalsCountMatchesForText ::
                             (MonadIO m, IsInternals self, ToJSString text,
                              ToJSString markMatches) =>
                               self -> text -> Word -> markMatches -> m Word
internalsCountMatchesForText self text findOptions markMatches
  = liftIO
      (ghcjs_dom_internals_count_matches_for_text
         (unInternals (toInternals self))
         (toJSString text)
         findOptions
         (toJSString markMatches))
 
foreign import javascript unsafe "$1[\"paintControlTints\"]()"
        ghcjs_dom_internals_paint_control_tints :: JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.paintControlTints Mozilla Internals.paintControlTints documentation> 
internalsPaintControlTints ::
                           (MonadIO m, IsInternals self) => self -> m ()
internalsPaintControlTints self
  = liftIO
      (ghcjs_dom_internals_paint_control_tints
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"scrollElementToRect\"]($2,\n$3, $4, $5, $6)"
        ghcjs_dom_internals_scroll_element_to_rect ::
        JSRef Internals ->
          JSRef Element -> Int -> Int -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollElementToRect Mozilla Internals.scrollElementToRect documentation> 
internalsScrollElementToRect ::
                             (MonadIO m, IsInternals self, IsElement element) =>
                               self -> Maybe element -> Int -> Int -> Int -> Int -> m ()
internalsScrollElementToRect self element x y w h
  = liftIO
      (ghcjs_dom_internals_scroll_element_to_rect
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element)
         x
         y
         w
         h)
 
foreign import javascript unsafe
        "$1[\"rangeFromLocationAndLength\"]($2,\n$3, $4)"
        ghcjs_dom_internals_range_from_location_and_length ::
        JSRef Internals ->
          JSRef Element -> Int -> Int -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
internalsRangeFromLocationAndLength ::
                                    (MonadIO m, IsInternals self, IsElement scope) =>
                                      self -> Maybe scope -> Int -> Int -> m (Maybe DOMRange)
internalsRangeFromLocationAndLength self scope rangeLocation
  rangeLength
  = liftIO
      ((ghcjs_dom_internals_range_from_location_and_length
          (unInternals (toInternals self))
          (maybe jsNull (unElement . toElement) scope)
          rangeLocation
          rangeLength)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"locationFromRange\"]($2, $3)"
        ghcjs_dom_internals_location_from_range ::
        JSRef Internals -> JSRef Element -> JSRef DOMRange -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.locationFromRange Mozilla Internals.locationFromRange documentation> 
internalsLocationFromRange ::
                           (MonadIO m, IsInternals self, IsElement scope, IsDOMRange range) =>
                             self -> Maybe scope -> Maybe range -> m Word
internalsLocationFromRange self scope range
  = liftIO
      (ghcjs_dom_internals_location_from_range
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) scope)
         (maybe jsNull (unDOMRange . toDOMRange) range))
 
foreign import javascript unsafe "$1[\"lengthFromRange\"]($2, $3)"
        ghcjs_dom_internals_length_from_range ::
        JSRef Internals -> JSRef Element -> JSRef DOMRange -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lengthFromRange Mozilla Internals.lengthFromRange documentation> 
internalsLengthFromRange ::
                         (MonadIO m, IsInternals self, IsElement scope, IsDOMRange range) =>
                           self -> Maybe scope -> Maybe range -> m Word
internalsLengthFromRange self scope range
  = liftIO
      (ghcjs_dom_internals_length_from_range
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) scope)
         (maybe jsNull (unDOMRange . toDOMRange) range))
 
foreign import javascript unsafe "$1[\"rangeAsText\"]($2)"
        ghcjs_dom_internals_range_as_text ::
        JSRef Internals -> JSRef DOMRange -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeAsText Mozilla Internals.rangeAsText documentation> 
internalsRangeAsText ::
                     (MonadIO m, IsInternals self, IsDOMRange range,
                      FromJSString result) =>
                       self -> Maybe range -> m result
internalsRangeAsText self range
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_range_as_text (unInternals (toInternals self))
            (maybe jsNull (unDOMRange . toDOMRange) range)))
 
foreign import javascript unsafe
        "$1[\"setDelegatesScrolling\"]($2)"
        ghcjs_dom_internals_set_delegates_scrolling ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.delegatesScrolling Mozilla Internals.delegatesScrolling documentation> 
internalsSetDelegatesScrolling ::
                               (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetDelegatesScrolling self enabled
  = liftIO
      (ghcjs_dom_internals_set_delegates_scrolling
         (unInternals (toInternals self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"lastSpellCheckRequestSequence\"]()"
        ghcjs_dom_internals_last_spell_check_request_sequence ::
        JSRef Internals -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckRequestSequence Mozilla Internals.lastSpellCheckRequestSequence documentation> 
internalsLastSpellCheckRequestSequence ::
                                       (MonadIO m, IsInternals self) => self -> m Int
internalsLastSpellCheckRequestSequence self
  = liftIO
      (ghcjs_dom_internals_last_spell_check_request_sequence
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"lastSpellCheckProcessedSequence\"]()"
        ghcjs_dom_internals_last_spell_check_processed_sequence ::
        JSRef Internals -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckProcessedSequence Mozilla Internals.lastSpellCheckProcessedSequence documentation> 
internalsLastSpellCheckProcessedSequence ::
                                         (MonadIO m, IsInternals self) => self -> m Int
internalsLastSpellCheckProcessedSequence self
  = liftIO
      (ghcjs_dom_internals_last_spell_check_processed_sequence
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"userPreferredLanguages\"]()"
        ghcjs_dom_internals_user_preferred_languages ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
internalsUserPreferredLanguages ::
                                (MonadIO m, IsInternals self, FromJSString result) =>
                                  self -> m [result]
internalsUserPreferredLanguages self
  = liftIO
      ((ghcjs_dom_internals_user_preferred_languages
          (unInternals (toInternals self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"setUserPreferredLanguages\"]($2)"
        ghcjs_dom_internals_set_user_preferred_languages ::
        JSRef Internals -> JSRef [languages] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
internalsSetUserPreferredLanguages ::
                                   (MonadIO m, IsInternals self, ToJSString languages) =>
                                     self -> [languages] -> m ()
internalsSetUserPreferredLanguages self languages
  = liftIO
      (toJSRef languages >>=
         \ languages' ->
           ghcjs_dom_internals_set_user_preferred_languages
             (unInternals (toInternals self))
             languages')
 
foreign import javascript unsafe "$1[\"wheelEventHandlerCount\"]()"
        ghcjs_dom_internals_wheel_event_handler_count ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wheelEventHandlerCount Mozilla Internals.wheelEventHandlerCount documentation> 
internalsWheelEventHandlerCount ::
                                (MonadIO m, IsInternals self) => self -> m Word
internalsWheelEventHandlerCount self
  = liftIO
      (ghcjs_dom_internals_wheel_event_handler_count
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"touchEventHandlerCount\"]()"
        ghcjs_dom_internals_touch_event_handler_count ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.touchEventHandlerCount Mozilla Internals.touchEventHandlerCount documentation> 
internalsTouchEventHandlerCount ::
                                (MonadIO m, IsInternals self) => self -> m Word
internalsTouchEventHandlerCount self
  = liftIO
      (ghcjs_dom_internals_touch_event_handler_count
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"nodesFromRect\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11)"
        ghcjs_dom_internals_nodes_from_rect ::
        JSRef Internals ->
          JSRef Document ->
            Int ->
              Int ->
                Word ->
                  Word -> Word -> Word -> Bool -> Bool -> Bool -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodesFromRect Mozilla Internals.nodesFromRect documentation> 
internalsNodesFromRect ::
                       (MonadIO m, IsInternals self, IsDocument document) =>
                         self ->
                           Maybe document ->
                             Int ->
                               Int ->
                                 Word ->
                                   Word ->
                                     Word -> Word -> Bool -> Bool -> Bool -> m (Maybe NodeList)
internalsNodesFromRect self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = liftIO
      ((ghcjs_dom_internals_nodes_from_rect
          (unInternals (toInternals self))
          (maybe jsNull (unDocument . toDocument) document)
          x
          y
          topPadding
          rightPadding
          bottomPadding
          leftPadding
          ignoreClipping
          allowShadowContent
          allowChildFrameContent)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"parserMetaData\"]($2)"
        ghcjs_dom_internals_parser_meta_data ::
        JSRef Internals -> JSRef a -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parserMetaData Mozilla Internals.parserMetaData documentation> 
internalsParserMetaData ::
                        (MonadIO m, IsInternals self, FromJSString result) =>
                          self -> JSRef a -> m result
internalsParserMetaData self func
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_parser_meta_data
            (unInternals (toInternals self))
            func))
 
foreign import javascript unsafe
        "$1[\"updateEditorUINowIfScheduled\"]()"
        ghcjs_dom_internals_update_editor_ui_now_if_scheduled ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateEditorUINowIfScheduled Mozilla Internals.updateEditorUINowIfScheduled documentation> 
internalsUpdateEditorUINowIfScheduled ::
                                      (MonadIO m, IsInternals self) => self -> m ()
internalsUpdateEditorUINowIfScheduled self
  = liftIO
      (ghcjs_dom_internals_update_editor_ui_now_if_scheduled
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "($1[\"hasSpellingMarker\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_internals_has_spelling_marker ::
        JSRef Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasSpellingMarker Mozilla Internals.hasSpellingMarker documentation> 
internalsHasSpellingMarker ::
                           (MonadIO m, IsInternals self) => self -> Int -> Int -> m Bool
internalsHasSpellingMarker self from length
  = liftIO
      (ghcjs_dom_internals_has_spelling_marker
         (unInternals (toInternals self))
         from
         length)
 
foreign import javascript unsafe
        "($1[\"hasGrammarMarker\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_internals_has_grammar_marker ::
        JSRef Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasGrammarMarker Mozilla Internals.hasGrammarMarker documentation> 
internalsHasGrammarMarker ::
                          (MonadIO m, IsInternals self) => self -> Int -> Int -> m Bool
internalsHasGrammarMarker self from length
  = liftIO
      (ghcjs_dom_internals_has_grammar_marker
         (unInternals (toInternals self))
         from
         length)
 
foreign import javascript unsafe
        "($1[\"hasAutocorrectedMarker\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_internals_has_autocorrected_marker ::
        JSRef Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasAutocorrectedMarker Mozilla Internals.hasAutocorrectedMarker documentation> 
internalsHasAutocorrectedMarker ::
                                (MonadIO m, IsInternals self) => self -> Int -> Int -> m Bool
internalsHasAutocorrectedMarker self from length
  = liftIO
      (ghcjs_dom_internals_has_autocorrected_marker
         (unInternals (toInternals self))
         from
         length)
 
foreign import javascript unsafe
        "$1[\"setContinuousSpellCheckingEnabled\"]($2)"
        ghcjs_dom_internals_set_continuous_spell_checking_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.continuousSpellCheckingEnabled Mozilla Internals.continuousSpellCheckingEnabled documentation> 
internalsSetContinuousSpellCheckingEnabled ::
                                           (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetContinuousSpellCheckingEnabled self enabled
  = liftIO
      (ghcjs_dom_internals_set_continuous_spell_checking_enabled
         (unInternals (toInternals self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticQuoteSubstitutionEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_quote_substitution_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticQuoteSubstitutionEnabled Mozilla Internals.automaticQuoteSubstitutionEnabled documentation> 
internalsSetAutomaticQuoteSubstitutionEnabled ::
                                              (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetAutomaticQuoteSubstitutionEnabled self enabled
  = liftIO
      (ghcjs_dom_internals_set_automatic_quote_substitution_enabled
         (unInternals (toInternals self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticLinkDetectionEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_link_detection_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticLinkDetectionEnabled Mozilla Internals.automaticLinkDetectionEnabled documentation> 
internalsSetAutomaticLinkDetectionEnabled ::
                                          (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetAutomaticLinkDetectionEnabled self enabled
  = liftIO
      (ghcjs_dom_internals_set_automatic_link_detection_enabled
         (unInternals (toInternals self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticDashSubstitutionEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_dash_substitution_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticDashSubstitutionEnabled Mozilla Internals.automaticDashSubstitutionEnabled documentation> 
internalsSetAutomaticDashSubstitutionEnabled ::
                                             (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetAutomaticDashSubstitutionEnabled self enabled
  = liftIO
      (ghcjs_dom_internals_set_automatic_dash_substitution_enabled
         (unInternals (toInternals self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticTextReplacementEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_text_replacement_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticTextReplacementEnabled Mozilla Internals.automaticTextReplacementEnabled documentation> 
internalsSetAutomaticTextReplacementEnabled ::
                                            (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetAutomaticTextReplacementEnabled self enabled
  = liftIO
      (ghcjs_dom_internals_set_automatic_text_replacement_enabled
         (unInternals (toInternals self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setAutomaticSpellingCorrectionEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_spelling_correction_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticSpellingCorrectionEnabled Mozilla Internals.automaticSpellingCorrectionEnabled documentation> 
internalsSetAutomaticSpellingCorrectionEnabled ::
                                               (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetAutomaticSpellingCorrectionEnabled self enabled
  = liftIO
      (ghcjs_dom_internals_set_automatic_spelling_correction_enabled
         (unInternals (toInternals self))
         enabled)
 
foreign import javascript unsafe
        "($1[\"isOverwriteModeEnabled\"]() ? 1 : 0)"
        ghcjs_dom_internals_is_overwrite_mode_enabled ::
        JSRef Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isOverwriteModeEnabled Mozilla Internals.isOverwriteModeEnabled documentation> 
internalsIsOverwriteModeEnabled ::
                                (MonadIO m, IsInternals self) => self -> m Bool
internalsIsOverwriteModeEnabled self
  = liftIO
      (ghcjs_dom_internals_is_overwrite_mode_enabled
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"toggleOverwriteModeEnabled\"]()"
        ghcjs_dom_internals_toggle_overwrite_mode_enabled ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toggleOverwriteModeEnabled Mozilla Internals.toggleOverwriteModeEnabled documentation> 
internalsToggleOverwriteModeEnabled ::
                                    (MonadIO m, IsInternals self) => self -> m ()
internalsToggleOverwriteModeEnabled self
  = liftIO
      (ghcjs_dom_internals_toggle_overwrite_mode_enabled
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"numberOfScrollableAreas\"]()"
        ghcjs_dom_internals_number_of_scrollable_areas ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfScrollableAreas Mozilla Internals.numberOfScrollableAreas documentation> 
internalsNumberOfScrollableAreas ::
                                 (MonadIO m, IsInternals self) => self -> m Word
internalsNumberOfScrollableAreas self
  = liftIO
      (ghcjs_dom_internals_number_of_scrollable_areas
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "($1[\"isPageBoxVisible\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_page_box_visible ::
        JSRef Internals -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPageBoxVisible Mozilla Internals.isPageBoxVisible documentation> 
internalsIsPageBoxVisible ::
                          (MonadIO m, IsInternals self) => self -> Int -> m Bool
internalsIsPageBoxVisible self pageNumber
  = liftIO
      (ghcjs_dom_internals_is_page_box_visible
         (unInternals (toInternals self))
         pageNumber)
 
foreign import javascript unsafe "$1[\"layerTreeAsText\"]($2, $3)"
        ghcjs_dom_internals_layer_tree_as_text ::
        JSRef Internals -> JSRef Document -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.layerTreeAsText Mozilla Internals.layerTreeAsText documentation> 
internalsLayerTreeAsText ::
                         (MonadIO m, IsInternals self, IsDocument document,
                          FromJSString result) =>
                           self -> Maybe document -> Word -> m result
internalsLayerTreeAsText self document flags
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_layer_tree_as_text
            (unInternals (toInternals self))
            (maybe jsNull (unDocument . toDocument) document)
            flags))
 
foreign import javascript unsafe
        "$1[\"scrollingStateTreeAsText\"]()"
        ghcjs_dom_internals_scrolling_state_tree_as_text ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollingStateTreeAsText Mozilla Internals.scrollingStateTreeAsText documentation> 
internalsScrollingStateTreeAsText ::
                                  (MonadIO m, IsInternals self, FromJSString result) =>
                                    self -> m result
internalsScrollingStateTreeAsText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_scrolling_state_tree_as_text
            (unInternals (toInternals self))))
 
foreign import javascript unsafe
        "$1[\"mainThreadScrollingReasons\"]()"
        ghcjs_dom_internals_main_thread_scrolling_reasons ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mainThreadScrollingReasons Mozilla Internals.mainThreadScrollingReasons documentation> 
internalsMainThreadScrollingReasons ::
                                    (MonadIO m, IsInternals self, FromJSString result) =>
                                      self -> m result
internalsMainThreadScrollingReasons self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_main_thread_scrolling_reasons
            (unInternals (toInternals self))))
 
foreign import javascript unsafe "$1[\"nonFastScrollableRects\"]()"
        ghcjs_dom_internals_non_fast_scrollable_rects ::
        JSRef Internals -> IO (JSRef ClientRectList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
internalsNonFastScrollableRects ::
                                (MonadIO m, IsInternals self) => self -> m (Maybe ClientRectList)
internalsNonFastScrollableRects self
  = liftIO
      ((ghcjs_dom_internals_non_fast_scrollable_rects
          (unInternals (toInternals self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"repaintRectsAsText\"]()"
        ghcjs_dom_internals_repaint_rects_as_text ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.repaintRectsAsText Mozilla Internals.repaintRectsAsText documentation> 
internalsRepaintRectsAsText ::
                            (MonadIO m, IsInternals self, FromJSString result) =>
                              self -> m result
internalsRepaintRectsAsText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_repaint_rects_as_text
            (unInternals (toInternals self))))
 
foreign import javascript unsafe
        "$1[\"garbageCollectDocumentResources\"]()"
        ghcjs_dom_internals_garbage_collect_document_resources ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.garbageCollectDocumentResources Mozilla Internals.garbageCollectDocumentResources documentation> 
internalsGarbageCollectDocumentResources ::
                                         (MonadIO m, IsInternals self) => self -> m ()
internalsGarbageCollectDocumentResources self
  = liftIO
      (ghcjs_dom_internals_garbage_collect_document_resources
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"allowRoundingHacks\"]()"
        ghcjs_dom_internals_allow_rounding_hacks ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allowRoundingHacks Mozilla Internals.allowRoundingHacks documentation> 
internalsAllowRoundingHacks ::
                            (MonadIO m, IsInternals self) => self -> m ()
internalsAllowRoundingHacks self
  = liftIO
      (ghcjs_dom_internals_allow_rounding_hacks
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"insertAuthorCSS\"]($2)"
        ghcjs_dom_internals_insert_author_css ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.insertAuthorCSS Mozilla Internals.insertAuthorCSS documentation> 
internalsInsertAuthorCSS ::
                         (MonadIO m, IsInternals self, ToJSString css) =>
                           self -> css -> m ()
internalsInsertAuthorCSS self css
  = liftIO
      (ghcjs_dom_internals_insert_author_css
         (unInternals (toInternals self))
         (toJSString css))
 
foreign import javascript unsafe "$1[\"insertUserCSS\"]($2)"
        ghcjs_dom_internals_insert_user_css ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.insertUserCSS Mozilla Internals.insertUserCSS documentation> 
internalsInsertUserCSS ::
                       (MonadIO m, IsInternals self, ToJSString css) =>
                         self -> css -> m ()
internalsInsertUserCSS self css
  = liftIO
      (ghcjs_dom_internals_insert_user_css
         (unInternals (toInternals self))
         (toJSString css))
 
foreign import javascript unsafe
        "$1[\"setBatteryStatus\"]($2, $3,\n$4, $5, $6)"
        ghcjs_dom_internals_set_battery_status ::
        JSRef Internals ->
          JSString -> Bool -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.batteryStatus Mozilla Internals.batteryStatus documentation> 
internalsSetBatteryStatus ::
                          (MonadIO m, IsInternals self, ToJSString eventType) =>
                            self -> eventType -> Bool -> Double -> Double -> Double -> m ()
internalsSetBatteryStatus self eventType charging chargingTime
  dischargingTime level
  = liftIO
      (ghcjs_dom_internals_set_battery_status
         (unInternals (toInternals self))
         (toJSString eventType)
         charging
         chargingTime
         dischargingTime
         level)
 
foreign import javascript unsafe
        "$1[\"setDeviceProximity\"]($2, $3,\n$4, $5)"
        ghcjs_dom_internals_set_device_proximity ::
        JSRef Internals -> JSString -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deviceProximity Mozilla Internals.deviceProximity documentation> 
internalsSetDeviceProximity ::
                            (MonadIO m, IsInternals self, ToJSString eventType) =>
                              self -> eventType -> Double -> Double -> Double -> m ()
internalsSetDeviceProximity self eventType value min max
  = liftIO
      (ghcjs_dom_internals_set_device_proximity
         (unInternals (toInternals self))
         (toJSString eventType)
         value
         min
         max)
 
foreign import javascript unsafe "$1[\"numberOfLiveNodes\"]()"
        ghcjs_dom_internals_number_of_live_nodes ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveNodes Mozilla Internals.numberOfLiveNodes documentation> 
internalsNumberOfLiveNodes ::
                           (MonadIO m, IsInternals self) => self -> m Word
internalsNumberOfLiveNodes self
  = liftIO
      (ghcjs_dom_internals_number_of_live_nodes
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"numberOfLiveDocuments\"]()"
        ghcjs_dom_internals_number_of_live_documents ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveDocuments Mozilla Internals.numberOfLiveDocuments documentation> 
internalsNumberOfLiveDocuments ::
                               (MonadIO m, IsInternals self) => self -> m Word
internalsNumberOfLiveDocuments self
  = liftIO
      (ghcjs_dom_internals_number_of_live_documents
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"consoleMessageArgumentCounts\"]()"
        ghcjs_dom_internals_console_message_argument_counts ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleMessageArgumentCounts Mozilla Internals.consoleMessageArgumentCounts documentation> 
internalsConsoleMessageArgumentCounts ::
                                      (MonadIO m, IsInternals self, FromJSString result) =>
                                        self -> m [result]
internalsConsoleMessageArgumentCounts self
  = liftIO
      ((ghcjs_dom_internals_console_message_argument_counts
          (unInternals (toInternals self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"openDummyInspectorFrontend\"]($2)"
        ghcjs_dom_internals_open_dummy_inspector_frontend ::
        JSRef Internals -> JSString -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
internalsOpenDummyInspectorFrontend ::
                                    (MonadIO m, IsInternals self, ToJSString url) =>
                                      self -> url -> m (Maybe DOMWindow)
internalsOpenDummyInspectorFrontend self url
  = liftIO
      ((ghcjs_dom_internals_open_dummy_inspector_frontend
          (unInternals (toInternals self))
          (toJSString url))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"closeDummyInspectorFrontend\"]()"
        ghcjs_dom_internals_close_dummy_inspector_frontend ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closeDummyInspectorFrontend Mozilla Internals.closeDummyInspectorFrontend documentation> 
internalsCloseDummyInspectorFrontend ::
                                     (MonadIO m, IsInternals self) => self -> m ()
internalsCloseDummyInspectorFrontend self
  = liftIO
      (ghcjs_dom_internals_close_dummy_inspector_frontend
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"setJavaScriptProfilingEnabled\"]($2)"
        ghcjs_dom_internals_set_java_script_profiling_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.javaScriptProfilingEnabled Mozilla Internals.javaScriptProfilingEnabled documentation> 
internalsSetJavaScriptProfilingEnabled ::
                                       (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetJavaScriptProfilingEnabled self creates
  = liftIO
      (ghcjs_dom_internals_set_java_script_profiling_enabled
         (unInternals (toInternals self))
         creates)
 
foreign import javascript unsafe
        "$1[\"setInspectorIsUnderTest\"]($2)"
        ghcjs_dom_internals_set_inspector_is_under_test ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorIsUnderTest Mozilla Internals.inspectorIsUnderTest documentation> 
internalsSetInspectorIsUnderTest ::
                                 (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetInspectorIsUnderTest self isUnderTest
  = liftIO
      (ghcjs_dom_internals_set_inspector_is_under_test
         (unInternals (toInternals self))
         isUnderTest)
 
foreign import javascript unsafe "$1[\"counterValue\"]($2)"
        ghcjs_dom_internals_counter_value ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.counterValue Mozilla Internals.counterValue documentation> 
internalsCounterValue ::
                      (MonadIO m, IsInternals self, IsElement element,
                       FromJSString result) =>
                        self -> Maybe element -> m result
internalsCounterValue self element
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_counter_value (unInternals (toInternals self))
            (maybe jsNull (unElement . toElement) element)))
 
foreign import javascript unsafe "$1[\"pageNumber\"]($2, $3, $4)"
        ghcjs_dom_internals_page_number ::
        JSRef Internals -> JSRef Element -> Float -> Float -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageNumber Mozilla Internals.pageNumber documentation> 
internalsPageNumber ::
                    (MonadIO m, IsInternals self, IsElement element) =>
                      self -> Maybe element -> Float -> Float -> m Int
internalsPageNumber self element pageWidth pageHeight
  = liftIO
      (ghcjs_dom_internals_page_number (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element)
         pageWidth
         pageHeight)
 
foreign import javascript unsafe "$1[\"shortcutIconURLs\"]()"
        ghcjs_dom_internals_shortcut_icon_ur_ls ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shortcutIconURLs Mozilla Internals.shortcutIconURLs documentation> 
internalsShortcutIconURLs ::
                          (MonadIO m, IsInternals self, FromJSString result) =>
                            self -> m [result]
internalsShortcutIconURLs self
  = liftIO
      ((ghcjs_dom_internals_shortcut_icon_ur_ls
          (unInternals (toInternals self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"allIconURLs\"]()"
        ghcjs_dom_internals_all_icon_ur_ls ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allIconURLs Mozilla Internals.allIconURLs documentation> 
internalsAllIconURLs ::
                     (MonadIO m, IsInternals self, FromJSString result) =>
                       self -> m [result]
internalsAllIconURLs self
  = liftIO
      ((ghcjs_dom_internals_all_icon_ur_ls
          (unInternals (toInternals self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"numberOfPages\"]($2, $3)"
        ghcjs_dom_internals_number_of_pages ::
        JSRef Internals -> Double -> Double -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfPages Mozilla Internals.numberOfPages documentation> 
internalsNumberOfPages ::
                       (MonadIO m, IsInternals self) => self -> Double -> Double -> m Int
internalsNumberOfPages self pageWidthInPixels pageHeightInPixels
  = liftIO
      (ghcjs_dom_internals_number_of_pages
         (unInternals (toInternals self))
         pageWidthInPixels
         pageHeightInPixels)
 
foreign import javascript unsafe "$1[\"pageProperty\"]($2, $3)"
        ghcjs_dom_internals_page_property ::
        JSRef Internals -> JSString -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageProperty Mozilla Internals.pageProperty documentation> 
internalsPageProperty ::
                      (MonadIO m, IsInternals self, ToJSString propertyName,
                       FromJSString result) =>
                        self -> propertyName -> Int -> m result
internalsPageProperty self propertyName pageNumber
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_page_property (unInternals (toInternals self))
            (toJSString propertyName)
            pageNumber))
 
foreign import javascript unsafe
        "$1[\"pageSizeAndMarginsInPixels\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_internals_page_size_and_margins_in_pixels ::
        JSRef Internals ->
          Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageSizeAndMarginsInPixels Mozilla Internals.pageSizeAndMarginsInPixels documentation> 
internalsPageSizeAndMarginsInPixels ::
                                    (MonadIO m, IsInternals self, FromJSString result) =>
                                      self ->
                                        Int -> Int -> Int -> Int -> Int -> Int -> Int -> m result
internalsPageSizeAndMarginsInPixels self pageIndex width height
  marginTop marginRight marginBottom marginLeft
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_page_size_and_margins_in_pixels
            (unInternals (toInternals self))
            pageIndex
            width
            height
            marginTop
            marginRight
            marginBottom
            marginLeft))
 
foreign import javascript unsafe
        "$1[\"setPageScaleFactor\"]($2, $3,\n$4)"
        ghcjs_dom_internals_set_page_scale_factor ::
        JSRef Internals -> Float -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageScaleFactor Mozilla Internals.pageScaleFactor documentation> 
internalsSetPageScaleFactor ::
                            (MonadIO m, IsInternals self) =>
                              self -> Float -> Int -> Int -> m ()
internalsSetPageScaleFactor self scaleFactor x y
  = liftIO
      (ghcjs_dom_internals_set_page_scale_factor
         (unInternals (toInternals self))
         scaleFactor
         x
         y)
 
foreign import javascript unsafe "$1[\"setPageZoomFactor\"]($2)"
        ghcjs_dom_internals_set_page_zoom_factor ::
        JSRef Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageZoomFactor Mozilla Internals.pageZoomFactor documentation> 
internalsSetPageZoomFactor ::
                           (MonadIO m, IsInternals self) => self -> Float -> m ()
internalsSetPageZoomFactor self zoomFactor
  = liftIO
      (ghcjs_dom_internals_set_page_zoom_factor
         (unInternals (toInternals self))
         zoomFactor)
 
foreign import javascript unsafe "$1[\"setHeaderHeight\"]($2)"
        ghcjs_dom_internals_set_header_height ::
        JSRef Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.headerHeight Mozilla Internals.headerHeight documentation> 
internalsSetHeaderHeight ::
                         (MonadIO m, IsInternals self) => self -> Float -> m ()
internalsSetHeaderHeight self height
  = liftIO
      (ghcjs_dom_internals_set_header_height
         (unInternals (toInternals self))
         height)
 
foreign import javascript unsafe "$1[\"setFooterHeight\"]($2)"
        ghcjs_dom_internals_set_footer_height ::
        JSRef Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.footerHeight Mozilla Internals.footerHeight documentation> 
internalsSetFooterHeight ::
                         (MonadIO m, IsInternals self) => self -> Float -> m ()
internalsSetFooterHeight self height
  = liftIO
      (ghcjs_dom_internals_set_footer_height
         (unInternals (toInternals self))
         height)
 
foreign import javascript unsafe "$1[\"setTopContentInset\"]($2)"
        ghcjs_dom_internals_set_top_content_inset ::
        JSRef Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.topContentInset Mozilla Internals.topContentInset documentation> 
internalsSetTopContentInset ::
                            (MonadIO m, IsInternals self) => self -> Float -> m ()
internalsSetTopContentInset self contentInset
  = liftIO
      (ghcjs_dom_internals_set_top_content_inset
         (unInternals (toInternals self))
         contentInset)
 
foreign import javascript unsafe
        "$1[\"webkitWillEnterFullScreenForElement\"]($2)"
        ghcjs_dom_internals_webkit_will_enter_full_screen_for_element ::
        JSRef Internals -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitWillEnterFullScreenForElement Mozilla Internals.webkitWillEnterFullScreenForElement documentation> 
internalsWebkitWillEnterFullScreenForElement ::
                                             (MonadIO m, IsInternals self, IsElement element) =>
                                               self -> Maybe element -> m ()
internalsWebkitWillEnterFullScreenForElement self element
  = liftIO
      (ghcjs_dom_internals_webkit_will_enter_full_screen_for_element
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"webkitDidEnterFullScreenForElement\"]($2)"
        ghcjs_dom_internals_webkit_did_enter_full_screen_for_element ::
        JSRef Internals -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitDidEnterFullScreenForElement Mozilla Internals.webkitDidEnterFullScreenForElement documentation> 
internalsWebkitDidEnterFullScreenForElement ::
                                            (MonadIO m, IsInternals self, IsElement element) =>
                                              self -> Maybe element -> m ()
internalsWebkitDidEnterFullScreenForElement self element
  = liftIO
      (ghcjs_dom_internals_webkit_did_enter_full_screen_for_element
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"webkitWillExitFullScreenForElement\"]($2)"
        ghcjs_dom_internals_webkit_will_exit_full_screen_for_element ::
        JSRef Internals -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitWillExitFullScreenForElement Mozilla Internals.webkitWillExitFullScreenForElement documentation> 
internalsWebkitWillExitFullScreenForElement ::
                                            (MonadIO m, IsInternals self, IsElement element) =>
                                              self -> Maybe element -> m ()
internalsWebkitWillExitFullScreenForElement self element
  = liftIO
      (ghcjs_dom_internals_webkit_will_exit_full_screen_for_element
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"webkitDidExitFullScreenForElement\"]($2)"
        ghcjs_dom_internals_webkit_did_exit_full_screen_for_element ::
        JSRef Internals -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitDidExitFullScreenForElement Mozilla Internals.webkitDidExitFullScreenForElement documentation> 
internalsWebkitDidExitFullScreenForElement ::
                                           (MonadIO m, IsInternals self, IsElement element) =>
                                             self -> Maybe element -> m ()
internalsWebkitDidExitFullScreenForElement self element
  = liftIO
      (ghcjs_dom_internals_webkit_did_exit_full_screen_for_element
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"setApplicationCacheOriginQuota\"]($2)"
        ghcjs_dom_internals_set_application_cache_origin_quota ::
        JSRef Internals -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationCacheOriginQuota Mozilla Internals.applicationCacheOriginQuota documentation> 
internalsSetApplicationCacheOriginQuota ::
                                        (MonadIO m, IsInternals self) => self -> Word64 -> m ()
internalsSetApplicationCacheOriginQuota self quota
  = liftIO
      (ghcjs_dom_internals_set_application_cache_origin_quota
         (unInternals (toInternals self))
         (fromIntegral quota))
 
foreign import javascript unsafe
        "$1[\"registerURLSchemeAsBypassingContentSecurityPolicy\"]($2)"
        ghcjs_dom_internals_register_url_scheme_as_bypassing_content_security_policy
        :: JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.registerURLSchemeAsBypassingContentSecurityPolicy Mozilla Internals.registerURLSchemeAsBypassingContentSecurityPolicy documentation> 
internalsRegisterURLSchemeAsBypassingContentSecurityPolicy ::
                                                           (MonadIO m, IsInternals self,
                                                            ToJSString scheme) =>
                                                             self -> scheme -> m ()
internalsRegisterURLSchemeAsBypassingContentSecurityPolicy self
  scheme
  = liftIO
      (ghcjs_dom_internals_register_url_scheme_as_bypassing_content_security_policy
         (unInternals (toInternals self))
         (toJSString scheme))
 
foreign import javascript unsafe
        "$1[\"removeURLSchemeRegisteredAsBypassingContentSecurityPolicy\"]($2)"
        ghcjs_dom_internals_remove_url_scheme_registered_as_bypassing_content_security_policy
        :: JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.removeURLSchemeRegisteredAsBypassingContentSecurityPolicy Mozilla Internals.removeURLSchemeRegisteredAsBypassingContentSecurityPolicy documentation> 
internalsRemoveURLSchemeRegisteredAsBypassingContentSecurityPolicy ::
                                                                   (MonadIO m, IsInternals self,
                                                                    ToJSString scheme) =>
                                                                     self -> scheme -> m ()
internalsRemoveURLSchemeRegisteredAsBypassingContentSecurityPolicy
  self scheme
  = liftIO
      (ghcjs_dom_internals_remove_url_scheme_registered_as_bypassing_content_security_policy
         (unInternals (toInternals self))
         (toJSString scheme))
 
foreign import javascript unsafe "$1[\"mallocStatistics\"]()"
        ghcjs_dom_internals_malloc_statistics ::
        JSRef Internals -> IO (JSRef MallocStatistics)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
internalsMallocStatistics ::
                          (MonadIO m, IsInternals self) => self -> m (Maybe MallocStatistics)
internalsMallocStatistics self
  = liftIO
      ((ghcjs_dom_internals_malloc_statistics
          (unInternals (toInternals self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"typeConversions\"]()"
        ghcjs_dom_internals_type_conversions ::
        JSRef Internals -> IO (JSRef TypeConversions)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
internalsTypeConversions ::
                         (MonadIO m, IsInternals self) => self -> m (Maybe TypeConversions)
internalsTypeConversions self
  = liftIO
      ((ghcjs_dom_internals_type_conversions
          (unInternals (toInternals self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"memoryInfo\"]()"
        ghcjs_dom_internals_memory_info ::
        JSRef Internals -> IO (JSRef MemoryInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
internalsMemoryInfo ::
                    (MonadIO m, IsInternals self) => self -> m (Maybe MemoryInfo)
internalsMemoryInfo self
  = liftIO
      ((ghcjs_dom_internals_memory_info (unInternals (toInternals self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getReferencedFilePaths\"]()"
        ghcjs_dom_internals_get_referenced_file_paths ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.referencedFilePaths Mozilla Internals.referencedFilePaths documentation> 
internalsGetReferencedFilePaths ::
                                (MonadIO m, IsInternals self, FromJSString result) =>
                                  self -> m [result]
internalsGetReferencedFilePaths self
  = liftIO
      ((ghcjs_dom_internals_get_referenced_file_paths
          (unInternals (toInternals self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"startTrackingRepaints\"]()"
        ghcjs_dom_internals_start_tracking_repaints ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.startTrackingRepaints Mozilla Internals.startTrackingRepaints documentation> 
internalsStartTrackingRepaints ::
                               (MonadIO m, IsInternals self) => self -> m ()
internalsStartTrackingRepaints self
  = liftIO
      (ghcjs_dom_internals_start_tracking_repaints
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"stopTrackingRepaints\"]()"
        ghcjs_dom_internals_stop_tracking_repaints ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.stopTrackingRepaints Mozilla Internals.stopTrackingRepaints documentation> 
internalsStopTrackingRepaints ::
                              (MonadIO m, IsInternals self) => self -> m ()
internalsStopTrackingRepaints self
  = liftIO
      (ghcjs_dom_internals_stop_tracking_repaints
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "($1[\"isTimerThrottled\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_timer_throttled ::
        JSRef Internals -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isTimerThrottled Mozilla Internals.isTimerThrottled documentation> 
internalsIsTimerThrottled ::
                          (MonadIO m, IsInternals self) => self -> Int -> m Bool
internalsIsTimerThrottled self timerHandle
  = liftIO
      (ghcjs_dom_internals_is_timer_throttled
         (unInternals (toInternals self))
         timerHandle)
 
foreign import javascript unsafe
        "$1[\"updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks\"]($2)"
        ghcjs_dom_internals_update_layout_ignore_pending_stylesheets_and_run_post_layout_tasks
        :: JSRef Internals -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks Mozilla Internals.updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks documentation> 
internalsUpdateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks ::
                                                                   (MonadIO m, IsInternals self,
                                                                    IsNode node) =>
                                                                     self -> Maybe node -> m ()
internalsUpdateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks
  self node
  = liftIO
      (ghcjs_dom_internals_update_layout_ignore_pending_stylesheets_and_run_post_layout_tasks
         (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node))
 
foreign import javascript unsafe "$1[\"getCurrentCursorInfo\"]()"
        ghcjs_dom_internals_get_current_cursor_info ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.currentCursorInfo Mozilla Internals.currentCursorInfo documentation> 
internalsGetCurrentCursorInfo ::
                              (MonadIO m, IsInternals self, FromJSString result) =>
                                self -> m result
internalsGetCurrentCursorInfo self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_get_current_cursor_info
            (unInternals (toInternals self))))
 
foreign import javascript unsafe
        "$1[\"markerTextForListItem\"]($2)"
        ghcjs_dom_internals_marker_text_for_list_item ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerTextForListItem Mozilla Internals.markerTextForListItem documentation> 
internalsMarkerTextForListItem ::
                               (MonadIO m, IsInternals self, IsElement element,
                                FromJSString result) =>
                                 self -> Maybe element -> m result
internalsMarkerTextForListItem self element
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_marker_text_for_list_item
            (unInternals (toInternals self))
            (maybe jsNull (unElement . toElement) element)))
 
foreign import javascript unsafe "$1[\"deserializeBuffer\"]($2)"
        ghcjs_dom_internals_deserialize_buffer ::
        JSRef Internals ->
          JSRef ArrayBuffer -> IO (JSRef SerializedScriptValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
internalsDeserializeBuffer ::
                           (MonadIO m, IsInternals self, IsArrayBuffer buffer) =>
                             self -> Maybe buffer -> m (Maybe SerializedScriptValue)
internalsDeserializeBuffer self buffer
  = liftIO
      ((ghcjs_dom_internals_deserialize_buffer
          (unInternals (toInternals self))
          (maybe jsNull (unArrayBuffer . toArrayBuffer) buffer))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"serializeObject\"]($2)"
        ghcjs_dom_internals_serialize_object ::
        JSRef Internals ->
          JSRef SerializedScriptValue -> IO (JSRef ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
internalsSerializeObject ::
                         (MonadIO m, IsInternals self, IsSerializedScriptValue obj) =>
                           self -> Maybe obj -> m (Maybe ArrayBuffer)
internalsSerializeObject self obj
  = liftIO
      ((ghcjs_dom_internals_serialize_object
          (unInternals (toInternals self))
          (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
             obj))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"setUsesOverlayScrollbars\"]($2)"
        ghcjs_dom_internals_set_uses_overlay_scrollbars ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.usesOverlayScrollbars Mozilla Internals.usesOverlayScrollbars documentation> 
internalsSetUsesOverlayScrollbars ::
                                  (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetUsesOverlayScrollbars self enabled
  = liftIO
      (ghcjs_dom_internals_set_uses_overlay_scrollbars
         (unInternals (toInternals self))
         enabled)
 
foreign import javascript unsafe "$1[\"forceReload\"]($2)"
        ghcjs_dom_internals_force_reload ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.forceReload Mozilla Internals.forceReload documentation> 
internalsForceReload ::
                     (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsForceReload self endToEnd
  = liftIO
      (ghcjs_dom_internals_force_reload (unInternals (toInternals self))
         endToEnd)
 
foreign import javascript unsafe
        "$1[\"simulateAudioInterruption\"]($2)"
        ghcjs_dom_internals_simulate_audio_interruption ::
        JSRef Internals -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateAudioInterruption Mozilla Internals.simulateAudioInterruption documentation> 
internalsSimulateAudioInterruption ::
                                   (MonadIO m, IsInternals self, IsNode node) =>
                                     self -> Maybe node -> m ()
internalsSimulateAudioInterruption self node
  = liftIO
      (ghcjs_dom_internals_simulate_audio_interruption
         (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node))
 
foreign import javascript unsafe
        "($1[\"mediaElementHasCharacteristic\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_internals_media_element_has_characteristic ::
        JSRef Internals -> JSRef Node -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mediaElementHasCharacteristic Mozilla Internals.mediaElementHasCharacteristic documentation> 
internalsMediaElementHasCharacteristic ::
                                       (MonadIO m, IsInternals self, IsNode node,
                                        ToJSString characteristic) =>
                                         self -> Maybe node -> characteristic -> m Bool
internalsMediaElementHasCharacteristic self node characteristic
  = liftIO
      (ghcjs_dom_internals_media_element_has_characteristic
         (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node)
         (toJSString characteristic))
 
foreign import javascript unsafe "$1[\"initializeMockCDM\"]()"
        ghcjs_dom_internals_initialize_mock_cdm :: JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockCDM Mozilla Internals.initializeMockCDM documentation> 
internalsInitializeMockCDM ::
                           (MonadIO m, IsInternals self) => self -> m ()
internalsInitializeMockCDM self
  = liftIO
      (ghcjs_dom_internals_initialize_mock_cdm
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"enableMockSpeechSynthesizer\"]()"
        ghcjs_dom_internals_enable_mock_speech_synthesizer ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.enableMockSpeechSynthesizer Mozilla Internals.enableMockSpeechSynthesizer documentation> 
internalsEnableMockSpeechSynthesizer ::
                                     (MonadIO m, IsInternals self) => self -> m ()
internalsEnableMockSpeechSynthesizer self
  = liftIO
      (ghcjs_dom_internals_enable_mock_speech_synthesizer
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"getImageSourceURL\"]($2)"
        ghcjs_dom_internals_get_image_source_url ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.imageSourceURL Mozilla Internals.imageSourceURL documentation> 
internalsGetImageSourceURL ::
                           (MonadIO m, IsInternals self, IsElement element,
                            FromJSString result) =>
                             self -> Maybe element -> m result
internalsGetImageSourceURL self element
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_get_image_source_url
            (unInternals (toInternals self))
            (maybe jsNull (unElement . toElement) element)))
 
foreign import javascript unsafe
        "$1[\"captionsStyleSheetOverride\"]()"
        ghcjs_dom_internals_captions_style_sheet_override ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
internalsCaptionsStyleSheetOverride ::
                                    (MonadIO m, IsInternals self, FromJSString result) =>
                                      self -> m result
internalsCaptionsStyleSheetOverride self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_captions_style_sheet_override
            (unInternals (toInternals self))))
 
foreign import javascript unsafe
        "$1[\"setCaptionsStyleSheetOverride\"]($2)"
        ghcjs_dom_internals_set_captions_style_sheet_override ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
internalsSetCaptionsStyleSheetOverride ::
                                       (MonadIO m, IsInternals self, ToJSString override) =>
                                         self -> override -> m ()
internalsSetCaptionsStyleSheetOverride self override
  = liftIO
      (ghcjs_dom_internals_set_captions_style_sheet_override
         (unInternals (toInternals self))
         (toJSString override))
 
foreign import javascript unsafe
        "$1[\"setPrimaryAudioTrackLanguageOverride\"]($2)"
        ghcjs_dom_internals_set_primary_audio_track_language_override ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.primaryAudioTrackLanguageOverride Mozilla Internals.primaryAudioTrackLanguageOverride documentation> 
internalsSetPrimaryAudioTrackLanguageOverride ::
                                              (MonadIO m, IsInternals self, ToJSString language) =>
                                                self -> language -> m ()
internalsSetPrimaryAudioTrackLanguageOverride self language
  = liftIO
      (ghcjs_dom_internals_set_primary_audio_track_language_override
         (unInternals (toInternals self))
         (toJSString language))
 
foreign import javascript unsafe
        "$1[\"setCaptionDisplayMode\"]($2)"
        ghcjs_dom_internals_set_caption_display_mode ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionDisplayMode Mozilla Internals.captionDisplayMode documentation> 
internalsSetCaptionDisplayMode ::
                               (MonadIO m, IsInternals self, ToJSString mode) =>
                                 self -> mode -> m ()
internalsSetCaptionDisplayMode self mode
  = liftIO
      (ghcjs_dom_internals_set_caption_display_mode
         (unInternals (toInternals self))
         (toJSString mode))
 
foreign import javascript unsafe "$1[\"createTimeRanges\"]($2, $3)"
        ghcjs_dom_internals_create_time_ranges ::
        JSRef Internals ->
          JSRef Float32Array -> JSRef Float32Array -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
internalsCreateTimeRanges ::
                          (MonadIO m, IsInternals self, IsFloat32Array startTimes,
                           IsFloat32Array endTimes) =>
                            self -> Maybe startTimes -> Maybe endTimes -> m (Maybe TimeRanges)
internalsCreateTimeRanges self startTimes endTimes
  = liftIO
      ((ghcjs_dom_internals_create_time_ranges
          (unInternals (toInternals self))
          (maybe jsNull (unFloat32Array . toFloat32Array) startTimes)
          (maybe jsNull (unFloat32Array . toFloat32Array) endTimes))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"closestTimeToTimeRanges\"]($2,\n$3)"
        ghcjs_dom_internals_closest_time_to_time_ranges ::
        JSRef Internals -> Double -> JSRef TimeRanges -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closestTimeToTimeRanges Mozilla Internals.closestTimeToTimeRanges documentation> 
internalsClosestTimeToTimeRanges ::
                                 (MonadIO m, IsInternals self, IsTimeRanges ranges) =>
                                   self -> Double -> Maybe ranges -> m Double
internalsClosestTimeToTimeRanges self time ranges
  = liftIO
      (ghcjs_dom_internals_closest_time_to_time_ranges
         (unInternals (toInternals self))
         time
         (maybe jsNull (unTimeRanges . toTimeRanges) ranges))
 
foreign import javascript unsafe
        "($1[\"isSelectPopupVisible\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_select_popup_visible ::
        JSRef Internals -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isSelectPopupVisible Mozilla Internals.isSelectPopupVisible documentation> 
internalsIsSelectPopupVisible ::
                              (MonadIO m, IsInternals self, IsNode node) =>
                                self -> Maybe node -> m Bool
internalsIsSelectPopupVisible self node
  = liftIO
      (ghcjs_dom_internals_is_select_popup_visible
         (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node))
 
foreign import javascript unsafe "($1[\"isVibrating\"]() ? 1 : 0)"
        ghcjs_dom_internals_is_vibrating :: JSRef Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isVibrating Mozilla Internals.isVibrating documentation> 
internalsIsVibrating ::
                     (MonadIO m, IsInternals self) => self -> m Bool
internalsIsVibrating self
  = liftIO
      (ghcjs_dom_internals_is_vibrating (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "($1[\"isPluginUnavailabilityIndicatorObscured\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_plugin_unavailability_indicator_obscured ::
        JSRef Internals -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginUnavailabilityIndicatorObscured Mozilla Internals.isPluginUnavailabilityIndicatorObscured documentation> 
internalsIsPluginUnavailabilityIndicatorObscured ::
                                                 (MonadIO m, IsInternals self, IsElement element) =>
                                                   self -> Maybe element -> m Bool
internalsIsPluginUnavailabilityIndicatorObscured self element
  = liftIO
      (ghcjs_dom_internals_is_plugin_unavailability_indicator_obscured
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "($1[\"isPluginSnapshotted\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_plugin_snapshotted ::
        JSRef Internals -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginSnapshotted Mozilla Internals.isPluginSnapshotted documentation> 
internalsIsPluginSnapshotted ::
                             (MonadIO m, IsInternals self, IsElement element) =>
                               self -> Maybe element -> m Bool
internalsIsPluginSnapshotted self element
  = liftIO
      (ghcjs_dom_internals_is_plugin_snapshotted
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe "$1[\"selectionBounds\"]()"
        ghcjs_dom_internals_selection_bounds ::
        JSRef Internals -> IO (JSRef ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
internalsSelectionBounds ::
                         (MonadIO m, IsInternals self) => self -> m (Maybe ClientRect)
internalsSelectionBounds self
  = liftIO
      ((ghcjs_dom_internals_selection_bounds
          (unInternals (toInternals self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"initializeMockMediaSource\"]()"
        ghcjs_dom_internals_initialize_mock_media_source ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockMediaSource Mozilla Internals.initializeMockMediaSource documentation> 
internalsInitializeMockMediaSource ::
                                   (MonadIO m, IsInternals self) => self -> m ()
internalsInitializeMockMediaSource self
  = liftIO
      (ghcjs_dom_internals_initialize_mock_media_source
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"bufferedSamplesForTrackID\"]($2,\n$3)"
        ghcjs_dom_internals_buffered_samples_for_track_id ::
        JSRef Internals ->
          JSRef SourceBuffer -> JSString -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.bufferedSamplesForTrackID Mozilla Internals.bufferedSamplesForTrackID documentation> 
internalsBufferedSamplesForTrackID ::
                                   (MonadIO m, IsInternals self, IsSourceBuffer buffer,
                                    ToJSString trackID, FromJSString result) =>
                                     self -> Maybe buffer -> trackID -> m [result]
internalsBufferedSamplesForTrackID self buffer trackID
  = liftIO
      ((ghcjs_dom_internals_buffered_samples_for_track_id
          (unInternals (toInternals self))
          (maybe jsNull (unSourceBuffer . toSourceBuffer) buffer)
          (toJSString trackID))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"beginMediaSessionInterruption\"]()"
        ghcjs_dom_internals_begin_media_session_interruption ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.beginMediaSessionInterruption Mozilla Internals.beginMediaSessionInterruption documentation> 
internalsBeginMediaSessionInterruption ::
                                       (MonadIO m, IsInternals self) => self -> m ()
internalsBeginMediaSessionInterruption self
  = liftIO
      (ghcjs_dom_internals_begin_media_session_interruption
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"endMediaSessionInterruption\"]($2)"
        ghcjs_dom_internals_end_media_session_interruption ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.endMediaSessionInterruption Mozilla Internals.endMediaSessionInterruption documentation> 
internalsEndMediaSessionInterruption ::
                                     (MonadIO m, IsInternals self, ToJSString flags) =>
                                       self -> flags -> m ()
internalsEndMediaSessionInterruption self flags
  = liftIO
      (ghcjs_dom_internals_end_media_session_interruption
         (unInternals (toInternals self))
         (toJSString flags))
 
foreign import javascript unsafe
        "$1[\"applicationWillEnterForeground\"]()"
        ghcjs_dom_internals_application_will_enter_foreground ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterForeground Mozilla Internals.applicationWillEnterForeground documentation> 
internalsApplicationWillEnterForeground ::
                                        (MonadIO m, IsInternals self) => self -> m ()
internalsApplicationWillEnterForeground self
  = liftIO
      (ghcjs_dom_internals_application_will_enter_foreground
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"applicationWillEnterBackground\"]()"
        ghcjs_dom_internals_application_will_enter_background ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterBackground Mozilla Internals.applicationWillEnterBackground documentation> 
internalsApplicationWillEnterBackground ::
                                        (MonadIO m, IsInternals self) => self -> m ()
internalsApplicationWillEnterBackground self
  = liftIO
      (ghcjs_dom_internals_application_will_enter_background
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"setMediaSessionRestrictions\"]($2,\n$3)"
        ghcjs_dom_internals_set_media_session_restrictions ::
        JSRef Internals -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mediaSessionRestrictions Mozilla Internals.mediaSessionRestrictions documentation> 
internalsSetMediaSessionRestrictions ::
                                     (MonadIO m, IsInternals self, ToJSString mediaType,
                                      ToJSString restrictions) =>
                                       self -> mediaType -> restrictions -> m ()
internalsSetMediaSessionRestrictions self mediaType restrictions
  = liftIO
      (ghcjs_dom_internals_set_media_session_restrictions
         (unInternals (toInternals self))
         (toJSString mediaType)
         (toJSString restrictions))
 
foreign import javascript unsafe
        "$1[\"postRemoteControlCommand\"]($2)"
        ghcjs_dom_internals_post_remote_control_command ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.postRemoteControlCommand Mozilla Internals.postRemoteControlCommand documentation> 
internalsPostRemoteControlCommand ::
                                  (MonadIO m, IsInternals self, ToJSString command) =>
                                    self -> command -> m ()
internalsPostRemoteControlCommand self command
  = liftIO
      (ghcjs_dom_internals_post_remote_control_command
         (unInternals (toInternals self))
         (toJSString command))
 
foreign import javascript unsafe "$1[\"simulateSystemSleep\"]()"
        ghcjs_dom_internals_simulate_system_sleep ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemSleep Mozilla Internals.simulateSystemSleep documentation> 
internalsSimulateSystemSleep ::
                             (MonadIO m, IsInternals self) => self -> m ()
internalsSimulateSystemSleep self
  = liftIO
      (ghcjs_dom_internals_simulate_system_sleep
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"simulateSystemWake\"]()"
        ghcjs_dom_internals_simulate_system_wake ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemWake Mozilla Internals.simulateSystemWake documentation> 
internalsSimulateSystemWake ::
                            (MonadIO m, IsInternals self) => self -> m ()
internalsSimulateSystemWake self
  = liftIO
      (ghcjs_dom_internals_simulate_system_wake
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"installMockPageOverlay\"]($2)"
        ghcjs_dom_internals_install_mock_page_overlay ::
        JSRef Internals -> JSRef PageOverlayType -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.installMockPageOverlay Mozilla Internals.installMockPageOverlay documentation> 
internalsInstallMockPageOverlay ::
                                (MonadIO m, IsInternals self) => self -> PageOverlayType -> m ()
internalsInstallMockPageOverlay self type'
  = liftIO
      (ghcjs_dom_internals_install_mock_page_overlay
         (unInternals (toInternals self))
         (ptoJSRef type'))
 
foreign import javascript unsafe
        "$1[\"pageOverlayLayerTreeAsText\"]()"
        ghcjs_dom_internals_page_overlay_layer_tree_as_text ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageOverlayLayerTreeAsText Mozilla Internals.pageOverlayLayerTreeAsText documentation> 
internalsPageOverlayLayerTreeAsText ::
                                    (MonadIO m, IsInternals self, FromJSString result) =>
                                      self -> m result
internalsPageOverlayLayerTreeAsText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_internals_page_overlay_layer_tree_as_text
            (unInternals (toInternals self))))
 
foreign import javascript unsafe "$1[\"setPageMuted\"]($2)"
        ghcjs_dom_internals_set_page_muted ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageMuted Mozilla Internals.pageMuted documentation> 
internalsSetPageMuted ::
                      (MonadIO m, IsInternals self) => self -> Bool -> m ()
internalsSetPageMuted self muted
  = liftIO
      (ghcjs_dom_internals_set_page_muted
         (unInternals (toInternals self))
         muted)
 
foreign import javascript unsafe
        "($1[\"isPagePlayingAudio\"]() ? 1 : 0)"
        ghcjs_dom_internals_is_page_playing_audio ::
        JSRef Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPagePlayingAudio Mozilla Internals.isPagePlayingAudio documentation> 
internalsIsPagePlayingAudio ::
                            (MonadIO m, IsInternals self) => self -> m Bool
internalsIsPagePlayingAudio self
  = liftIO
      (ghcjs_dom_internals_is_page_playing_audio
         (unInternals (toInternals self)))
cLAYER_TREE_INCLUDES_VISIBLE_RECTS = 1
cLAYER_TREE_INCLUDES_TILE_CACHES = 2
cLAYER_TREE_INCLUDES_REPAINT_RECTS = 4
cLAYER_TREE_INCLUDES_PAINTING_PHASES = 8
cLAYER_TREE_INCLUDES_CONTENT_LAYERS = 16
 
foreign import javascript unsafe "$1[\"settings\"]"
        ghcjs_dom_internals_get_settings ::
        JSRef Internals -> IO (JSRef InternalSettings)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.settings Mozilla Internals.settings documentation> 
internalsGetSettings ::
                     (MonadIO m, IsInternals self) => self -> m (Maybe InternalSettings)
internalsGetSettings self
  = liftIO
      ((ghcjs_dom_internals_get_settings
          (unInternals (toInternals self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"workerThreadCount\"]"
        ghcjs_dom_internals_get_worker_thread_count ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.workerThreadCount Mozilla Internals.workerThreadCount documentation> 
internalsGetWorkerThreadCount ::
                              (MonadIO m, IsInternals self) => self -> m Word
internalsGetWorkerThreadCount self
  = liftIO
      (ghcjs_dom_internals_get_worker_thread_count
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"consoleProfiles\"]"
        ghcjs_dom_internals_get_console_profiles ::
        JSRef Internals -> IO (JSRef [Maybe ScriptProfile])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleProfiles Mozilla Internals.consoleProfiles documentation> 
internalsGetConsoleProfiles ::
                            (MonadIO m, IsInternals self) => self -> m [Maybe ScriptProfile]
internalsGetConsoleProfiles self
  = liftIO
      ((ghcjs_dom_internals_get_console_profiles
          (unInternals (toInternals self)))
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.Internals (
  ) where
#endif
