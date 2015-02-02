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
                 (IsInternals self, IsNode node, FromJSString result) =>
                   self -> Maybe node -> IO result
internalsAddress self node
  = fromJSString <$>
      (ghcjs_dom_internals_address (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node))
 
foreign import javascript unsafe
        "($1[\"nodeNeedsStyleRecalc\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_node_needs_style_recalc ::
        JSRef Internals -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nodeNeedsStyleRecalc Mozilla Internals.nodeNeedsStyleRecalc documentation> 
internalsNodeNeedsStyleRecalc ::
                              (IsInternals self, IsNode node) => self -> Maybe node -> IO Bool
internalsNodeNeedsStyleRecalc self node
  = ghcjs_dom_internals_node_needs_style_recalc
      (unInternals (toInternals self))
      (maybe jsNull (unNode . toNode) node)
 
foreign import javascript unsafe "$1[\"description\"]($2)"
        ghcjs_dom_internals_description ::
        JSRef Internals -> JSRef a -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.description Mozilla Internals.description documentation> 
internalsDescription ::
                     (IsInternals self, FromJSString result) =>
                       self -> JSRef a -> IO result
internalsDescription self value
  = fromJSString <$>
      (ghcjs_dom_internals_description (unInternals (toInternals self))
         value)
 
foreign import javascript unsafe
        "$1[\"elementRenderTreeAsText\"]($2)"
        ghcjs_dom_internals_element_render_tree_as_text ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementRenderTreeAsText Mozilla Internals.elementRenderTreeAsText documentation> 
internalsElementRenderTreeAsText ::
                                 (IsInternals self, IsElement element, FromJSString result) =>
                                   self -> Maybe element -> IO result
internalsElementRenderTreeAsText self element
  = fromJSString <$>
      (ghcjs_dom_internals_element_render_tree_as_text
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "($1[\"isPreloaded\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_preloaded ::
        JSRef Internals -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPreloaded Mozilla Internals.isPreloaded documentation> 
internalsIsPreloaded ::
                     (IsInternals self, ToJSString url) => self -> url -> IO Bool
internalsIsPreloaded self url
  = ghcjs_dom_internals_is_preloaded (unInternals (toInternals self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"isLoadingFromMemoryCache\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_loading_from_memory_cache ::
        JSRef Internals -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isLoadingFromMemoryCache Mozilla Internals.isLoadingFromMemoryCache documentation> 
internalsIsLoadingFromMemoryCache ::
                                  (IsInternals self, ToJSString url) => self -> url -> IO Bool
internalsIsLoadingFromMemoryCache self url
  = ghcjs_dom_internals_is_loading_from_memory_cache
      (unInternals (toInternals self))
      (toJSString url)
 
foreign import javascript unsafe
        "$1[\"computedStyleIncludingVisitedInfo\"]($2)"
        ghcjs_dom_internals_computed_style_including_visited_info ::
        JSRef Internals -> JSRef Node -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.computedStyleIncludingVisitedInfo Mozilla Internals.computedStyleIncludingVisitedInfo documentation> 
internalsComputedStyleIncludingVisitedInfo ::
                                           (IsInternals self, IsNode node) =>
                                             self -> Maybe node -> IO (Maybe CSSStyleDeclaration)
internalsComputedStyleIncludingVisitedInfo self node
  = (ghcjs_dom_internals_computed_style_including_visited_info
       (unInternals (toInternals self))
       (maybe jsNull (unNode . toNode) node))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"ensureShadowRoot\"]($2)"
        ghcjs_dom_internals_ensure_shadow_root ::
        JSRef Internals -> JSRef Element -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.ensureShadowRoot Mozilla Internals.ensureShadowRoot documentation> 
internalsEnsureShadowRoot ::
                          (IsInternals self, IsElement host) =>
                            self -> Maybe host -> IO (Maybe Node)
internalsEnsureShadowRoot self host
  = (ghcjs_dom_internals_ensure_shadow_root
       (unInternals (toInternals self))
       (maybe jsNull (unElement . toElement) host))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createShadowRoot\"]($2)"
        ghcjs_dom_internals_create_shadow_root ::
        JSRef Internals -> JSRef Element -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createShadowRoot Mozilla Internals.createShadowRoot documentation> 
internalsCreateShadowRoot ::
                          (IsInternals self, IsElement host) =>
                            self -> Maybe host -> IO (Maybe Node)
internalsCreateShadowRoot self host
  = (ghcjs_dom_internals_create_shadow_root
       (unInternals (toInternals self))
       (maybe jsNull (unElement . toElement) host))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"shadowRoot\"]($2)"
        ghcjs_dom_internals_shadow_root ::
        JSRef Internals -> JSRef Element -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRoot Mozilla Internals.shadowRoot documentation> 
internalsShadowRoot ::
                    (IsInternals self, IsElement host) =>
                      self -> Maybe host -> IO (Maybe Node)
internalsShadowRoot self host
  = (ghcjs_dom_internals_shadow_root (unInternals (toInternals self))
       (maybe jsNull (unElement . toElement) host))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"shadowRootType\"]($2)"
        ghcjs_dom_internals_shadow_root_type ::
        JSRef Internals -> JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowRootType Mozilla Internals.shadowRootType documentation> 
internalsShadowRootType ::
                        (IsInternals self, IsNode root, FromJSString result) =>
                          self -> Maybe root -> IO result
internalsShadowRootType self root
  = fromJSString <$>
      (ghcjs_dom_internals_shadow_root_type
         (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) root))
 
foreign import javascript unsafe "$1[\"includerFor\"]($2)"
        ghcjs_dom_internals_includer_for ::
        JSRef Internals -> JSRef Node -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.includerFor Mozilla Internals.includerFor documentation> 
internalsIncluderFor ::
                     (IsInternals self, IsNode node) =>
                       self -> Maybe node -> IO (Maybe Element)
internalsIncluderFor self node
  = (ghcjs_dom_internals_includer_for
       (unInternals (toInternals self))
       (maybe jsNull (unNode . toNode) node))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"shadowPseudoId\"]($2)"
        ghcjs_dom_internals_shadow_pseudo_id ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
internalsShadowPseudoId ::
                        (IsInternals self, IsElement element, FromJSString result) =>
                          self -> Maybe element -> IO result
internalsShadowPseudoId self element
  = fromJSString <$>
      (ghcjs_dom_internals_shadow_pseudo_id
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"setShadowPseudoId\"]($2, $3)"
        ghcjs_dom_internals_set_shadow_pseudo_id ::
        JSRef Internals -> JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shadowPseudoId Mozilla Internals.shadowPseudoId documentation> 
internalsSetShadowPseudoId ::
                           (IsInternals self, IsElement element, ToJSString id) =>
                             self -> Maybe element -> id -> IO ()
internalsSetShadowPseudoId self element id
  = ghcjs_dom_internals_set_shadow_pseudo_id
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
      (toJSString id)
 
foreign import javascript unsafe "$1[\"treeScopeRootNode\"]($2)"
        ghcjs_dom_internals_tree_scope_root_node ::
        JSRef Internals -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.treeScopeRootNode Mozilla Internals.treeScopeRootNode documentation> 
internalsTreeScopeRootNode ::
                           (IsInternals self, IsNode node) =>
                             self -> Maybe node -> IO (Maybe Node)
internalsTreeScopeRootNode self node
  = (ghcjs_dom_internals_tree_scope_root_node
       (unInternals (toInternals self))
       (maybe jsNull (unNode . toNode) node))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"parentTreeScope\"]($2)"
        ghcjs_dom_internals_parent_tree_scope ::
        JSRef Internals -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parentTreeScope Mozilla Internals.parentTreeScope documentation> 
internalsParentTreeScope ::
                         (IsInternals self, IsNode node) =>
                           self -> Maybe node -> IO (Maybe Node)
internalsParentTreeScope self node
  = (ghcjs_dom_internals_parent_tree_scope
       (unInternals (toInternals self))
       (maybe jsNull (unNode . toNode) node))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"lastSpatialNavigationCandidateCount\"]()"
        ghcjs_dom_internals_last_spatial_navigation_candidate_count ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpatialNavigationCandidateCount Mozilla Internals.lastSpatialNavigationCandidateCount documentation> 
internalsLastSpatialNavigationCandidateCount ::
                                             (IsInternals self) => self -> IO Word
internalsLastSpatialNavigationCandidateCount self
  = ghcjs_dom_internals_last_spatial_navigation_candidate_count
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"numberOfActiveAnimations\"]()"
        ghcjs_dom_internals_number_of_active_animations ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfActiveAnimations Mozilla Internals.numberOfActiveAnimations documentation> 
internalsNumberOfActiveAnimations ::
                                  (IsInternals self) => self -> IO Word
internalsNumberOfActiveAnimations self
  = ghcjs_dom_internals_number_of_active_animations
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"suspendAnimations\"]()"
        ghcjs_dom_internals_suspend_animations :: JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.suspendAnimations Mozilla Internals.suspendAnimations documentation> 
internalsSuspendAnimations :: (IsInternals self) => self -> IO ()
internalsSuspendAnimations self
  = ghcjs_dom_internals_suspend_animations
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"resumeAnimations\"]()"
        ghcjs_dom_internals_resume_animations :: JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.resumeAnimations Mozilla Internals.resumeAnimations documentation> 
internalsResumeAnimations :: (IsInternals self) => self -> IO ()
internalsResumeAnimations self
  = ghcjs_dom_internals_resume_animations
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "($1[\"animationsAreSuspended\"]() ? 1 : 0)"
        ghcjs_dom_internals_animations_are_suspended ::
        JSRef Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.animationsAreSuspended Mozilla Internals.animationsAreSuspended documentation> 
internalsAnimationsAreSuspended ::
                                (IsInternals self) => self -> IO Bool
internalsAnimationsAreSuspended self
  = ghcjs_dom_internals_animations_are_suspended
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "($1[\"pauseAnimationAtTimeOnElement\"]($2,\n$3, $4) ? 1 : 0)"
        ghcjs_dom_internals_pause_animation_at_time_on_element ::
        JSRef Internals -> JSString -> Double -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnElement Mozilla Internals.pauseAnimationAtTimeOnElement documentation> 
internalsPauseAnimationAtTimeOnElement ::
                                       (IsInternals self, ToJSString animationName,
                                        IsElement element) =>
                                         self -> animationName -> Double -> Maybe element -> IO Bool
internalsPauseAnimationAtTimeOnElement self animationName pauseTime
  element
  = ghcjs_dom_internals_pause_animation_at_time_on_element
      (unInternals (toInternals self))
      (toJSString animationName)
      pauseTime
      (maybe jsNull (unElement . toElement) element)
 
foreign import javascript unsafe
        "($1[\"pauseAnimationAtTimeOnPseudoElement\"]($2,\n$3, $4, $5) ? 1 : 0)"
        ghcjs_dom_internals_pause_animation_at_time_on_pseudo_element ::
        JSRef Internals ->
          JSString -> Double -> JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseAnimationAtTimeOnPseudoElement Mozilla Internals.pauseAnimationAtTimeOnPseudoElement documentation> 
internalsPauseAnimationAtTimeOnPseudoElement ::
                                             (IsInternals self, ToJSString animationName,
                                              IsElement element, ToJSString pseudoId) =>
                                               self ->
                                                 animationName ->
                                                   Double -> Maybe element -> pseudoId -> IO Bool
internalsPauseAnimationAtTimeOnPseudoElement self animationName
  pauseTime element pseudoId
  = ghcjs_dom_internals_pause_animation_at_time_on_pseudo_element
      (unInternals (toInternals self))
      (toJSString animationName)
      pauseTime
      (maybe jsNull (unElement . toElement) element)
      (toJSString pseudoId)
 
foreign import javascript unsafe
        "($1[\"pauseTransitionAtTimeOnElement\"]($2,\n$3, $4) ? 1 : 0)"
        ghcjs_dom_internals_pause_transition_at_time_on_element ::
        JSRef Internals -> JSString -> Double -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnElement Mozilla Internals.pauseTransitionAtTimeOnElement documentation> 
internalsPauseTransitionAtTimeOnElement ::
                                        (IsInternals self, ToJSString propertyName,
                                         IsElement element) =>
                                          self -> propertyName -> Double -> Maybe element -> IO Bool
internalsPauseTransitionAtTimeOnElement self propertyName pauseTime
  element
  = ghcjs_dom_internals_pause_transition_at_time_on_element
      (unInternals (toInternals self))
      (toJSString propertyName)
      pauseTime
      (maybe jsNull (unElement . toElement) element)
 
foreign import javascript unsafe
        "($1[\"pauseTransitionAtTimeOnPseudoElement\"]($2,\n$3, $4, $5) ? 1 : 0)"
        ghcjs_dom_internals_pause_transition_at_time_on_pseudo_element ::
        JSRef Internals ->
          JSString -> Double -> JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pauseTransitionAtTimeOnPseudoElement Mozilla Internals.pauseTransitionAtTimeOnPseudoElement documentation> 
internalsPauseTransitionAtTimeOnPseudoElement ::
                                              (IsInternals self, ToJSString property,
                                               IsElement element, ToJSString pseudoId) =>
                                                self ->
                                                  property ->
                                                    Double -> Maybe element -> pseudoId -> IO Bool
internalsPauseTransitionAtTimeOnPseudoElement self property
  pauseTime element pseudoId
  = ghcjs_dom_internals_pause_transition_at_time_on_pseudo_element
      (unInternals (toInternals self))
      (toJSString property)
      pauseTime
      (maybe jsNull (unElement . toElement) element)
      (toJSString pseudoId)
 
foreign import javascript unsafe "($1[\"attached\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_attached ::
        JSRef Internals -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.attached Mozilla Internals.attached documentation> 
internalsAttached ::
                  (IsInternals self, IsNode node) => self -> Maybe node -> IO Bool
internalsAttached self node
  = ghcjs_dom_internals_attached (unInternals (toInternals self))
      (maybe jsNull (unNode . toNode) node)
 
foreign import javascript unsafe "$1[\"visiblePlaceholder\"]($2)"
        ghcjs_dom_internals_visible_placeholder ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.visiblePlaceholder Mozilla Internals.visiblePlaceholder documentation> 
internalsVisiblePlaceholder ::
                            (IsInternals self, IsElement element, FromJSString result) =>
                              self -> Maybe element -> IO result
internalsVisiblePlaceholder self element
  = fromJSString <$>
      (ghcjs_dom_internals_visible_placeholder
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"selectColorInColorChooser\"]($2,\n$3)"
        ghcjs_dom_internals_select_color_in_color_chooser ::
        JSRef Internals -> JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectColorInColorChooser Mozilla Internals.selectColorInColorChooser documentation> 
internalsSelectColorInColorChooser ::
                                   (IsInternals self, IsElement element, ToJSString colorValue) =>
                                     self -> Maybe element -> colorValue -> IO ()
internalsSelectColorInColorChooser self element colorValue
  = ghcjs_dom_internals_select_color_in_color_chooser
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
      (toJSString colorValue)
 
foreign import javascript unsafe
        "$1[\"formControlStateOfPreviousHistoryItem\"]()"
        ghcjs_dom_internals_form_control_state_of_previous_history_item ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.formControlStateOfPreviousHistoryItem Mozilla Internals.formControlStateOfPreviousHistoryItem documentation> 
internalsFormControlStateOfPreviousHistoryItem ::
                                               (IsInternals self, FromJSString result) =>
                                                 self -> IO [result]
internalsFormControlStateOfPreviousHistoryItem self
  = (ghcjs_dom_internals_form_control_state_of_previous_history_item
       (unInternals (toInternals self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "$1[\"setFormControlStateOfPreviousHistoryItem\"]($2)"
        ghcjs_dom_internals_set_form_control_state_of_previous_history_item
        :: JSRef Internals -> JSRef [values] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.formControlStateOfPreviousHistoryItem Mozilla Internals.formControlStateOfPreviousHistoryItem documentation> 
internalsSetFormControlStateOfPreviousHistoryItem ::
                                                  (IsInternals self, ToJSString values) =>
                                                    self -> [values] -> IO ()
internalsSetFormControlStateOfPreviousHistoryItem self values
  = toJSRef values >>=
      \ values' ->
        ghcjs_dom_internals_set_form_control_state_of_previous_history_item
          (unInternals (toInternals self))
          values'
 
foreign import javascript unsafe "$1[\"absoluteCaretBounds\"]()"
        ghcjs_dom_internals_absolute_caret_bounds ::
        JSRef Internals -> IO (JSRef ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.absoluteCaretBounds Mozilla Internals.absoluteCaretBounds documentation> 
internalsAbsoluteCaretBounds ::
                             (IsInternals self) => self -> IO (Maybe ClientRect)
internalsAbsoluteCaretBounds self
  = (ghcjs_dom_internals_absolute_caret_bounds
       (unInternals (toInternals self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"boundingBox\"]($2)"
        ghcjs_dom_internals_bounding_box ::
        JSRef Internals -> JSRef Element -> IO (JSRef ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.boundingBox Mozilla Internals.boundingBox documentation> 
internalsBoundingBox ::
                     (IsInternals self, IsElement element) =>
                       self -> Maybe element -> IO (Maybe ClientRect)
internalsBoundingBox self element
  = (ghcjs_dom_internals_bounding_box
       (unInternals (toInternals self))
       (maybe jsNull (unElement . toElement) element))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"inspectorHighlightRects\"]()"
        ghcjs_dom_internals_inspector_highlight_rects ::
        JSRef Internals -> IO (JSRef ClientRectList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightRects Mozilla Internals.inspectorHighlightRects documentation> 
internalsInspectorHighlightRects ::
                                 (IsInternals self) => self -> IO (Maybe ClientRectList)
internalsInspectorHighlightRects self
  = (ghcjs_dom_internals_inspector_highlight_rects
       (unInternals (toInternals self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"inspectorHighlightObject\"]()"
        ghcjs_dom_internals_inspector_highlight_object ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorHighlightObject Mozilla Internals.inspectorHighlightObject documentation> 
internalsInspectorHighlightObject ::
                                  (IsInternals self, FromJSString result) => self -> IO result
internalsInspectorHighlightObject self
  = fromJSString <$>
      (ghcjs_dom_internals_inspector_highlight_object
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"markerCountForNode\"]($2, $3)"
        ghcjs_dom_internals_marker_count_for_node ::
        JSRef Internals -> JSRef Node -> JSString -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerCountForNode Mozilla Internals.markerCountForNode documentation> 
internalsMarkerCountForNode ::
                            (IsInternals self, IsNode node, ToJSString markerType) =>
                              self -> Maybe node -> markerType -> IO Word
internalsMarkerCountForNode self node markerType
  = ghcjs_dom_internals_marker_count_for_node
      (unInternals (toInternals self))
      (maybe jsNull (unNode . toNode) node)
      (toJSString markerType)
 
foreign import javascript unsafe
        "$1[\"markerRangeForNode\"]($2, $3,\n$4)"
        ghcjs_dom_internals_marker_range_for_node ::
        JSRef Internals ->
          JSRef Node -> JSString -> Word -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerRangeForNode Mozilla Internals.markerRangeForNode documentation> 
internalsMarkerRangeForNode ::
                            (IsInternals self, IsNode node, ToJSString markerType) =>
                              self -> Maybe node -> markerType -> Word -> IO (Maybe DOMRange)
internalsMarkerRangeForNode self node markerType index
  = (ghcjs_dom_internals_marker_range_for_node
       (unInternals (toInternals self))
       (maybe jsNull (unNode . toNode) node)
       (toJSString markerType)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"markerDescriptionForNode\"]($2,\n$3, $4)"
        ghcjs_dom_internals_marker_description_for_node ::
        JSRef Internals -> JSRef Node -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerDescriptionForNode Mozilla Internals.markerDescriptionForNode documentation> 
internalsMarkerDescriptionForNode ::
                                  (IsInternals self, IsNode node, ToJSString markerType,
                                   FromJSString result) =>
                                    self -> Maybe node -> markerType -> Word -> IO result
internalsMarkerDescriptionForNode self node markerType index
  = fromJSString <$>
      (ghcjs_dom_internals_marker_description_for_node
         (unInternals (toInternals self))
         (maybe jsNull (unNode . toNode) node)
         (toJSString markerType)
         index)
 
foreign import javascript unsafe
        "$1[\"addTextMatchMarker\"]($2, $3)"
        ghcjs_dom_internals_add_text_match_marker ::
        JSRef Internals -> JSRef DOMRange -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.addTextMatchMarker Mozilla Internals.addTextMatchMarker documentation> 
internalsAddTextMatchMarker ::
                            (IsInternals self, IsDOMRange range) =>
                              self -> Maybe range -> Bool -> IO ()
internalsAddTextMatchMarker self range isActive
  = ghcjs_dom_internals_add_text_match_marker
      (unInternals (toInternals self))
      (maybe jsNull (unDOMRange . toDOMRange) range)
      isActive
 
foreign import javascript unsafe
        "$1[\"setMarkedTextMatchesAreHighlighted\"]($2)"
        ghcjs_dom_internals_set_marked_text_matches_are_highlighted ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markedTextMatchesAreHighlighted Mozilla Internals.markedTextMatchesAreHighlighted documentation> 
internalsSetMarkedTextMatchesAreHighlighted ::
                                            (IsInternals self) => self -> Bool -> IO ()
internalsSetMarkedTextMatchesAreHighlighted self flag
  = ghcjs_dom_internals_set_marked_text_matches_are_highlighted
      (unInternals (toInternals self))
      flag
 
foreign import javascript unsafe "$1[\"invalidateFontCache\"]()"
        ghcjs_dom_internals_invalidate_font_cache ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.invalidateFontCache Mozilla Internals.invalidateFontCache documentation> 
internalsInvalidateFontCache :: (IsInternals self) => self -> IO ()
internalsInvalidateFontCache self
  = ghcjs_dom_internals_invalidate_font_cache
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"setScrollViewPosition\"]($2,\n$3)"
        ghcjs_dom_internals_set_scroll_view_position ::
        JSRef Internals -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollViewPosition Mozilla Internals.scrollViewPosition documentation> 
internalsSetScrollViewPosition ::
                               (IsInternals self) => self -> Int -> Int -> IO ()
internalsSetScrollViewPosition self x y
  = ghcjs_dom_internals_set_scroll_view_position
      (unInternals (toInternals self))
      x
      y
 
foreign import javascript unsafe
        "$1[\"setPagination\"]($2, $3, $4)"
        ghcjs_dom_internals_set_pagination ::
        JSRef Internals -> JSString -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pagination Mozilla Internals.pagination documentation> 
internalsSetPagination ::
                       (IsInternals self, ToJSString mode) =>
                         self -> mode -> Int -> Int -> IO ()
internalsSetPagination self mode gap pageLength
  = ghcjs_dom_internals_set_pagination
      (unInternals (toInternals self))
      (toJSString mode)
      gap
      pageLength
 
foreign import javascript unsafe
        "$1[\"configurationForViewport\"]($2,\n$3, $4, $5, $6)"
        ghcjs_dom_internals_configuration_for_viewport ::
        JSRef Internals -> Float -> Int -> Int -> Int -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.configurationForViewport Mozilla Internals.configurationForViewport documentation> 
internalsConfigurationForViewport ::
                                  (IsInternals self, FromJSString result) =>
                                    self -> Float -> Int -> Int -> Int -> Int -> IO result
internalsConfigurationForViewport self devicePixelRatio deviceWidth
  deviceHeight availableWidth availableHeight
  = fromJSString <$>
      (ghcjs_dom_internals_configuration_for_viewport
         (unInternals (toInternals self))
         devicePixelRatio
         deviceWidth
         deviceHeight
         availableWidth
         availableHeight)
 
foreign import javascript unsafe
        "($1[\"wasLastChangeUserEdit\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_was_last_change_user_edit ::
        JSRef Internals -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wasLastChangeUserEdit Mozilla Internals.wasLastChangeUserEdit documentation> 
internalsWasLastChangeUserEdit ::
                               (IsInternals self, IsElement textField) =>
                                 self -> Maybe textField -> IO Bool
internalsWasLastChangeUserEdit self textField
  = ghcjs_dom_internals_was_last_change_user_edit
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) textField)
 
foreign import javascript unsafe
        "($1[\"elementShouldAutoComplete\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_element_should_auto_complete ::
        JSRef Internals -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.elementShouldAutoComplete Mozilla Internals.elementShouldAutoComplete documentation> 
internalsElementShouldAutoComplete ::
                                   (IsInternals self, IsElement inputElement) =>
                                     self -> Maybe inputElement -> IO Bool
internalsElementShouldAutoComplete self inputElement
  = ghcjs_dom_internals_element_should_auto_complete
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) inputElement)
 
foreign import javascript unsafe "$1[\"setEditingValue\"]($2, $3)"
        ghcjs_dom_internals_set_editing_value ::
        JSRef Internals -> JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.editingValue Mozilla Internals.editingValue documentation> 
internalsSetEditingValue ::
                         (IsInternals self, IsElement inputElement, ToJSString value) =>
                           self -> Maybe inputElement -> value -> IO ()
internalsSetEditingValue self inputElement value
  = ghcjs_dom_internals_set_editing_value
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) inputElement)
      (toJSString value)
 
foreign import javascript unsafe "$1[\"setAutofilled\"]($2, $3)"
        ghcjs_dom_internals_set_autofilled ::
        JSRef Internals -> JSRef Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.autofilled Mozilla Internals.autofilled documentation> 
internalsSetAutofilled ::
                       (IsInternals self, IsElement inputElement) =>
                         self -> Maybe inputElement -> Bool -> IO ()
internalsSetAutofilled self inputElement enabled
  = ghcjs_dom_internals_set_autofilled
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) inputElement)
      enabled
 
foreign import javascript unsafe
        "$1[\"countMatchesForText\"]($2,\n$3, $4)"
        ghcjs_dom_internals_count_matches_for_text ::
        JSRef Internals -> JSString -> Word -> JSString -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.countMatchesForText Mozilla Internals.countMatchesForText documentation> 
internalsCountMatchesForText ::
                             (IsInternals self, ToJSString text, ToJSString markMatches) =>
                               self -> text -> Word -> markMatches -> IO Word
internalsCountMatchesForText self text findOptions markMatches
  = ghcjs_dom_internals_count_matches_for_text
      (unInternals (toInternals self))
      (toJSString text)
      findOptions
      (toJSString markMatches)
 
foreign import javascript unsafe "$1[\"paintControlTints\"]()"
        ghcjs_dom_internals_paint_control_tints :: JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.paintControlTints Mozilla Internals.paintControlTints documentation> 
internalsPaintControlTints :: (IsInternals self) => self -> IO ()
internalsPaintControlTints self
  = ghcjs_dom_internals_paint_control_tints
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"scrollElementToRect\"]($2,\n$3, $4, $5, $6)"
        ghcjs_dom_internals_scroll_element_to_rect ::
        JSRef Internals ->
          JSRef Element -> Int -> Int -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollElementToRect Mozilla Internals.scrollElementToRect documentation> 
internalsScrollElementToRect ::
                             (IsInternals self, IsElement element) =>
                               self -> Maybe element -> Int -> Int -> Int -> Int -> IO ()
internalsScrollElementToRect self element x y w h
  = ghcjs_dom_internals_scroll_element_to_rect
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
      x
      y
      w
      h
 
foreign import javascript unsafe
        "$1[\"rangeFromLocationAndLength\"]($2,\n$3, $4)"
        ghcjs_dom_internals_range_from_location_and_length ::
        JSRef Internals ->
          JSRef Element -> Int -> Int -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeFromLocationAndLength Mozilla Internals.rangeFromLocationAndLength documentation> 
internalsRangeFromLocationAndLength ::
                                    (IsInternals self, IsElement scope) =>
                                      self -> Maybe scope -> Int -> Int -> IO (Maybe DOMRange)
internalsRangeFromLocationAndLength self scope rangeLocation
  rangeLength
  = (ghcjs_dom_internals_range_from_location_and_length
       (unInternals (toInternals self))
       (maybe jsNull (unElement . toElement) scope)
       rangeLocation
       rangeLength)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"locationFromRange\"]($2, $3)"
        ghcjs_dom_internals_location_from_range ::
        JSRef Internals -> JSRef Element -> JSRef DOMRange -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.locationFromRange Mozilla Internals.locationFromRange documentation> 
internalsLocationFromRange ::
                           (IsInternals self, IsElement scope, IsDOMRange range) =>
                             self -> Maybe scope -> Maybe range -> IO Word
internalsLocationFromRange self scope range
  = ghcjs_dom_internals_location_from_range
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) scope)
      (maybe jsNull (unDOMRange . toDOMRange) range)
 
foreign import javascript unsafe "$1[\"lengthFromRange\"]($2, $3)"
        ghcjs_dom_internals_length_from_range ::
        JSRef Internals -> JSRef Element -> JSRef DOMRange -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lengthFromRange Mozilla Internals.lengthFromRange documentation> 
internalsLengthFromRange ::
                         (IsInternals self, IsElement scope, IsDOMRange range) =>
                           self -> Maybe scope -> Maybe range -> IO Word
internalsLengthFromRange self scope range
  = ghcjs_dom_internals_length_from_range
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) scope)
      (maybe jsNull (unDOMRange . toDOMRange) range)
 
foreign import javascript unsafe "$1[\"rangeAsText\"]($2)"
        ghcjs_dom_internals_range_as_text ::
        JSRef Internals -> JSRef DOMRange -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.rangeAsText Mozilla Internals.rangeAsText documentation> 
internalsRangeAsText ::
                     (IsInternals self, IsDOMRange range, FromJSString result) =>
                       self -> Maybe range -> IO result
internalsRangeAsText self range
  = fromJSString <$>
      (ghcjs_dom_internals_range_as_text (unInternals (toInternals self))
         (maybe jsNull (unDOMRange . toDOMRange) range))
 
foreign import javascript unsafe
        "$1[\"setDelegatesScrolling\"]($2)"
        ghcjs_dom_internals_set_delegates_scrolling ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.delegatesScrolling Mozilla Internals.delegatesScrolling documentation> 
internalsSetDelegatesScrolling ::
                               (IsInternals self) => self -> Bool -> IO ()
internalsSetDelegatesScrolling self enabled
  = ghcjs_dom_internals_set_delegates_scrolling
      (unInternals (toInternals self))
      enabled
 
foreign import javascript unsafe
        "$1[\"lastSpellCheckRequestSequence\"]()"
        ghcjs_dom_internals_last_spell_check_request_sequence ::
        JSRef Internals -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckRequestSequence Mozilla Internals.lastSpellCheckRequestSequence documentation> 
internalsLastSpellCheckRequestSequence ::
                                       (IsInternals self) => self -> IO Int
internalsLastSpellCheckRequestSequence self
  = ghcjs_dom_internals_last_spell_check_request_sequence
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"lastSpellCheckProcessedSequence\"]()"
        ghcjs_dom_internals_last_spell_check_processed_sequence ::
        JSRef Internals -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.lastSpellCheckProcessedSequence Mozilla Internals.lastSpellCheckProcessedSequence documentation> 
internalsLastSpellCheckProcessedSequence ::
                                         (IsInternals self) => self -> IO Int
internalsLastSpellCheckProcessedSequence self
  = ghcjs_dom_internals_last_spell_check_processed_sequence
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"userPreferredLanguages\"]()"
        ghcjs_dom_internals_user_preferred_languages ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
internalsUserPreferredLanguages ::
                                (IsInternals self, FromJSString result) => self -> IO [result]
internalsUserPreferredLanguages self
  = (ghcjs_dom_internals_user_preferred_languages
       (unInternals (toInternals self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "$1[\"setUserPreferredLanguages\"]($2)"
        ghcjs_dom_internals_set_user_preferred_languages ::
        JSRef Internals -> JSRef [languages] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.userPreferredLanguages Mozilla Internals.userPreferredLanguages documentation> 
internalsSetUserPreferredLanguages ::
                                   (IsInternals self, ToJSString languages) =>
                                     self -> [languages] -> IO ()
internalsSetUserPreferredLanguages self languages
  = toJSRef languages >>=
      \ languages' ->
        ghcjs_dom_internals_set_user_preferred_languages
          (unInternals (toInternals self))
          languages'
 
foreign import javascript unsafe "$1[\"wheelEventHandlerCount\"]()"
        ghcjs_dom_internals_wheel_event_handler_count ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.wheelEventHandlerCount Mozilla Internals.wheelEventHandlerCount documentation> 
internalsWheelEventHandlerCount ::
                                (IsInternals self) => self -> IO Word
internalsWheelEventHandlerCount self
  = ghcjs_dom_internals_wheel_event_handler_count
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"touchEventHandlerCount\"]()"
        ghcjs_dom_internals_touch_event_handler_count ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.touchEventHandlerCount Mozilla Internals.touchEventHandlerCount documentation> 
internalsTouchEventHandlerCount ::
                                (IsInternals self) => self -> IO Word
internalsTouchEventHandlerCount self
  = ghcjs_dom_internals_touch_event_handler_count
      (unInternals (toInternals self))
 
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
                       (IsInternals self, IsDocument document) =>
                         self ->
                           Maybe document ->
                             Int ->
                               Int ->
                                 Word ->
                                   Word ->
                                     Word -> Word -> Bool -> Bool -> Bool -> IO (Maybe NodeList)
internalsNodesFromRect self document x y topPadding rightPadding
  bottomPadding leftPadding ignoreClipping allowShadowContent
  allowChildFrameContent
  = (ghcjs_dom_internals_nodes_from_rect
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
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"parserMetaData\"]($2)"
        ghcjs_dom_internals_parser_meta_data ::
        JSRef Internals -> JSRef a -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.parserMetaData Mozilla Internals.parserMetaData documentation> 
internalsParserMetaData ::
                        (IsInternals self, FromJSString result) =>
                          self -> JSRef a -> IO result
internalsParserMetaData self func
  = fromJSString <$>
      (ghcjs_dom_internals_parser_meta_data
         (unInternals (toInternals self))
         func)
 
foreign import javascript unsafe
        "$1[\"updateEditorUINowIfScheduled\"]()"
        ghcjs_dom_internals_update_editor_ui_now_if_scheduled ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateEditorUINowIfScheduled Mozilla Internals.updateEditorUINowIfScheduled documentation> 
internalsUpdateEditorUINowIfScheduled ::
                                      (IsInternals self) => self -> IO ()
internalsUpdateEditorUINowIfScheduled self
  = ghcjs_dom_internals_update_editor_ui_now_if_scheduled
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "($1[\"hasSpellingMarker\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_internals_has_spelling_marker ::
        JSRef Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasSpellingMarker Mozilla Internals.hasSpellingMarker documentation> 
internalsHasSpellingMarker ::
                           (IsInternals self) => self -> Int -> Int -> IO Bool
internalsHasSpellingMarker self from length
  = ghcjs_dom_internals_has_spelling_marker
      (unInternals (toInternals self))
      from
      length
 
foreign import javascript unsafe
        "($1[\"hasGrammarMarker\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_internals_has_grammar_marker ::
        JSRef Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasGrammarMarker Mozilla Internals.hasGrammarMarker documentation> 
internalsHasGrammarMarker ::
                          (IsInternals self) => self -> Int -> Int -> IO Bool
internalsHasGrammarMarker self from length
  = ghcjs_dom_internals_has_grammar_marker
      (unInternals (toInternals self))
      from
      length
 
foreign import javascript unsafe
        "($1[\"hasAutocorrectedMarker\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_internals_has_autocorrected_marker ::
        JSRef Internals -> Int -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.hasAutocorrectedMarker Mozilla Internals.hasAutocorrectedMarker documentation> 
internalsHasAutocorrectedMarker ::
                                (IsInternals self) => self -> Int -> Int -> IO Bool
internalsHasAutocorrectedMarker self from length
  = ghcjs_dom_internals_has_autocorrected_marker
      (unInternals (toInternals self))
      from
      length
 
foreign import javascript unsafe
        "$1[\"setContinuousSpellCheckingEnabled\"]($2)"
        ghcjs_dom_internals_set_continuous_spell_checking_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.continuousSpellCheckingEnabled Mozilla Internals.continuousSpellCheckingEnabled documentation> 
internalsSetContinuousSpellCheckingEnabled ::
                                           (IsInternals self) => self -> Bool -> IO ()
internalsSetContinuousSpellCheckingEnabled self enabled
  = ghcjs_dom_internals_set_continuous_spell_checking_enabled
      (unInternals (toInternals self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setAutomaticQuoteSubstitutionEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_quote_substitution_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticQuoteSubstitutionEnabled Mozilla Internals.automaticQuoteSubstitutionEnabled documentation> 
internalsSetAutomaticQuoteSubstitutionEnabled ::
                                              (IsInternals self) => self -> Bool -> IO ()
internalsSetAutomaticQuoteSubstitutionEnabled self enabled
  = ghcjs_dom_internals_set_automatic_quote_substitution_enabled
      (unInternals (toInternals self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setAutomaticLinkDetectionEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_link_detection_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticLinkDetectionEnabled Mozilla Internals.automaticLinkDetectionEnabled documentation> 
internalsSetAutomaticLinkDetectionEnabled ::
                                          (IsInternals self) => self -> Bool -> IO ()
internalsSetAutomaticLinkDetectionEnabled self enabled
  = ghcjs_dom_internals_set_automatic_link_detection_enabled
      (unInternals (toInternals self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setAutomaticDashSubstitutionEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_dash_substitution_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticDashSubstitutionEnabled Mozilla Internals.automaticDashSubstitutionEnabled documentation> 
internalsSetAutomaticDashSubstitutionEnabled ::
                                             (IsInternals self) => self -> Bool -> IO ()
internalsSetAutomaticDashSubstitutionEnabled self enabled
  = ghcjs_dom_internals_set_automatic_dash_substitution_enabled
      (unInternals (toInternals self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setAutomaticTextReplacementEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_text_replacement_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticTextReplacementEnabled Mozilla Internals.automaticTextReplacementEnabled documentation> 
internalsSetAutomaticTextReplacementEnabled ::
                                            (IsInternals self) => self -> Bool -> IO ()
internalsSetAutomaticTextReplacementEnabled self enabled
  = ghcjs_dom_internals_set_automatic_text_replacement_enabled
      (unInternals (toInternals self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setAutomaticSpellingCorrectionEnabled\"]($2)"
        ghcjs_dom_internals_set_automatic_spelling_correction_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.automaticSpellingCorrectionEnabled Mozilla Internals.automaticSpellingCorrectionEnabled documentation> 
internalsSetAutomaticSpellingCorrectionEnabled ::
                                               (IsInternals self) => self -> Bool -> IO ()
internalsSetAutomaticSpellingCorrectionEnabled self enabled
  = ghcjs_dom_internals_set_automatic_spelling_correction_enabled
      (unInternals (toInternals self))
      enabled
 
foreign import javascript unsafe
        "($1[\"isOverwriteModeEnabled\"]() ? 1 : 0)"
        ghcjs_dom_internals_is_overwrite_mode_enabled ::
        JSRef Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isOverwriteModeEnabled Mozilla Internals.isOverwriteModeEnabled documentation> 
internalsIsOverwriteModeEnabled ::
                                (IsInternals self) => self -> IO Bool
internalsIsOverwriteModeEnabled self
  = ghcjs_dom_internals_is_overwrite_mode_enabled
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"toggleOverwriteModeEnabled\"]()"
        ghcjs_dom_internals_toggle_overwrite_mode_enabled ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.toggleOverwriteModeEnabled Mozilla Internals.toggleOverwriteModeEnabled documentation> 
internalsToggleOverwriteModeEnabled ::
                                    (IsInternals self) => self -> IO ()
internalsToggleOverwriteModeEnabled self
  = ghcjs_dom_internals_toggle_overwrite_mode_enabled
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"numberOfScrollableAreas\"]()"
        ghcjs_dom_internals_number_of_scrollable_areas ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfScrollableAreas Mozilla Internals.numberOfScrollableAreas documentation> 
internalsNumberOfScrollableAreas ::
                                 (IsInternals self) => self -> IO Word
internalsNumberOfScrollableAreas self
  = ghcjs_dom_internals_number_of_scrollable_areas
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "($1[\"isPageBoxVisible\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_page_box_visible ::
        JSRef Internals -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPageBoxVisible Mozilla Internals.isPageBoxVisible documentation> 
internalsIsPageBoxVisible ::
                          (IsInternals self) => self -> Int -> IO Bool
internalsIsPageBoxVisible self pageNumber
  = ghcjs_dom_internals_is_page_box_visible
      (unInternals (toInternals self))
      pageNumber
 
foreign import javascript unsafe "$1[\"layerTreeAsText\"]($2, $3)"
        ghcjs_dom_internals_layer_tree_as_text ::
        JSRef Internals -> JSRef Document -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.layerTreeAsText Mozilla Internals.layerTreeAsText documentation> 
internalsLayerTreeAsText ::
                         (IsInternals self, IsDocument document, FromJSString result) =>
                           self -> Maybe document -> Word -> IO result
internalsLayerTreeAsText self document flags
  = fromJSString <$>
      (ghcjs_dom_internals_layer_tree_as_text
         (unInternals (toInternals self))
         (maybe jsNull (unDocument . toDocument) document)
         flags)
 
foreign import javascript unsafe
        "$1[\"scrollingStateTreeAsText\"]()"
        ghcjs_dom_internals_scrolling_state_tree_as_text ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.scrollingStateTreeAsText Mozilla Internals.scrollingStateTreeAsText documentation> 
internalsScrollingStateTreeAsText ::
                                  (IsInternals self, FromJSString result) => self -> IO result
internalsScrollingStateTreeAsText self
  = fromJSString <$>
      (ghcjs_dom_internals_scrolling_state_tree_as_text
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"mainThreadScrollingReasons\"]()"
        ghcjs_dom_internals_main_thread_scrolling_reasons ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mainThreadScrollingReasons Mozilla Internals.mainThreadScrollingReasons documentation> 
internalsMainThreadScrollingReasons ::
                                    (IsInternals self, FromJSString result) => self -> IO result
internalsMainThreadScrollingReasons self
  = fromJSString <$>
      (ghcjs_dom_internals_main_thread_scrolling_reasons
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"nonFastScrollableRects\"]()"
        ghcjs_dom_internals_non_fast_scrollable_rects ::
        JSRef Internals -> IO (JSRef ClientRectList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.nonFastScrollableRects Mozilla Internals.nonFastScrollableRects documentation> 
internalsNonFastScrollableRects ::
                                (IsInternals self) => self -> IO (Maybe ClientRectList)
internalsNonFastScrollableRects self
  = (ghcjs_dom_internals_non_fast_scrollable_rects
       (unInternals (toInternals self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"repaintRectsAsText\"]()"
        ghcjs_dom_internals_repaint_rects_as_text ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.repaintRectsAsText Mozilla Internals.repaintRectsAsText documentation> 
internalsRepaintRectsAsText ::
                            (IsInternals self, FromJSString result) => self -> IO result
internalsRepaintRectsAsText self
  = fromJSString <$>
      (ghcjs_dom_internals_repaint_rects_as_text
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"garbageCollectDocumentResources\"]()"
        ghcjs_dom_internals_garbage_collect_document_resources ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.garbageCollectDocumentResources Mozilla Internals.garbageCollectDocumentResources documentation> 
internalsGarbageCollectDocumentResources ::
                                         (IsInternals self) => self -> IO ()
internalsGarbageCollectDocumentResources self
  = ghcjs_dom_internals_garbage_collect_document_resources
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"allowRoundingHacks\"]()"
        ghcjs_dom_internals_allow_rounding_hacks ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allowRoundingHacks Mozilla Internals.allowRoundingHacks documentation> 
internalsAllowRoundingHacks :: (IsInternals self) => self -> IO ()
internalsAllowRoundingHacks self
  = ghcjs_dom_internals_allow_rounding_hacks
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"insertAuthorCSS\"]($2)"
        ghcjs_dom_internals_insert_author_css ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.insertAuthorCSS Mozilla Internals.insertAuthorCSS documentation> 
internalsInsertAuthorCSS ::
                         (IsInternals self, ToJSString css) => self -> css -> IO ()
internalsInsertAuthorCSS self css
  = ghcjs_dom_internals_insert_author_css
      (unInternals (toInternals self))
      (toJSString css)
 
foreign import javascript unsafe "$1[\"insertUserCSS\"]($2)"
        ghcjs_dom_internals_insert_user_css ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.insertUserCSS Mozilla Internals.insertUserCSS documentation> 
internalsInsertUserCSS ::
                       (IsInternals self, ToJSString css) => self -> css -> IO ()
internalsInsertUserCSS self css
  = ghcjs_dom_internals_insert_user_css
      (unInternals (toInternals self))
      (toJSString css)
 
foreign import javascript unsafe
        "$1[\"setBatteryStatus\"]($2, $3,\n$4, $5, $6)"
        ghcjs_dom_internals_set_battery_status ::
        JSRef Internals ->
          JSString -> Bool -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.batteryStatus Mozilla Internals.batteryStatus documentation> 
internalsSetBatteryStatus ::
                          (IsInternals self, ToJSString eventType) =>
                            self -> eventType -> Bool -> Double -> Double -> Double -> IO ()
internalsSetBatteryStatus self eventType charging chargingTime
  dischargingTime level
  = ghcjs_dom_internals_set_battery_status
      (unInternals (toInternals self))
      (toJSString eventType)
      charging
      chargingTime
      dischargingTime
      level
 
foreign import javascript unsafe
        "$1[\"setDeviceProximity\"]($2, $3,\n$4, $5)"
        ghcjs_dom_internals_set_device_proximity ::
        JSRef Internals -> JSString -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deviceProximity Mozilla Internals.deviceProximity documentation> 
internalsSetDeviceProximity ::
                            (IsInternals self, ToJSString eventType) =>
                              self -> eventType -> Double -> Double -> Double -> IO ()
internalsSetDeviceProximity self eventType value min max
  = ghcjs_dom_internals_set_device_proximity
      (unInternals (toInternals self))
      (toJSString eventType)
      value
      min
      max
 
foreign import javascript unsafe "$1[\"numberOfLiveNodes\"]()"
        ghcjs_dom_internals_number_of_live_nodes ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveNodes Mozilla Internals.numberOfLiveNodes documentation> 
internalsNumberOfLiveNodes :: (IsInternals self) => self -> IO Word
internalsNumberOfLiveNodes self
  = ghcjs_dom_internals_number_of_live_nodes
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"numberOfLiveDocuments\"]()"
        ghcjs_dom_internals_number_of_live_documents ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfLiveDocuments Mozilla Internals.numberOfLiveDocuments documentation> 
internalsNumberOfLiveDocuments ::
                               (IsInternals self) => self -> IO Word
internalsNumberOfLiveDocuments self
  = ghcjs_dom_internals_number_of_live_documents
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"consoleMessageArgumentCounts\"]()"
        ghcjs_dom_internals_console_message_argument_counts ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleMessageArgumentCounts Mozilla Internals.consoleMessageArgumentCounts documentation> 
internalsConsoleMessageArgumentCounts ::
                                      (IsInternals self, FromJSString result) => self -> IO [result]
internalsConsoleMessageArgumentCounts self
  = (ghcjs_dom_internals_console_message_argument_counts
       (unInternals (toInternals self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "$1[\"openDummyInspectorFrontend\"]($2)"
        ghcjs_dom_internals_open_dummy_inspector_frontend ::
        JSRef Internals -> JSString -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.openDummyInspectorFrontend Mozilla Internals.openDummyInspectorFrontend documentation> 
internalsOpenDummyInspectorFrontend ::
                                    (IsInternals self, ToJSString url) =>
                                      self -> url -> IO (Maybe DOMWindow)
internalsOpenDummyInspectorFrontend self url
  = (ghcjs_dom_internals_open_dummy_inspector_frontend
       (unInternals (toInternals self))
       (toJSString url))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"closeDummyInspectorFrontend\"]()"
        ghcjs_dom_internals_close_dummy_inspector_frontend ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closeDummyInspectorFrontend Mozilla Internals.closeDummyInspectorFrontend documentation> 
internalsCloseDummyInspectorFrontend ::
                                     (IsInternals self) => self -> IO ()
internalsCloseDummyInspectorFrontend self
  = ghcjs_dom_internals_close_dummy_inspector_frontend
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"setJavaScriptProfilingEnabled\"]($2)"
        ghcjs_dom_internals_set_java_script_profiling_enabled ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.javaScriptProfilingEnabled Mozilla Internals.javaScriptProfilingEnabled documentation> 
internalsSetJavaScriptProfilingEnabled ::
                                       (IsInternals self) => self -> Bool -> IO ()
internalsSetJavaScriptProfilingEnabled self creates
  = ghcjs_dom_internals_set_java_script_profiling_enabled
      (unInternals (toInternals self))
      creates
 
foreign import javascript unsafe
        "$1[\"setInspectorIsUnderTest\"]($2)"
        ghcjs_dom_internals_set_inspector_is_under_test ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.inspectorIsUnderTest Mozilla Internals.inspectorIsUnderTest documentation> 
internalsSetInspectorIsUnderTest ::
                                 (IsInternals self) => self -> Bool -> IO ()
internalsSetInspectorIsUnderTest self isUnderTest
  = ghcjs_dom_internals_set_inspector_is_under_test
      (unInternals (toInternals self))
      isUnderTest
 
foreign import javascript unsafe "$1[\"counterValue\"]($2)"
        ghcjs_dom_internals_counter_value ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.counterValue Mozilla Internals.counterValue documentation> 
internalsCounterValue ::
                      (IsInternals self, IsElement element, FromJSString result) =>
                        self -> Maybe element -> IO result
internalsCounterValue self element
  = fromJSString <$>
      (ghcjs_dom_internals_counter_value (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe "$1[\"pageNumber\"]($2, $3, $4)"
        ghcjs_dom_internals_page_number ::
        JSRef Internals -> JSRef Element -> Float -> Float -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageNumber Mozilla Internals.pageNumber documentation> 
internalsPageNumber ::
                    (IsInternals self, IsElement element) =>
                      self -> Maybe element -> Float -> Float -> IO Int
internalsPageNumber self element pageWidth pageHeight
  = ghcjs_dom_internals_page_number (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
      pageWidth
      pageHeight
 
foreign import javascript unsafe "$1[\"shortcutIconURLs\"]()"
        ghcjs_dom_internals_shortcut_icon_ur_ls ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.shortcutIconURLs Mozilla Internals.shortcutIconURLs documentation> 
internalsShortcutIconURLs ::
                          (IsInternals self, FromJSString result) => self -> IO [result]
internalsShortcutIconURLs self
  = (ghcjs_dom_internals_shortcut_icon_ur_ls
       (unInternals (toInternals self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"allIconURLs\"]()"
        ghcjs_dom_internals_all_icon_ur_ls ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.allIconURLs Mozilla Internals.allIconURLs documentation> 
internalsAllIconURLs ::
                     (IsInternals self, FromJSString result) => self -> IO [result]
internalsAllIconURLs self
  = (ghcjs_dom_internals_all_icon_ur_ls
       (unInternals (toInternals self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"numberOfPages\"]($2, $3)"
        ghcjs_dom_internals_number_of_pages ::
        JSRef Internals -> Double -> Double -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.numberOfPages Mozilla Internals.numberOfPages documentation> 
internalsNumberOfPages ::
                       (IsInternals self) => self -> Double -> Double -> IO Int
internalsNumberOfPages self pageWidthInPixels pageHeightInPixels
  = ghcjs_dom_internals_number_of_pages
      (unInternals (toInternals self))
      pageWidthInPixels
      pageHeightInPixels
 
foreign import javascript unsafe "$1[\"pageProperty\"]($2, $3)"
        ghcjs_dom_internals_page_property ::
        JSRef Internals -> JSString -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageProperty Mozilla Internals.pageProperty documentation> 
internalsPageProperty ::
                      (IsInternals self, ToJSString propertyName, FromJSString result) =>
                        self -> propertyName -> Int -> IO result
internalsPageProperty self propertyName pageNumber
  = fromJSString <$>
      (ghcjs_dom_internals_page_property (unInternals (toInternals self))
         (toJSString propertyName)
         pageNumber)
 
foreign import javascript unsafe
        "$1[\"pageSizeAndMarginsInPixels\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_internals_page_size_and_margins_in_pixels ::
        JSRef Internals ->
          Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageSizeAndMarginsInPixels Mozilla Internals.pageSizeAndMarginsInPixels documentation> 
internalsPageSizeAndMarginsInPixels ::
                                    (IsInternals self, FromJSString result) =>
                                      self ->
                                        Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO result
internalsPageSizeAndMarginsInPixels self pageIndex width height
  marginTop marginRight marginBottom marginLeft
  = fromJSString <$>
      (ghcjs_dom_internals_page_size_and_margins_in_pixels
         (unInternals (toInternals self))
         pageIndex
         width
         height
         marginTop
         marginRight
         marginBottom
         marginLeft)
 
foreign import javascript unsafe
        "$1[\"setPageScaleFactor\"]($2, $3,\n$4)"
        ghcjs_dom_internals_set_page_scale_factor ::
        JSRef Internals -> Float -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageScaleFactor Mozilla Internals.pageScaleFactor documentation> 
internalsSetPageScaleFactor ::
                            (IsInternals self) => self -> Float -> Int -> Int -> IO ()
internalsSetPageScaleFactor self scaleFactor x y
  = ghcjs_dom_internals_set_page_scale_factor
      (unInternals (toInternals self))
      scaleFactor
      x
      y
 
foreign import javascript unsafe "$1[\"setPageZoomFactor\"]($2)"
        ghcjs_dom_internals_set_page_zoom_factor ::
        JSRef Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageZoomFactor Mozilla Internals.pageZoomFactor documentation> 
internalsSetPageZoomFactor ::
                           (IsInternals self) => self -> Float -> IO ()
internalsSetPageZoomFactor self zoomFactor
  = ghcjs_dom_internals_set_page_zoom_factor
      (unInternals (toInternals self))
      zoomFactor
 
foreign import javascript unsafe "$1[\"setHeaderHeight\"]($2)"
        ghcjs_dom_internals_set_header_height ::
        JSRef Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.headerHeight Mozilla Internals.headerHeight documentation> 
internalsSetHeaderHeight ::
                         (IsInternals self) => self -> Float -> IO ()
internalsSetHeaderHeight self height
  = ghcjs_dom_internals_set_header_height
      (unInternals (toInternals self))
      height
 
foreign import javascript unsafe "$1[\"setFooterHeight\"]($2)"
        ghcjs_dom_internals_set_footer_height ::
        JSRef Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.footerHeight Mozilla Internals.footerHeight documentation> 
internalsSetFooterHeight ::
                         (IsInternals self) => self -> Float -> IO ()
internalsSetFooterHeight self height
  = ghcjs_dom_internals_set_footer_height
      (unInternals (toInternals self))
      height
 
foreign import javascript unsafe "$1[\"setTopContentInset\"]($2)"
        ghcjs_dom_internals_set_top_content_inset ::
        JSRef Internals -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.topContentInset Mozilla Internals.topContentInset documentation> 
internalsSetTopContentInset ::
                            (IsInternals self) => self -> Float -> IO ()
internalsSetTopContentInset self contentInset
  = ghcjs_dom_internals_set_top_content_inset
      (unInternals (toInternals self))
      contentInset
 
foreign import javascript unsafe
        "$1[\"webkitWillEnterFullScreenForElement\"]($2)"
        ghcjs_dom_internals_webkit_will_enter_full_screen_for_element ::
        JSRef Internals -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitWillEnterFullScreenForElement Mozilla Internals.webkitWillEnterFullScreenForElement documentation> 
internalsWebkitWillEnterFullScreenForElement ::
                                             (IsInternals self, IsElement element) =>
                                               self -> Maybe element -> IO ()
internalsWebkitWillEnterFullScreenForElement self element
  = ghcjs_dom_internals_webkit_will_enter_full_screen_for_element
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
 
foreign import javascript unsafe
        "$1[\"webkitDidEnterFullScreenForElement\"]($2)"
        ghcjs_dom_internals_webkit_did_enter_full_screen_for_element ::
        JSRef Internals -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitDidEnterFullScreenForElement Mozilla Internals.webkitDidEnterFullScreenForElement documentation> 
internalsWebkitDidEnterFullScreenForElement ::
                                            (IsInternals self, IsElement element) =>
                                              self -> Maybe element -> IO ()
internalsWebkitDidEnterFullScreenForElement self element
  = ghcjs_dom_internals_webkit_did_enter_full_screen_for_element
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
 
foreign import javascript unsafe
        "$1[\"webkitWillExitFullScreenForElement\"]($2)"
        ghcjs_dom_internals_webkit_will_exit_full_screen_for_element ::
        JSRef Internals -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitWillExitFullScreenForElement Mozilla Internals.webkitWillExitFullScreenForElement documentation> 
internalsWebkitWillExitFullScreenForElement ::
                                            (IsInternals self, IsElement element) =>
                                              self -> Maybe element -> IO ()
internalsWebkitWillExitFullScreenForElement self element
  = ghcjs_dom_internals_webkit_will_exit_full_screen_for_element
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
 
foreign import javascript unsafe
        "$1[\"webkitDidExitFullScreenForElement\"]($2)"
        ghcjs_dom_internals_webkit_did_exit_full_screen_for_element ::
        JSRef Internals -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.webkitDidExitFullScreenForElement Mozilla Internals.webkitDidExitFullScreenForElement documentation> 
internalsWebkitDidExitFullScreenForElement ::
                                           (IsInternals self, IsElement element) =>
                                             self -> Maybe element -> IO ()
internalsWebkitDidExitFullScreenForElement self element
  = ghcjs_dom_internals_webkit_did_exit_full_screen_for_element
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
 
foreign import javascript unsafe
        "$1[\"setApplicationCacheOriginQuota\"]($2)"
        ghcjs_dom_internals_set_application_cache_origin_quota ::
        JSRef Internals -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationCacheOriginQuota Mozilla Internals.applicationCacheOriginQuota documentation> 
internalsSetApplicationCacheOriginQuota ::
                                        (IsInternals self) => self -> Word64 -> IO ()
internalsSetApplicationCacheOriginQuota self quota
  = ghcjs_dom_internals_set_application_cache_origin_quota
      (unInternals (toInternals self))
      (fromIntegral quota)
 
foreign import javascript unsafe
        "$1[\"registerURLSchemeAsBypassingContentSecurityPolicy\"]($2)"
        ghcjs_dom_internals_register_url_scheme_as_bypassing_content_security_policy
        :: JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.registerURLSchemeAsBypassingContentSecurityPolicy Mozilla Internals.registerURLSchemeAsBypassingContentSecurityPolicy documentation> 
internalsRegisterURLSchemeAsBypassingContentSecurityPolicy ::
                                                           (IsInternals self, ToJSString scheme) =>
                                                             self -> scheme -> IO ()
internalsRegisterURLSchemeAsBypassingContentSecurityPolicy self
  scheme
  = ghcjs_dom_internals_register_url_scheme_as_bypassing_content_security_policy
      (unInternals (toInternals self))
      (toJSString scheme)
 
foreign import javascript unsafe
        "$1[\"removeURLSchemeRegisteredAsBypassingContentSecurityPolicy\"]($2)"
        ghcjs_dom_internals_remove_url_scheme_registered_as_bypassing_content_security_policy
        :: JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.removeURLSchemeRegisteredAsBypassingContentSecurityPolicy Mozilla Internals.removeURLSchemeRegisteredAsBypassingContentSecurityPolicy documentation> 
internalsRemoveURLSchemeRegisteredAsBypassingContentSecurityPolicy ::
                                                                   (IsInternals self,
                                                                    ToJSString scheme) =>
                                                                     self -> scheme -> IO ()
internalsRemoveURLSchemeRegisteredAsBypassingContentSecurityPolicy
  self scheme
  = ghcjs_dom_internals_remove_url_scheme_registered_as_bypassing_content_security_policy
      (unInternals (toInternals self))
      (toJSString scheme)
 
foreign import javascript unsafe "$1[\"mallocStatistics\"]()"
        ghcjs_dom_internals_malloc_statistics ::
        JSRef Internals -> IO (JSRef MallocStatistics)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mallocStatistics Mozilla Internals.mallocStatistics documentation> 
internalsMallocStatistics ::
                          (IsInternals self) => self -> IO (Maybe MallocStatistics)
internalsMallocStatistics self
  = (ghcjs_dom_internals_malloc_statistics
       (unInternals (toInternals self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"typeConversions\"]()"
        ghcjs_dom_internals_type_conversions ::
        JSRef Internals -> IO (JSRef TypeConversions)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.typeConversions Mozilla Internals.typeConversions documentation> 
internalsTypeConversions ::
                         (IsInternals self) => self -> IO (Maybe TypeConversions)
internalsTypeConversions self
  = (ghcjs_dom_internals_type_conversions
       (unInternals (toInternals self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"memoryInfo\"]()"
        ghcjs_dom_internals_memory_info ::
        JSRef Internals -> IO (JSRef MemoryInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.memoryInfo Mozilla Internals.memoryInfo documentation> 
internalsMemoryInfo ::
                    (IsInternals self) => self -> IO (Maybe MemoryInfo)
internalsMemoryInfo self
  = (ghcjs_dom_internals_memory_info
       (unInternals (toInternals self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getReferencedFilePaths\"]()"
        ghcjs_dom_internals_get_referenced_file_paths ::
        JSRef Internals -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.referencedFilePaths Mozilla Internals.referencedFilePaths documentation> 
internalsGetReferencedFilePaths ::
                                (IsInternals self, FromJSString result) => self -> IO [result]
internalsGetReferencedFilePaths self
  = (ghcjs_dom_internals_get_referenced_file_paths
       (unInternals (toInternals self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"startTrackingRepaints\"]()"
        ghcjs_dom_internals_start_tracking_repaints ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.startTrackingRepaints Mozilla Internals.startTrackingRepaints documentation> 
internalsStartTrackingRepaints ::
                               (IsInternals self) => self -> IO ()
internalsStartTrackingRepaints self
  = ghcjs_dom_internals_start_tracking_repaints
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"stopTrackingRepaints\"]()"
        ghcjs_dom_internals_stop_tracking_repaints ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.stopTrackingRepaints Mozilla Internals.stopTrackingRepaints documentation> 
internalsStopTrackingRepaints ::
                              (IsInternals self) => self -> IO ()
internalsStopTrackingRepaints self
  = ghcjs_dom_internals_stop_tracking_repaints
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "($1[\"isTimerThrottled\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_timer_throttled ::
        JSRef Internals -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isTimerThrottled Mozilla Internals.isTimerThrottled documentation> 
internalsIsTimerThrottled ::
                          (IsInternals self) => self -> Int -> IO Bool
internalsIsTimerThrottled self timerHandle
  = ghcjs_dom_internals_is_timer_throttled
      (unInternals (toInternals self))
      timerHandle
 
foreign import javascript unsafe
        "$1[\"updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks\"]($2)"
        ghcjs_dom_internals_update_layout_ignore_pending_stylesheets_and_run_post_layout_tasks
        :: JSRef Internals -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks Mozilla Internals.updateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks documentation> 
internalsUpdateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks ::
                                                                   (IsInternals self,
                                                                    IsNode node) =>
                                                                     self -> Maybe node -> IO ()
internalsUpdateLayoutIgnorePendingStylesheetsAndRunPostLayoutTasks
  self node
  = ghcjs_dom_internals_update_layout_ignore_pending_stylesheets_and_run_post_layout_tasks
      (unInternals (toInternals self))
      (maybe jsNull (unNode . toNode) node)
 
foreign import javascript unsafe "$1[\"getCurrentCursorInfo\"]()"
        ghcjs_dom_internals_get_current_cursor_info ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.currentCursorInfo Mozilla Internals.currentCursorInfo documentation> 
internalsGetCurrentCursorInfo ::
                              (IsInternals self, FromJSString result) => self -> IO result
internalsGetCurrentCursorInfo self
  = fromJSString <$>
      (ghcjs_dom_internals_get_current_cursor_info
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"markerTextForListItem\"]($2)"
        ghcjs_dom_internals_marker_text_for_list_item ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.markerTextForListItem Mozilla Internals.markerTextForListItem documentation> 
internalsMarkerTextForListItem ::
                               (IsInternals self, IsElement element, FromJSString result) =>
                                 self -> Maybe element -> IO result
internalsMarkerTextForListItem self element
  = fromJSString <$>
      (ghcjs_dom_internals_marker_text_for_list_item
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe "$1[\"deserializeBuffer\"]($2)"
        ghcjs_dom_internals_deserialize_buffer ::
        JSRef Internals ->
          JSRef ArrayBuffer -> IO (JSRef SerializedScriptValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.deserializeBuffer Mozilla Internals.deserializeBuffer documentation> 
internalsDeserializeBuffer ::
                           (IsInternals self, IsArrayBuffer buffer) =>
                             self -> Maybe buffer -> IO (Maybe SerializedScriptValue)
internalsDeserializeBuffer self buffer
  = (ghcjs_dom_internals_deserialize_buffer
       (unInternals (toInternals self))
       (maybe jsNull (unArrayBuffer . toArrayBuffer) buffer))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"serializeObject\"]($2)"
        ghcjs_dom_internals_serialize_object ::
        JSRef Internals ->
          JSRef SerializedScriptValue -> IO (JSRef ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.serializeObject Mozilla Internals.serializeObject documentation> 
internalsSerializeObject ::
                         (IsInternals self, IsSerializedScriptValue obj) =>
                           self -> Maybe obj -> IO (Maybe ArrayBuffer)
internalsSerializeObject self obj
  = (ghcjs_dom_internals_serialize_object
       (unInternals (toInternals self))
       (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
          obj))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"setUsesOverlayScrollbars\"]($2)"
        ghcjs_dom_internals_set_uses_overlay_scrollbars ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.usesOverlayScrollbars Mozilla Internals.usesOverlayScrollbars documentation> 
internalsSetUsesOverlayScrollbars ::
                                  (IsInternals self) => self -> Bool -> IO ()
internalsSetUsesOverlayScrollbars self enabled
  = ghcjs_dom_internals_set_uses_overlay_scrollbars
      (unInternals (toInternals self))
      enabled
 
foreign import javascript unsafe "$1[\"forceReload\"]($2)"
        ghcjs_dom_internals_force_reload ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.forceReload Mozilla Internals.forceReload documentation> 
internalsForceReload :: (IsInternals self) => self -> Bool -> IO ()
internalsForceReload self endToEnd
  = ghcjs_dom_internals_force_reload (unInternals (toInternals self))
      endToEnd
 
foreign import javascript unsafe
        "$1[\"simulateAudioInterruption\"]($2)"
        ghcjs_dom_internals_simulate_audio_interruption ::
        JSRef Internals -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateAudioInterruption Mozilla Internals.simulateAudioInterruption documentation> 
internalsSimulateAudioInterruption ::
                                   (IsInternals self, IsNode node) => self -> Maybe node -> IO ()
internalsSimulateAudioInterruption self node
  = ghcjs_dom_internals_simulate_audio_interruption
      (unInternals (toInternals self))
      (maybe jsNull (unNode . toNode) node)
 
foreign import javascript unsafe
        "($1[\"mediaElementHasCharacteristic\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_internals_media_element_has_characteristic ::
        JSRef Internals -> JSRef Node -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mediaElementHasCharacteristic Mozilla Internals.mediaElementHasCharacteristic documentation> 
internalsMediaElementHasCharacteristic ::
                                       (IsInternals self, IsNode node, ToJSString characteristic) =>
                                         self -> Maybe node -> characteristic -> IO Bool
internalsMediaElementHasCharacteristic self node characteristic
  = ghcjs_dom_internals_media_element_has_characteristic
      (unInternals (toInternals self))
      (maybe jsNull (unNode . toNode) node)
      (toJSString characteristic)
 
foreign import javascript unsafe "$1[\"initializeMockCDM\"]()"
        ghcjs_dom_internals_initialize_mock_cdm :: JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockCDM Mozilla Internals.initializeMockCDM documentation> 
internalsInitializeMockCDM :: (IsInternals self) => self -> IO ()
internalsInitializeMockCDM self
  = ghcjs_dom_internals_initialize_mock_cdm
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"enableMockSpeechSynthesizer\"]()"
        ghcjs_dom_internals_enable_mock_speech_synthesizer ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.enableMockSpeechSynthesizer Mozilla Internals.enableMockSpeechSynthesizer documentation> 
internalsEnableMockSpeechSynthesizer ::
                                     (IsInternals self) => self -> IO ()
internalsEnableMockSpeechSynthesizer self
  = ghcjs_dom_internals_enable_mock_speech_synthesizer
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"getImageSourceURL\"]($2)"
        ghcjs_dom_internals_get_image_source_url ::
        JSRef Internals -> JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.imageSourceURL Mozilla Internals.imageSourceURL documentation> 
internalsGetImageSourceURL ::
                           (IsInternals self, IsElement element, FromJSString result) =>
                             self -> Maybe element -> IO result
internalsGetImageSourceURL self element
  = fromJSString <$>
      (ghcjs_dom_internals_get_image_source_url
         (unInternals (toInternals self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"captionsStyleSheetOverride\"]()"
        ghcjs_dom_internals_captions_style_sheet_override ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
internalsCaptionsStyleSheetOverride ::
                                    (IsInternals self, FromJSString result) => self -> IO result
internalsCaptionsStyleSheetOverride self
  = fromJSString <$>
      (ghcjs_dom_internals_captions_style_sheet_override
         (unInternals (toInternals self)))
 
foreign import javascript unsafe
        "$1[\"setCaptionsStyleSheetOverride\"]($2)"
        ghcjs_dom_internals_set_captions_style_sheet_override ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionsStyleSheetOverride Mozilla Internals.captionsStyleSheetOverride documentation> 
internalsSetCaptionsStyleSheetOverride ::
                                       (IsInternals self, ToJSString override) =>
                                         self -> override -> IO ()
internalsSetCaptionsStyleSheetOverride self override
  = ghcjs_dom_internals_set_captions_style_sheet_override
      (unInternals (toInternals self))
      (toJSString override)
 
foreign import javascript unsafe
        "$1[\"setPrimaryAudioTrackLanguageOverride\"]($2)"
        ghcjs_dom_internals_set_primary_audio_track_language_override ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.primaryAudioTrackLanguageOverride Mozilla Internals.primaryAudioTrackLanguageOverride documentation> 
internalsSetPrimaryAudioTrackLanguageOverride ::
                                              (IsInternals self, ToJSString language) =>
                                                self -> language -> IO ()
internalsSetPrimaryAudioTrackLanguageOverride self language
  = ghcjs_dom_internals_set_primary_audio_track_language_override
      (unInternals (toInternals self))
      (toJSString language)
 
foreign import javascript unsafe
        "$1[\"setCaptionDisplayMode\"]($2)"
        ghcjs_dom_internals_set_caption_display_mode ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.captionDisplayMode Mozilla Internals.captionDisplayMode documentation> 
internalsSetCaptionDisplayMode ::
                               (IsInternals self, ToJSString mode) => self -> mode -> IO ()
internalsSetCaptionDisplayMode self mode
  = ghcjs_dom_internals_set_caption_display_mode
      (unInternals (toInternals self))
      (toJSString mode)
 
foreign import javascript unsafe "$1[\"createTimeRanges\"]($2, $3)"
        ghcjs_dom_internals_create_time_ranges ::
        JSRef Internals ->
          JSRef Float32Array -> JSRef Float32Array -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.createTimeRanges Mozilla Internals.createTimeRanges documentation> 
internalsCreateTimeRanges ::
                          (IsInternals self, IsFloat32Array startTimes,
                           IsFloat32Array endTimes) =>
                            self -> Maybe startTimes -> Maybe endTimes -> IO (Maybe TimeRanges)
internalsCreateTimeRanges self startTimes endTimes
  = (ghcjs_dom_internals_create_time_ranges
       (unInternals (toInternals self))
       (maybe jsNull (unFloat32Array . toFloat32Array) startTimes)
       (maybe jsNull (unFloat32Array . toFloat32Array) endTimes))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"closestTimeToTimeRanges\"]($2,\n$3)"
        ghcjs_dom_internals_closest_time_to_time_ranges ::
        JSRef Internals -> Double -> JSRef TimeRanges -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.closestTimeToTimeRanges Mozilla Internals.closestTimeToTimeRanges documentation> 
internalsClosestTimeToTimeRanges ::
                                 (IsInternals self, IsTimeRanges ranges) =>
                                   self -> Double -> Maybe ranges -> IO Double
internalsClosestTimeToTimeRanges self time ranges
  = ghcjs_dom_internals_closest_time_to_time_ranges
      (unInternals (toInternals self))
      time
      (maybe jsNull (unTimeRanges . toTimeRanges) ranges)
 
foreign import javascript unsafe
        "($1[\"isSelectPopupVisible\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_select_popup_visible ::
        JSRef Internals -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isSelectPopupVisible Mozilla Internals.isSelectPopupVisible documentation> 
internalsIsSelectPopupVisible ::
                              (IsInternals self, IsNode node) => self -> Maybe node -> IO Bool
internalsIsSelectPopupVisible self node
  = ghcjs_dom_internals_is_select_popup_visible
      (unInternals (toInternals self))
      (maybe jsNull (unNode . toNode) node)
 
foreign import javascript unsafe "($1[\"isVibrating\"]() ? 1 : 0)"
        ghcjs_dom_internals_is_vibrating :: JSRef Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isVibrating Mozilla Internals.isVibrating documentation> 
internalsIsVibrating :: (IsInternals self) => self -> IO Bool
internalsIsVibrating self
  = ghcjs_dom_internals_is_vibrating (unInternals (toInternals self))
 
foreign import javascript unsafe
        "($1[\"isPluginUnavailabilityIndicatorObscured\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_plugin_unavailability_indicator_obscured ::
        JSRef Internals -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginUnavailabilityIndicatorObscured Mozilla Internals.isPluginUnavailabilityIndicatorObscured documentation> 
internalsIsPluginUnavailabilityIndicatorObscured ::
                                                 (IsInternals self, IsElement element) =>
                                                   self -> Maybe element -> IO Bool
internalsIsPluginUnavailabilityIndicatorObscured self element
  = ghcjs_dom_internals_is_plugin_unavailability_indicator_obscured
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
 
foreign import javascript unsafe
        "($1[\"isPluginSnapshotted\"]($2) ? 1 : 0)"
        ghcjs_dom_internals_is_plugin_snapshotted ::
        JSRef Internals -> JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPluginSnapshotted Mozilla Internals.isPluginSnapshotted documentation> 
internalsIsPluginSnapshotted ::
                             (IsInternals self, IsElement element) =>
                               self -> Maybe element -> IO Bool
internalsIsPluginSnapshotted self element
  = ghcjs_dom_internals_is_plugin_snapshotted
      (unInternals (toInternals self))
      (maybe jsNull (unElement . toElement) element)
 
foreign import javascript unsafe "$1[\"selectionBounds\"]()"
        ghcjs_dom_internals_selection_bounds ::
        JSRef Internals -> IO (JSRef ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.selectionBounds Mozilla Internals.selectionBounds documentation> 
internalsSelectionBounds ::
                         (IsInternals self) => self -> IO (Maybe ClientRect)
internalsSelectionBounds self
  = (ghcjs_dom_internals_selection_bounds
       (unInternals (toInternals self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"initializeMockMediaSource\"]()"
        ghcjs_dom_internals_initialize_mock_media_source ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.initializeMockMediaSource Mozilla Internals.initializeMockMediaSource documentation> 
internalsInitializeMockMediaSource ::
                                   (IsInternals self) => self -> IO ()
internalsInitializeMockMediaSource self
  = ghcjs_dom_internals_initialize_mock_media_source
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"bufferedSamplesForTrackID\"]($2,\n$3)"
        ghcjs_dom_internals_buffered_samples_for_track_id ::
        JSRef Internals ->
          JSRef SourceBuffer -> JSString -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.bufferedSamplesForTrackID Mozilla Internals.bufferedSamplesForTrackID documentation> 
internalsBufferedSamplesForTrackID ::
                                   (IsInternals self, IsSourceBuffer buffer, ToJSString trackID,
                                    FromJSString result) =>
                                     self -> Maybe buffer -> trackID -> IO [result]
internalsBufferedSamplesForTrackID self buffer trackID
  = (ghcjs_dom_internals_buffered_samples_for_track_id
       (unInternals (toInternals self))
       (maybe jsNull (unSourceBuffer . toSourceBuffer) buffer)
       (toJSString trackID))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "$1[\"beginMediaSessionInterruption\"]()"
        ghcjs_dom_internals_begin_media_session_interruption ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.beginMediaSessionInterruption Mozilla Internals.beginMediaSessionInterruption documentation> 
internalsBeginMediaSessionInterruption ::
                                       (IsInternals self) => self -> IO ()
internalsBeginMediaSessionInterruption self
  = ghcjs_dom_internals_begin_media_session_interruption
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"endMediaSessionInterruption\"]($2)"
        ghcjs_dom_internals_end_media_session_interruption ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.endMediaSessionInterruption Mozilla Internals.endMediaSessionInterruption documentation> 
internalsEndMediaSessionInterruption ::
                                     (IsInternals self, ToJSString flags) => self -> flags -> IO ()
internalsEndMediaSessionInterruption self flags
  = ghcjs_dom_internals_end_media_session_interruption
      (unInternals (toInternals self))
      (toJSString flags)
 
foreign import javascript unsafe
        "$1[\"applicationWillEnterForeground\"]()"
        ghcjs_dom_internals_application_will_enter_foreground ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterForeground Mozilla Internals.applicationWillEnterForeground documentation> 
internalsApplicationWillEnterForeground ::
                                        (IsInternals self) => self -> IO ()
internalsApplicationWillEnterForeground self
  = ghcjs_dom_internals_application_will_enter_foreground
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"applicationWillEnterBackground\"]()"
        ghcjs_dom_internals_application_will_enter_background ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.applicationWillEnterBackground Mozilla Internals.applicationWillEnterBackground documentation> 
internalsApplicationWillEnterBackground ::
                                        (IsInternals self) => self -> IO ()
internalsApplicationWillEnterBackground self
  = ghcjs_dom_internals_application_will_enter_background
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"setMediaSessionRestrictions\"]($2,\n$3)"
        ghcjs_dom_internals_set_media_session_restrictions ::
        JSRef Internals -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.mediaSessionRestrictions Mozilla Internals.mediaSessionRestrictions documentation> 
internalsSetMediaSessionRestrictions ::
                                     (IsInternals self, ToJSString mediaType,
                                      ToJSString restrictions) =>
                                       self -> mediaType -> restrictions -> IO ()
internalsSetMediaSessionRestrictions self mediaType restrictions
  = ghcjs_dom_internals_set_media_session_restrictions
      (unInternals (toInternals self))
      (toJSString mediaType)
      (toJSString restrictions)
 
foreign import javascript unsafe
        "$1[\"postRemoteControlCommand\"]($2)"
        ghcjs_dom_internals_post_remote_control_command ::
        JSRef Internals -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.postRemoteControlCommand Mozilla Internals.postRemoteControlCommand documentation> 
internalsPostRemoteControlCommand ::
                                  (IsInternals self, ToJSString command) => self -> command -> IO ()
internalsPostRemoteControlCommand self command
  = ghcjs_dom_internals_post_remote_control_command
      (unInternals (toInternals self))
      (toJSString command)
 
foreign import javascript unsafe "$1[\"simulateSystemSleep\"]()"
        ghcjs_dom_internals_simulate_system_sleep ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemSleep Mozilla Internals.simulateSystemSleep documentation> 
internalsSimulateSystemSleep :: (IsInternals self) => self -> IO ()
internalsSimulateSystemSleep self
  = ghcjs_dom_internals_simulate_system_sleep
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"simulateSystemWake\"]()"
        ghcjs_dom_internals_simulate_system_wake ::
        JSRef Internals -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.simulateSystemWake Mozilla Internals.simulateSystemWake documentation> 
internalsSimulateSystemWake :: (IsInternals self) => self -> IO ()
internalsSimulateSystemWake self
  = ghcjs_dom_internals_simulate_system_wake
      (unInternals (toInternals self))
 
foreign import javascript unsafe
        "$1[\"installMockPageOverlay\"]($2)"
        ghcjs_dom_internals_install_mock_page_overlay ::
        JSRef Internals -> JSRef PageOverlayType -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.installMockPageOverlay Mozilla Internals.installMockPageOverlay documentation> 
internalsInstallMockPageOverlay ::
                                (IsInternals self) => self -> PageOverlayType -> IO ()
internalsInstallMockPageOverlay self type'
  = ghcjs_dom_internals_install_mock_page_overlay
      (unInternals (toInternals self))
      (ptoJSRef type')
 
foreign import javascript unsafe
        "$1[\"pageOverlayLayerTreeAsText\"]()"
        ghcjs_dom_internals_page_overlay_layer_tree_as_text ::
        JSRef Internals -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageOverlayLayerTreeAsText Mozilla Internals.pageOverlayLayerTreeAsText documentation> 
internalsPageOverlayLayerTreeAsText ::
                                    (IsInternals self, FromJSString result) => self -> IO result
internalsPageOverlayLayerTreeAsText self
  = fromJSString <$>
      (ghcjs_dom_internals_page_overlay_layer_tree_as_text
         (unInternals (toInternals self)))
 
foreign import javascript unsafe "$1[\"setPageMuted\"]($2)"
        ghcjs_dom_internals_set_page_muted ::
        JSRef Internals -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.pageMuted Mozilla Internals.pageMuted documentation> 
internalsSetPageMuted ::
                      (IsInternals self) => self -> Bool -> IO ()
internalsSetPageMuted self muted
  = ghcjs_dom_internals_set_page_muted
      (unInternals (toInternals self))
      muted
 
foreign import javascript unsafe
        "($1[\"isPagePlayingAudio\"]() ? 1 : 0)"
        ghcjs_dom_internals_is_page_playing_audio ::
        JSRef Internals -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.isPagePlayingAudio Mozilla Internals.isPagePlayingAudio documentation> 
internalsIsPagePlayingAudio ::
                            (IsInternals self) => self -> IO Bool
internalsIsPagePlayingAudio self
  = ghcjs_dom_internals_is_page_playing_audio
      (unInternals (toInternals self))
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
                     (IsInternals self) => self -> IO (Maybe InternalSettings)
internalsGetSettings self
  = (ghcjs_dom_internals_get_settings
       (unInternals (toInternals self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"workerThreadCount\"]"
        ghcjs_dom_internals_get_worker_thread_count ::
        JSRef Internals -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.workerThreadCount Mozilla Internals.workerThreadCount documentation> 
internalsGetWorkerThreadCount ::
                              (IsInternals self) => self -> IO Word
internalsGetWorkerThreadCount self
  = ghcjs_dom_internals_get_worker_thread_count
      (unInternals (toInternals self))
 
foreign import javascript unsafe "$1[\"consoleProfiles\"]"
        ghcjs_dom_internals_get_console_profiles ::
        JSRef Internals -> IO (JSRef [Maybe ScriptProfile])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Internals.consoleProfiles Mozilla Internals.consoleProfiles documentation> 
internalsGetConsoleProfiles ::
                            (IsInternals self) => self -> IO [Maybe ScriptProfile]
internalsGetConsoleProfiles self
  = (ghcjs_dom_internals_get_console_profiles
       (unInternals (toInternals self)))
      >>= fromJSRefUnchecked
#else
module GHCJS.DOM.Internals (
  ) where
#endif
