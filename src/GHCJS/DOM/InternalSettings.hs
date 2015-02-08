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
import Control.Monad.IO.Class (MonadIO(..))
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
                                              (MonadIO m, IsInternalSettings self) =>
                                                self -> Bool -> m ()
internalSettingsSetTouchEventEmulationEnabled self enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_touch_event_emulation_enabled
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setStandardFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_standard_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.standardFontFamily Mozilla InternalSettings.standardFontFamily documentation> 
internalSettingsSetStandardFontFamily ::
                                      (MonadIO m, IsInternalSettings self, ToJSString family',
                                       ToJSString script) =>
                                        self -> family' -> script -> m ()
internalSettingsSetStandardFontFamily self family' script
  = liftIO
      (ghcjs_dom_internal_settings_set_standard_font_family
         (unInternalSettings (toInternalSettings self))
         (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setSerifFontFamily\"]($2, $3)"
        ghcjs_dom_internal_settings_set_serif_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.serifFontFamily Mozilla InternalSettings.serifFontFamily documentation> 
internalSettingsSetSerifFontFamily ::
                                   (MonadIO m, IsInternalSettings self, ToJSString family',
                                    ToJSString script) =>
                                     self -> family' -> script -> m ()
internalSettingsSetSerifFontFamily self family' script
  = liftIO
      (ghcjs_dom_internal_settings_set_serif_font_family
         (unInternalSettings (toInternalSettings self))
         (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setSansSerifFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_sans_serif_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.sansSerifFontFamily Mozilla InternalSettings.sansSerifFontFamily documentation> 
internalSettingsSetSansSerifFontFamily ::
                                       (MonadIO m, IsInternalSettings self, ToJSString family',
                                        ToJSString script) =>
                                         self -> family' -> script -> m ()
internalSettingsSetSansSerifFontFamily self family' script
  = liftIO
      (ghcjs_dom_internal_settings_set_sans_serif_font_family
         (unInternalSettings (toInternalSettings self))
         (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setFixedFontFamily\"]($2, $3)"
        ghcjs_dom_internal_settings_set_fixed_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.fixedFontFamily Mozilla InternalSettings.fixedFontFamily documentation> 
internalSettingsSetFixedFontFamily ::
                                   (MonadIO m, IsInternalSettings self, ToJSString family',
                                    ToJSString script) =>
                                     self -> family' -> script -> m ()
internalSettingsSetFixedFontFamily self family' script
  = liftIO
      (ghcjs_dom_internal_settings_set_fixed_font_family
         (unInternalSettings (toInternalSettings self))
         (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setCursiveFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_cursive_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.cursiveFontFamily Mozilla InternalSettings.cursiveFontFamily documentation> 
internalSettingsSetCursiveFontFamily ::
                                     (MonadIO m, IsInternalSettings self, ToJSString family',
                                      ToJSString script) =>
                                       self -> family' -> script -> m ()
internalSettingsSetCursiveFontFamily self family' script
  = liftIO
      (ghcjs_dom_internal_settings_set_cursive_font_family
         (unInternalSettings (toInternalSettings self))
         (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setFantasyFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_fantasy_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.fantasyFontFamily Mozilla InternalSettings.fantasyFontFamily documentation> 
internalSettingsSetFantasyFontFamily ::
                                     (MonadIO m, IsInternalSettings self, ToJSString family',
                                      ToJSString script) =>
                                       self -> family' -> script -> m ()
internalSettingsSetFantasyFontFamily self family' script
  = liftIO
      (ghcjs_dom_internal_settings_set_fantasy_font_family
         (unInternalSettings (toInternalSettings self))
         (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setPictographFontFamily\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_pictograph_font_family ::
        JSRef InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.pictographFontFamily Mozilla InternalSettings.pictographFontFamily documentation> 
internalSettingsSetPictographFontFamily ::
                                        (MonadIO m, IsInternalSettings self, ToJSString family',
                                         ToJSString script) =>
                                          self -> family' -> script -> m ()
internalSettingsSetPictographFontFamily self family' script
  = liftIO
      (ghcjs_dom_internal_settings_set_pictograph_font_family
         (unInternalSettings (toInternalSettings self))
         (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setFontFallbackPrefersPictographs\"]($2)"
        ghcjs_dom_internal_settings_set_font_fallback_prefers_pictographs
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.fontFallbackPrefersPictographs Mozilla InternalSettings.fontFallbackPrefersPictographs documentation> 
internalSettingsSetFontFallbackPrefersPictographs ::
                                                  (MonadIO m, IsInternalSettings self) =>
                                                    self -> Bool -> m ()
internalSettingsSetFontFallbackPrefersPictographs self
  preferPictographs
  = liftIO
      (ghcjs_dom_internal_settings_set_font_fallback_prefers_pictographs
         (unInternalSettings (toInternalSettings self))
         preferPictographs)
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_text_autosizing_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.textAutosizingEnabled Mozilla InternalSettings.textAutosizingEnabled documentation> 
internalSettingsSetTextAutosizingEnabled ::
                                         (MonadIO m, IsInternalSettings self) =>
                                           self -> Bool -> m ()
internalSettingsSetTextAutosizingEnabled self enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_text_autosizing_enabled
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingWindowSizeOverride\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_text_autosizing_window_size_override
        :: JSRef InternalSettings -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.textAutosizingWindowSizeOverride Mozilla InternalSettings.textAutosizingWindowSizeOverride documentation> 
internalSettingsSetTextAutosizingWindowSizeOverride ::
                                                    (MonadIO m, IsInternalSettings self) =>
                                                      self -> Int -> Int -> m ()
internalSettingsSetTextAutosizingWindowSizeOverride self width
  height
  = liftIO
      (ghcjs_dom_internal_settings_set_text_autosizing_window_size_override
         (unInternalSettings (toInternalSettings self))
         width
         height)
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingFontScaleFactor\"]($2)"
        ghcjs_dom_internal_settings_set_text_autosizing_font_scale_factor
        :: JSRef InternalSettings -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.textAutosizingFontScaleFactor Mozilla InternalSettings.textAutosizingFontScaleFactor documentation> 
internalSettingsSetTextAutosizingFontScaleFactor ::
                                                 (MonadIO m, IsInternalSettings self) =>
                                                   self -> Float -> m ()
internalSettingsSetTextAutosizingFontScaleFactor self
  fontScaleFactor
  = liftIO
      (ghcjs_dom_internal_settings_set_text_autosizing_font_scale_factor
         (unInternalSettings (toInternalSettings self))
         fontScaleFactor)
 
foreign import javascript unsafe "$1[\"setCSSShapesEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_css_shapes_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.cssShapesEnabled Mozilla InternalSettings.cssShapesEnabled documentation> 
internalSettingsSetCSSShapesEnabled ::
                                    (MonadIO m, IsInternalSettings self) => self -> Bool -> m ()
internalSettingsSetCSSShapesEnabled self enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_css_shapes_enabled
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe "$1[\"setCanStartMedia\"]($2)"
        ghcjs_dom_internal_settings_set_can_start_media ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.canStartMedia Mozilla InternalSettings.canStartMedia documentation> 
internalSettingsSetCanStartMedia ::
                                 (MonadIO m, IsInternalSettings self) => self -> Bool -> m ()
internalSettingsSetCanStartMedia self enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_can_start_media
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setShouldDisplayTrackKind\"]($2,\n$3)"
        ghcjs_dom_internal_settings_set_should_display_track_kind ::
        JSRef InternalSettings -> JSString -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldDisplayTrackKind Mozilla InternalSettings.shouldDisplayTrackKind documentation> 
internalSettingsSetShouldDisplayTrackKind ::
                                          (MonadIO m, IsInternalSettings self, ToJSString kind) =>
                                            self -> kind -> Bool -> m ()
internalSettingsSetShouldDisplayTrackKind self kind enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_should_display_track_kind
         (unInternalSettings (toInternalSettings self))
         (toJSString kind)
         enabled)
 
foreign import javascript unsafe
        "($1[\"shouldDisplayTrackKind\"]($2) ? 1 : 0)"
        ghcjs_dom_internal_settings_should_display_track_kind ::
        JSRef InternalSettings -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldDisplayTrackKind Mozilla InternalSettings.shouldDisplayTrackKind documentation> 
internalSettingsShouldDisplayTrackKind ::
                                       (MonadIO m, IsInternalSettings self, ToJSString trackKind) =>
                                         self -> trackKind -> m Bool
internalSettingsShouldDisplayTrackKind self trackKind
  = liftIO
      (ghcjs_dom_internal_settings_should_display_track_kind
         (unInternalSettings (toInternalSettings self))
         (toJSString trackKind))
 
foreign import javascript unsafe
        "$1[\"setDefaultVideoPosterURL\"]($2)"
        ghcjs_dom_internal_settings_set_default_video_poster_url ::
        JSRef InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.defaultVideoPosterURL Mozilla InternalSettings.defaultVideoPosterURL documentation> 
internalSettingsSetDefaultVideoPosterURL ::
                                         (MonadIO m, IsInternalSettings self, ToJSString poster) =>
                                           self -> poster -> m ()
internalSettingsSetDefaultVideoPosterURL self poster
  = liftIO
      (ghcjs_dom_internal_settings_set_default_video_poster_url
         (unInternalSettings (toInternalSettings self))
         (toJSString poster))
 
foreign import javascript unsafe
        "$1[\"setTimeWithoutMouseMovementBeforeHidingControls\"]($2)"
        ghcjs_dom_internal_settings_set_time_without_mouse_movement_before_hiding_controls
        :: JSRef InternalSettings -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.timeWithoutMouseMovementBeforeHidingControls Mozilla InternalSettings.timeWithoutMouseMovementBeforeHidingControls documentation> 
internalSettingsSetTimeWithoutMouseMovementBeforeHidingControls ::
                                                                (MonadIO m,
                                                                 IsInternalSettings self) =>
                                                                  self -> Double -> m ()
internalSettingsSetTimeWithoutMouseMovementBeforeHidingControls
  self time
  = liftIO
      (ghcjs_dom_internal_settings_set_time_without_mouse_movement_before_hiding_controls
         (unInternalSettings (toInternalSettings self))
         time)
 
foreign import javascript unsafe "$1[\"setMediaTypeOverride\"]($2)"
        ghcjs_dom_internal_settings_set_media_type_override ::
        JSRef InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.mediaTypeOverride Mozilla InternalSettings.mediaTypeOverride documentation> 
internalSettingsSetMediaTypeOverride ::
                                     (MonadIO m, IsInternalSettings self,
                                      ToJSString mediaTypeOverride) =>
                                       self -> mediaTypeOverride -> m ()
internalSettingsSetMediaTypeOverride self mediaTypeOverride
  = liftIO
      (ghcjs_dom_internal_settings_set_media_type_override
         (unInternalSettings (toInternalSettings self))
         (toJSString mediaTypeOverride))
 
foreign import javascript unsafe
        "$1[\"setPluginReplacementEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_plugin_replacement_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.pluginReplacementEnabled Mozilla InternalSettings.pluginReplacementEnabled documentation> 
internalSettingsSetPluginReplacementEnabled ::
                                            (MonadIO m, IsInternalSettings self) =>
                                              self -> Bool -> m ()
internalSettingsSetPluginReplacementEnabled self enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_plugin_replacement_enabled
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe "$1[\"setEditingBehavior\"]($2)"
        ghcjs_dom_internal_settings_set_editing_behavior ::
        JSRef InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.editingBehavior Mozilla InternalSettings.editingBehavior documentation> 
internalSettingsSetEditingBehavior ::
                                   (MonadIO m, IsInternalSettings self, ToJSString behavior) =>
                                     self -> behavior -> m ()
internalSettingsSetEditingBehavior self behavior
  = liftIO
      (ghcjs_dom_internal_settings_set_editing_behavior
         (unInternalSettings (toInternalSettings self))
         (toJSString behavior))
 
foreign import javascript unsafe
        "$1[\"setShouldConvertPositionStyleOnCopy\"]($2)"
        ghcjs_dom_internal_settings_set_should_convert_position_style_on_copy
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldConvertPositionStyleOnCopy Mozilla InternalSettings.shouldConvertPositionStyleOnCopy documentation> 
internalSettingsSetShouldConvertPositionStyleOnCopy ::
                                                    (MonadIO m, IsInternalSettings self) =>
                                                      self -> Bool -> m ()
internalSettingsSetShouldConvertPositionStyleOnCopy self convert
  = liftIO
      (ghcjs_dom_internal_settings_set_should_convert_position_style_on_copy
         (unInternalSettings (toInternalSettings self))
         convert)
 
foreign import javascript unsafe
        "$1[\"setLangAttributeAwareFormControlUIEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_lang_attribute_aware_form_control_ui_enabled
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.langAttributeAwareFormControlUIEnabled Mozilla InternalSettings.langAttributeAwareFormControlUIEnabled documentation> 
internalSettingsSetLangAttributeAwareFormControlUIEnabled ::
                                                          (MonadIO m, IsInternalSettings self) =>
                                                            self -> Bool -> m ()
internalSettingsSetLangAttributeAwareFormControlUIEnabled self
  enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_lang_attribute_aware_form_control_ui_enabled
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setStorageBlockingPolicy\"]($2)"
        ghcjs_dom_internal_settings_set_storage_blocking_policy ::
        JSRef InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.storageBlockingPolicy Mozilla InternalSettings.storageBlockingPolicy documentation> 
internalSettingsSetStorageBlockingPolicy ::
                                         (MonadIO m, IsInternalSettings self, ToJSString policy) =>
                                           self -> policy -> m ()
internalSettingsSetStorageBlockingPolicy self policy
  = liftIO
      (ghcjs_dom_internal_settings_set_storage_blocking_policy
         (unInternalSettings (toInternalSettings self))
         (toJSString policy))
 
foreign import javascript unsafe "$1[\"setImagesEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_images_enabled ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.imagesEnabled Mozilla InternalSettings.imagesEnabled documentation> 
internalSettingsSetImagesEnabled ::
                                 (MonadIO m, IsInternalSettings self) => self -> Bool -> m ()
internalSettingsSetImagesEnabled self enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_images_enabled
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setUseLegacyBackgroundSizeShorthandBehavior\"]($2)"
        ghcjs_dom_internal_settings_set_use_legacy_background_size_shorthand_behavior
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.useLegacyBackgroundSizeShorthandBehavior Mozilla InternalSettings.useLegacyBackgroundSizeShorthandBehavior documentation> 
internalSettingsSetUseLegacyBackgroundSizeShorthandBehavior ::
                                                            (MonadIO m, IsInternalSettings self) =>
                                                              self -> Bool -> m ()
internalSettingsSetUseLegacyBackgroundSizeShorthandBehavior self
  enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_use_legacy_background_size_shorthand_behavior
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setAutoscrollForDragAndDropEnabled\"]($2)"
        ghcjs_dom_internal_settings_set_autoscroll_for_drag_and_drop_enabled
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.autoscrollForDragAndDropEnabled Mozilla InternalSettings.autoscrollForDragAndDropEnabled documentation> 
internalSettingsSetAutoscrollForDragAndDropEnabled ::
                                                   (MonadIO m, IsInternalSettings self) =>
                                                     self -> Bool -> m ()
internalSettingsSetAutoscrollForDragAndDropEnabled self enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_autoscroll_for_drag_and_drop_enabled
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setBackgroundShouldExtendBeyondPage\"]($2)"
        ghcjs_dom_internal_settings_set_background_should_extend_beyond_page
        :: JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.backgroundShouldExtendBeyondPage Mozilla InternalSettings.backgroundShouldExtendBeyondPage documentation> 
internalSettingsSetBackgroundShouldExtendBeyondPage ::
                                                    (MonadIO m, IsInternalSettings self) =>
                                                      self -> Bool -> m ()
internalSettingsSetBackgroundShouldExtendBeyondPage self
  hasExtendedBackground
  = liftIO
      (ghcjs_dom_internal_settings_set_background_should_extend_beyond_page
         (unInternalSettings (toInternalSettings self))
         hasExtendedBackground)
 
foreign import javascript unsafe
        "$1[\"setScrollingTreeIncludesFrames\"]($2)"
        ghcjs_dom_internal_settings_set_scrolling_tree_includes_frames ::
        JSRef InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.scrollingTreeIncludesFrames Mozilla InternalSettings.scrollingTreeIncludesFrames documentation> 
internalSettingsSetScrollingTreeIncludesFrames ::
                                               (MonadIO m, IsInternalSettings self) =>
                                                 self -> Bool -> m ()
internalSettingsSetScrollingTreeIncludesFrames self enabled
  = liftIO
      (ghcjs_dom_internal_settings_set_scrolling_tree_includes_frames
         (unInternalSettings (toInternalSettings self))
         enabled)
 
foreign import javascript unsafe
        "$1[\"setMinimumTimerInterval\"]($2)"
        ghcjs_dom_internal_settings_set_minimum_timer_interval ::
        JSRef InternalSettings -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.minimumTimerInterval Mozilla InternalSettings.minimumTimerInterval documentation> 
internalSettingsSetMinimumTimerInterval ::
                                        (MonadIO m, IsInternalSettings self) =>
                                          self -> Double -> m ()
internalSettingsSetMinimumTimerInterval self intervalInSeconds
  = liftIO
      (ghcjs_dom_internal_settings_set_minimum_timer_interval
         (unInternalSettings (toInternalSettings self))
         intervalInSeconds)
#else
module GHCJS.DOM.InternalSettings (
  ) where
#endif
