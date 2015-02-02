{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.InternalSettings
       (ghcjs_dom_internal_settings_set_touch_event_emulation_enabled,
        internalSettingsSetTouchEventEmulationEnabled,
        ghcjs_dom_internal_settings_set_standard_font_family,
        internalSettingsSetStandardFontFamily,
        ghcjs_dom_internal_settings_set_serif_font_family,
        internalSettingsSetSerifFontFamily,
        ghcjs_dom_internal_settings_set_sans_serif_font_family,
        internalSettingsSetSansSerifFontFamily,
        ghcjs_dom_internal_settings_set_fixed_font_family,
        internalSettingsSetFixedFontFamily,
        ghcjs_dom_internal_settings_set_cursive_font_family,
        internalSettingsSetCursiveFontFamily,
        ghcjs_dom_internal_settings_set_fantasy_font_family,
        internalSettingsSetFantasyFontFamily,
        ghcjs_dom_internal_settings_set_pictograph_font_family,
        internalSettingsSetPictographFontFamily,
        ghcjs_dom_internal_settings_set_font_fallback_prefers_pictographs,
        internalSettingsSetFontFallbackPrefersPictographs,
        ghcjs_dom_internal_settings_set_text_autosizing_enabled,
        internalSettingsSetTextAutosizingEnabled,
        ghcjs_dom_internal_settings_set_text_autosizing_window_size_override,
        internalSettingsSetTextAutosizingWindowSizeOverride,
        ghcjs_dom_internal_settings_set_text_autosizing_font_scale_factor,
        internalSettingsSetTextAutosizingFontScaleFactor,
        ghcjs_dom_internal_settings_set_css_shapes_enabled,
        internalSettingsSetCSSShapesEnabled,
        ghcjs_dom_internal_settings_set_can_start_media,
        internalSettingsSetCanStartMedia,
        ghcjs_dom_internal_settings_set_should_display_track_kind,
        internalSettingsSetShouldDisplayTrackKind,
        ghcjs_dom_internal_settings_should_display_track_kind,
        internalSettingsShouldDisplayTrackKind,
        ghcjs_dom_internal_settings_set_default_video_poster_url,
        internalSettingsSetDefaultVideoPosterURL,
        ghcjs_dom_internal_settings_set_time_without_mouse_movement_before_hiding_controls,
        internalSettingsSetTimeWithoutMouseMovementBeforeHidingControls,
        ghcjs_dom_internal_settings_set_media_type_override,
        internalSettingsSetMediaTypeOverride,
        ghcjs_dom_internal_settings_set_plugin_replacement_enabled,
        internalSettingsSetPluginReplacementEnabled,
        ghcjs_dom_internal_settings_set_editing_behavior,
        internalSettingsSetEditingBehavior,
        ghcjs_dom_internal_settings_set_should_convert_position_style_on_copy,
        internalSettingsSetShouldConvertPositionStyleOnCopy,
        ghcjs_dom_internal_settings_set_lang_attribute_aware_form_control_ui_enabled,
        internalSettingsSetLangAttributeAwareFormControlUIEnabled,
        ghcjs_dom_internal_settings_set_storage_blocking_policy,
        internalSettingsSetStorageBlockingPolicy,
        ghcjs_dom_internal_settings_set_images_enabled,
        internalSettingsSetImagesEnabled,
        ghcjs_dom_internal_settings_set_use_legacy_background_size_shorthand_behavior,
        internalSettingsSetUseLegacyBackgroundSizeShorthandBehavior,
        ghcjs_dom_internal_settings_set_autoscroll_for_drag_and_drop_enabled,
        internalSettingsSetAutoscrollForDragAndDropEnabled,
        ghcjs_dom_internal_settings_set_background_should_extend_beyond_page,
        internalSettingsSetBackgroundShouldExtendBeyondPage,
        ghcjs_dom_internal_settings_set_scrolling_tree_includes_frames,
        internalSettingsSetScrollingTreeIncludesFrames,
        ghcjs_dom_internal_settings_set_minimum_timer_interval,
        internalSettingsSetMinimumTimerInterval, InternalSettings,
        IsInternalSettings, castToInternalSettings, gTypeInternalSettings,
        toInternalSettings)
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

 
foreign import javascript unsafe
        "$1[\"setTouchEventEmulationEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_touch_event_emulation_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.touchEventEmulationEnabled Mozilla InternalSettings.touchEventEmulationEnabled documentation> 
internalSettingsSetTouchEventEmulationEnabled ::
                                              (IsInternalSettings self) => self -> Bool -> IO ()
internalSettingsSetTouchEventEmulationEnabled self enabled
  = ghcjs_dom_internal_settings_set_touch_event_emulation_enabled
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setStandardFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_standard_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.standardFontFamily Mozilla InternalSettings.standardFontFamily documentation> 
internalSettingsSetStandardFontFamily ::
                                      (IsInternalSettings self, ToJSString family',
                                       ToJSString script) =>
                                        self -> family' -> script -> IO ()
internalSettingsSetStandardFontFamily self family' script
  = ghcjs_dom_internal_settings_set_standard_font_family
      (unInternalSettings (toInternalSettings self))
      (toJSString family')
      (toJSString script)
 
foreign import javascript unsafe
        "$1[\"setSerifFontFamily\"]($2, $3)"
        ghcjs_dom_internal_settings_set_serif_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.serifFontFamily Mozilla InternalSettings.serifFontFamily documentation> 
internalSettingsSetSerifFontFamily ::
                                   (IsInternalSettings self, ToJSString family',
                                    ToJSString script) =>
                                     self -> family' -> script -> IO ()
internalSettingsSetSerifFontFamily self family' script
  = ghcjs_dom_internal_settings_set_serif_font_family
      (unInternalSettings (toInternalSettings self))
      (toJSString family')
      (toJSString script)
 
foreign import javascript unsafe
        "$1[\"setSansSerifFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_sans_serif_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.sansSerifFontFamily Mozilla InternalSettings.sansSerifFontFamily documentation> 
internalSettingsSetSansSerifFontFamily ::
                                       (IsInternalSettings self, ToJSString family',
                                        ToJSString script) =>
                                         self -> family' -> script -> IO ()
internalSettingsSetSansSerifFontFamily self family' script
  = ghcjs_dom_internal_settings_set_sans_serif_font_family
      (unInternalSettings (toInternalSettings self))
      (toJSString family')
      (toJSString script)
 
foreign import javascript unsafe
        "$1[\"setFixedFontFamily\"]($2, $3)"
        ghcjs_dom_internal_settings_set_fixed_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.fixedFontFamily Mozilla InternalSettings.fixedFontFamily documentation> 
internalSettingsSetFixedFontFamily ::
                                   (IsInternalSettings self, ToJSString family',
                                    ToJSString script) =>
                                     self -> family' -> script -> IO ()
internalSettingsSetFixedFontFamily self family' script
  = ghcjs_dom_internal_settings_set_fixed_font_family
      (unInternalSettings (toInternalSettings self))
      (toJSString family')
      (toJSString script)
 
foreign import javascript unsafe
        "$1[\"setCursiveFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_cursive_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.cursiveFontFamily Mozilla InternalSettings.cursiveFontFamily documentation> 
internalSettingsSetCursiveFontFamily ::
                                     (IsInternalSettings self, ToJSString family',
                                      ToJSString script) =>
                                       self -> family' -> script -> IO ()
internalSettingsSetCursiveFontFamily self family' script
  = ghcjs_dom_internal_settings_set_cursive_font_family
      (unInternalSettings (toInternalSettings self))
      (toJSString family')
      (toJSString script)
 
foreign import javascript unsafe
        "$1[\"setFantasyFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_fantasy_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.fantasyFontFamily Mozilla InternalSettings.fantasyFontFamily documentation> 
internalSettingsSetFantasyFontFamily ::
                                     (IsInternalSettings self, ToJSString family',
                                      ToJSString script) =>
                                       self -> family' -> script -> IO ()
internalSettingsSetFantasyFontFamily self family' script
  = ghcjs_dom_internal_settings_set_fantasy_font_family
      (unInternalSettings (toInternalSettings self))
      (toJSString family')
      (toJSString script)
 
foreign import javascript unsafe
        "$1[\"setPictographFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_pictograph_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.pictographFontFamily Mozilla InternalSettings.pictographFontFamily documentation> 
internalSettingsSetPictographFontFamily ::
                                        (IsInternalSettings self, ToJSString family',
                                         ToJSString script) =>
                                          self -> family' -> script -> IO ()
internalSettingsSetPictographFontFamily self family' script
  = ghcjs_dom_internal_settings_set_pictograph_font_family
      (unInternalSettings (toInternalSettings self))
      (toJSString family')
      (toJSString script)
 
foreign import javascript unsafe
        "$1[\"setFontFallbackPrefersPictographs\"]($2)"
        ghcjs_dom_internal_settings_set_font_fallback_prefers_pictographs
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.fontFallbackPrefersPictographs Mozilla InternalSettings.fontFallbackPrefersPictographs documentation> 
internalSettingsSetFontFallbackPrefersPictographs ::
                                                  (IsInternalSettings self) => self -> Bool -> IO ()
internalSettingsSetFontFallbackPrefersPictographs self
  preferPictographs
  = ghcjs_dom_internal_settings_set_font_fallback_prefers_pictographs
      (unInternalSettings (toInternalSettings self))
      preferPictographs
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_text_autosizing_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.textAutosizingEnabled Mozilla InternalSettings.textAutosizingEnabled documentation> 
internalSettingsSetTextAutosizingEnabled ::
                                         (IsInternalSettings self) => self -> Bool -> IO ()
internalSettingsSetTextAutosizingEnabled self enabled
  = ghcjs_dom_internal_settings_set_text_autosizing_enabled
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingWindowSizeOverride\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_text_autosizing_window_size_override
        :: JSRef InternalSettings -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.textAutosizingWindowSizeOverride Mozilla InternalSettings.textAutosizingWindowSizeOverride documentation> 
internalSettingsSetTextAutosizingWindowSizeOverride ::
                                                    (IsInternalSettings self) =>
                                                      self -> Int -> Int -> IO ()
internalSettingsSetTextAutosizingWindowSizeOverride self width
  height
  = ghcjs_dom_internal_settings_set_text_autosizing_window_size_override
      (unInternalSettings (toInternalSettings self))
      width
      height
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingFontScaleFactor\"]($2)"
        ghcjs_dom_internal_settings_set_text_autosizing_font_scale_factor
        :: JSRef InternalSettings -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.textAutosizingFontScaleFactor Mozilla InternalSettings.textAutosizingFontScaleFactor documentation> 
internalSettingsSetTextAutosizingFontScaleFactor ::
                                                 (IsInternalSettings self) => self -> Float -> IO ()
internalSettingsSetTextAutosizingFontScaleFactor self
  fontScaleFactor
  = ghcjs_dom_internal_settings_set_text_autosizing_font_scale_factor
      (unInternalSettings (toInternalSettings self))
      fontScaleFactor
 
foreign import javascript unsafe "$1[\"setCSSShapesEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_css_shapes_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.cssShapesEnabled Mozilla InternalSettings.cssShapesEnabled documentation> 
internalSettingsSetCSSShapesEnabled ::
                                    (IsInternalSettings self) => self -> Bool -> IO ()
internalSettingsSetCSSShapesEnabled self enabled
  = ghcjs_dom_internal_settings_set_css_shapes_enabled
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe "$1[\"setCanStartMedia\"]($2)"
        ghcjs_dom_internal_settings_set_can_start_media ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.canStartMedia Mozilla InternalSettings.canStartMedia documentation> 
internalSettingsSetCanStartMedia ::
                                 (IsInternalSettings self) => self -> Bool -> IO ()
internalSettingsSetCanStartMedia self enabled
  = ghcjs_dom_internal_settings_set_can_start_media
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setShouldDisplayTrackKind\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_should_display_track_kind ::
        JSRef InternalSettings -> JSString -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldDisplayTrackKind Mozilla InternalSettings.shouldDisplayTrackKind documentation> 
internalSettingsSetShouldDisplayTrackKind ::
                                          (IsInternalSettings self, ToJSString kind) =>
                                            self -> kind -> Bool -> IO ()
internalSettingsSetShouldDisplayTrackKind self kind enabled
  = ghcjs_dom_internal_settings_set_should_display_track_kind
      (unInternalSettings (toInternalSettings self))
      (toJSString kind)
      enabled
 
foreign import javascript unsafe
        "($1[\"shouldDisplayTrackKind\"]($2) ? 1 : 0)"
        ghcjs_dom_internal_settings_should_display_track_kind ::
        JSRef InternalSettings -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldDisplayTrackKind Mozilla InternalSettings.shouldDisplayTrackKind documentation> 
internalSettingsShouldDisplayTrackKind ::
                                       (IsInternalSettings self, ToJSString trackKind) =>
                                         self -> trackKind -> IO Bool
internalSettingsShouldDisplayTrackKind self trackKind
  = ghcjs_dom_internal_settings_should_display_track_kind
      (unInternalSettings (toInternalSettings self))
      (toJSString trackKind)
 
foreign import javascript unsafe
        "$1[\"setDefaultVideoPosterURL\"]($2)"
        ghcjs_dom_internal_settings_set_default_video_poster_url ::
        JSRef InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.defaultVideoPosterURL Mozilla InternalSettings.defaultVideoPosterURL documentation> 
internalSettingsSetDefaultVideoPosterURL ::
                                         (IsInternalSettings self, ToJSString poster) =>
                                           self -> poster -> IO ()
internalSettingsSetDefaultVideoPosterURL self poster
  = ghcjs_dom_internal_settings_set_default_video_poster_url
      (unInternalSettings (toInternalSettings self))
      (toJSString poster)
 
foreign import javascript unsafe
        "$1[\"setTimeWithoutMouseMovementBeforeHidingControls\"]($2)"
        ghcjs_dom_internal_settings_set_time_without_mouse_movement_before_hiding_controls
        :: JSRef InternalSettings -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.timeWithoutMouseMovementBeforeHidingControls Mozilla InternalSettings.timeWithoutMouseMovementBeforeHidingControls documentation> 
internalSettingsSetTimeWithoutMouseMovementBeforeHidingControls ::
                                                                (IsInternalSettings self) =>
                                                                  self -> Double -> IO ()
internalSettingsSetTimeWithoutMouseMovementBeforeHidingControls
  self time
  = ghcjs_dom_internal_settings_set_time_without_mouse_movement_before_hiding_controls
      (unInternalSettings (toInternalSettings self))
      time
 
foreign import javascript unsafe "$1[\"setMediaTypeOverride\"]($2)"
        ghcjs_dom_internal_settings_set_media_type_override ::
        JSRef InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.mediaTypeOverride Mozilla InternalSettings.mediaTypeOverride documentation> 
internalSettingsSetMediaTypeOverride ::
                                     (IsInternalSettings self, ToJSString mediaTypeOverride) =>
                                       self -> mediaTypeOverride -> IO ()
internalSettingsSetMediaTypeOverride self mediaTypeOverride
  = ghcjs_dom_internal_settings_set_media_type_override
      (unInternalSettings (toInternalSettings self))
      (toJSString mediaTypeOverride)
 
foreign import javascript unsafe
        "$1[\"setPluginReplacementEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_plugin_replacement_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.pluginReplacementEnabled Mozilla InternalSettings.pluginReplacementEnabled documentation> 
internalSettingsSetPluginReplacementEnabled ::
                                            (IsInternalSettings self) => self -> Bool -> IO ()
internalSettingsSetPluginReplacementEnabled self enabled
  = ghcjs_dom_internal_settings_set_plugin_replacement_enabled
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe "$1[\"setEditingBehavior\"]($2)"
        ghcjs_dom_internal_settings_set_editing_behavior ::
        JSRef InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.editingBehavior Mozilla InternalSettings.editingBehavior documentation> 
internalSettingsSetEditingBehavior ::
                                   (IsInternalSettings self, ToJSString behavior) =>
                                     self -> behavior -> IO ()
internalSettingsSetEditingBehavior self behavior
  = ghcjs_dom_internal_settings_set_editing_behavior
      (unInternalSettings (toInternalSettings self))
      (toJSString behavior)
 
foreign import javascript unsafe
        "$1[\"setShouldConvertPositionStyleOnCopy\"]($2)"
        ghcjs_dom_internal_settings_set_should_convert_position_style_on_copy
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldConvertPositionStyleOnCopy Mozilla InternalSettings.shouldConvertPositionStyleOnCopy documentation> 
internalSettingsSetShouldConvertPositionStyleOnCopy ::
                                                    (IsInternalSettings self) =>
                                                      self -> Bool -> IO ()
internalSettingsSetShouldConvertPositionStyleOnCopy self convert
  = ghcjs_dom_internal_settings_set_should_convert_position_style_on_copy
      (unInternalSettings (toInternalSettings self))
      convert
 
foreign import javascript unsafe
        "$1[\"setLangAttributeAwareFormControlUIEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_lang_attribute_aware_form_control_ui_enabled
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.langAttributeAwareFormControlUIEnabled Mozilla InternalSettings.langAttributeAwareFormControlUIEnabled documentation> 
internalSettingsSetLangAttributeAwareFormControlUIEnabled ::
                                                          (IsInternalSettings self) =>
                                                            self -> Bool -> IO ()
internalSettingsSetLangAttributeAwareFormControlUIEnabled self
  enabled
  = ghcjs_dom_internal_settings_set_lang_attribute_aware_form_control_ui_enabled
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setStorageBlockingPolicy\"]($2)"
        ghcjs_dom_internal_settings_set_storage_blocking_policy ::
        JSRef InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.storageBlockingPolicy Mozilla InternalSettings.storageBlockingPolicy documentation> 
internalSettingsSetStorageBlockingPolicy ::
                                         (IsInternalSettings self, ToJSString policy) =>
                                           self -> policy -> IO ()
internalSettingsSetStorageBlockingPolicy self policy
  = ghcjs_dom_internal_settings_set_storage_blocking_policy
      (unInternalSettings (toInternalSettings self))
      (toJSString policy)
 
foreign import javascript unsafe "$1[\"setImagesEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_images_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.imagesEnabled Mozilla InternalSettings.imagesEnabled documentation> 
internalSettingsSetImagesEnabled ::
                                 (IsInternalSettings self) => self -> Bool -> IO ()
internalSettingsSetImagesEnabled self enabled
  = ghcjs_dom_internal_settings_set_images_enabled
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setUseLegacyBackgroundSizeShorthandBehavior\"]($2)"
        ghcjs_dom_internal_settings_set_use_legacy_background_size_shorthand_behavior
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.useLegacyBackgroundSizeShorthandBehavior Mozilla InternalSettings.useLegacyBackgroundSizeShorthandBehavior documentation> 
internalSettingsSetUseLegacyBackgroundSizeShorthandBehavior ::
                                                            (IsInternalSettings self) =>
                                                              self -> Bool -> IO ()
internalSettingsSetUseLegacyBackgroundSizeShorthandBehavior self
  enabled
  = ghcjs_dom_internal_settings_set_use_legacy_background_size_shorthand_behavior
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setAutoscrollForDragAndDropEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_autoscroll_for_drag_and_drop_enabled
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.autoscrollForDragAndDropEnabled Mozilla InternalSettings.autoscrollForDragAndDropEnabled documentation> 
internalSettingsSetAutoscrollForDragAndDropEnabled ::
                                                   (IsInternalSettings self) =>
                                                     self -> Bool -> IO ()
internalSettingsSetAutoscrollForDragAndDropEnabled self enabled
  = ghcjs_dom_internal_settings_set_autoscroll_for_drag_and_drop_enabled
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setBackgroundShouldExtendBeyondPage\"]($2)"
        ghcjs_dom_internal_settings_set_background_should_extend_beyond_page
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.backgroundShouldExtendBeyondPage Mozilla InternalSettings.backgroundShouldExtendBeyondPage documentation> 
internalSettingsSetBackgroundShouldExtendBeyondPage ::
                                                    (IsInternalSettings self) =>
                                                      self -> Bool -> IO ()
internalSettingsSetBackgroundShouldExtendBeyondPage self
  hasExtendedBackground
  = ghcjs_dom_internal_settings_set_background_should_extend_beyond_page
      (unInternalSettings (toInternalSettings self))
      hasExtendedBackground
 
foreign import javascript unsafe
        "$1[\"setScrollingTreeIncludesFrames\"]($2)"
        ghcjs_dom_internal_settings_set_scrolling_tree_includes_frames ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.scrollingTreeIncludesFrames Mozilla InternalSettings.scrollingTreeIncludesFrames documentation> 
internalSettingsSetScrollingTreeIncludesFrames ::
                                               (IsInternalSettings self) => self -> Bool -> IO ()
internalSettingsSetScrollingTreeIncludesFrames self enabled
  = ghcjs_dom_internal_settings_set_scrolling_tree_includes_frames
      (unInternalSettings (toInternalSettings self))
      enabled
 
foreign import javascript unsafe
        "$1[\"setMinimumTimerInterval\"]($2)"
        ghcjs_dom_internal_settings_set_minimum_timer_interval ::
        JSRef InternalSettings -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.minimumTimerInterval Mozilla InternalSettings.minimumTimerInterval documentation> 
internalSettingsSetMinimumTimerInterval ::
                                        (IsInternalSettings self) => self -> Double -> IO ()
internalSettingsSetMinimumTimerInterval self intervalInSeconds
  = ghcjs_dom_internal_settings_set_minimum_timer_interval
      (unInternalSettings (toInternalSettings self))
      intervalInSeconds
#else
module GHCJS.DOM.InternalSettings (
  ) where
#endif
