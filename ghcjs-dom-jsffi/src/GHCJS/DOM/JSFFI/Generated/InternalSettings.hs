{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.InternalSettings
       (js_setTouchEventEmulationEnabled, setTouchEventEmulationEnabled,
        js_setStandardFontFamily, setStandardFontFamily,
        js_setSerifFontFamily, setSerifFontFamily,
        js_setSansSerifFontFamily, setSansSerifFontFamily,
        js_setFixedFontFamily, setFixedFontFamily, js_setCursiveFontFamily,
        setCursiveFontFamily, js_setFantasyFontFamily,
        setFantasyFontFamily, js_setPictographFontFamily,
        setPictographFontFamily, js_setFontFallbackPrefersPictographs,
        setFontFallbackPrefersPictographs, js_setTextAutosizingEnabled,
        setTextAutosizingEnabled, js_setTextAutosizingWindowSizeOverride,
        setTextAutosizingWindowSizeOverride,
        js_setTextAutosizingFontScaleFactor,
        setTextAutosizingFontScaleFactor, js_setCSSShapesEnabled,
        setCSSShapesEnabled, js_setCanStartMedia, setCanStartMedia,
        js_setShouldDisplayTrackKind, setShouldDisplayTrackKind,
        js_shouldDisplayTrackKind, shouldDisplayTrackKind,
        js_setDefaultVideoPosterURL, setDefaultVideoPosterURL,
        js_setTimeWithoutMouseMovementBeforeHidingControls,
        setTimeWithoutMouseMovementBeforeHidingControls,
        js_setMediaTypeOverride, setMediaTypeOverride,
        js_setPluginReplacementEnabled, setPluginReplacementEnabled,
        js_setEditingBehavior, setEditingBehavior,
        js_setShouldConvertPositionStyleOnCopy,
        setShouldConvertPositionStyleOnCopy,
        js_setLangAttributeAwareFormControlUIEnabled,
        setLangAttributeAwareFormControlUIEnabled,
        js_setStorageBlockingPolicy, setStorageBlockingPolicy,
        js_setImagesEnabled, setImagesEnabled,
        js_setUseLegacyBackgroundSizeShorthandBehavior,
        setUseLegacyBackgroundSizeShorthandBehavior,
        js_setAutoscrollForDragAndDropEnabled,
        setAutoscrollForDragAndDropEnabled,
        js_setBackgroundShouldExtendBeyondPage,
        setBackgroundShouldExtendBeyondPage,
        js_setScrollingTreeIncludesFrames, setScrollingTreeIncludesFrames,
        js_setMinimumTimerInterval, setMinimumTimerInterval,
        InternalSettings, castToInternalSettings, gTypeInternalSettings)
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
 
foreign import javascript unsafe
        "$1[\"setTouchEventEmulationEnabled\"]($2)"
        js_setTouchEventEmulationEnabled ::
        InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTouchEventEmulationEnabled Mozilla InternalSettings.setTouchEventEmulationEnabled documentation> 
setTouchEventEmulationEnabled ::
                              (MonadIO m) => InternalSettings -> Bool -> m ()
setTouchEventEmulationEnabled self enabled
  = liftIO (js_setTouchEventEmulationEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setStandardFontFamily\"]($2,\n$3)" js_setStandardFontFamily
        :: InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setStandardFontFamily Mozilla InternalSettings.setStandardFontFamily documentation> 
setStandardFontFamily ::
                      (MonadIO m, ToJSString family', ToJSString script) =>
                        InternalSettings -> family' -> script -> m ()
setStandardFontFamily self family' script
  = liftIO
      (js_setStandardFontFamily (self) (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setSerifFontFamily\"]($2, $3)" js_setSerifFontFamily ::
        InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setSerifFontFamily Mozilla InternalSettings.setSerifFontFamily documentation> 
setSerifFontFamily ::
                   (MonadIO m, ToJSString family', ToJSString script) =>
                     InternalSettings -> family' -> script -> m ()
setSerifFontFamily self family' script
  = liftIO
      (js_setSerifFontFamily (self) (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setSansSerifFontFamily\"]($2,\n$3)" js_setSansSerifFontFamily
        :: InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setSansSerifFontFamily Mozilla InternalSettings.setSansSerifFontFamily documentation> 
setSansSerifFontFamily ::
                       (MonadIO m, ToJSString family', ToJSString script) =>
                         InternalSettings -> family' -> script -> m ()
setSansSerifFontFamily self family' script
  = liftIO
      (js_setSansSerifFontFamily (self) (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setFixedFontFamily\"]($2, $3)" js_setFixedFontFamily ::
        InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setFixedFontFamily Mozilla InternalSettings.setFixedFontFamily documentation> 
setFixedFontFamily ::
                   (MonadIO m, ToJSString family', ToJSString script) =>
                     InternalSettings -> family' -> script -> m ()
setFixedFontFamily self family' script
  = liftIO
      (js_setFixedFontFamily (self) (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setCursiveFontFamily\"]($2,\n$3)" js_setCursiveFontFamily ::
        InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setCursiveFontFamily Mozilla InternalSettings.setCursiveFontFamily documentation> 
setCursiveFontFamily ::
                     (MonadIO m, ToJSString family', ToJSString script) =>
                       InternalSettings -> family' -> script -> m ()
setCursiveFontFamily self family' script
  = liftIO
      (js_setCursiveFontFamily (self) (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setFantasyFontFamily\"]($2,\n$3)" js_setFantasyFontFamily ::
        InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setFantasyFontFamily Mozilla InternalSettings.setFantasyFontFamily documentation> 
setFantasyFontFamily ::
                     (MonadIO m, ToJSString family', ToJSString script) =>
                       InternalSettings -> family' -> script -> m ()
setFantasyFontFamily self family' script
  = liftIO
      (js_setFantasyFontFamily (self) (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setPictographFontFamily\"]($2,\n$3)"
        js_setPictographFontFamily ::
        InternalSettings -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setPictographFontFamily Mozilla InternalSettings.setPictographFontFamily documentation> 
setPictographFontFamily ::
                        (MonadIO m, ToJSString family', ToJSString script) =>
                          InternalSettings -> family' -> script -> m ()
setPictographFontFamily self family' script
  = liftIO
      (js_setPictographFontFamily (self) (toJSString family')
         (toJSString script))
 
foreign import javascript unsafe
        "$1[\"setFontFallbackPrefersPictographs\"]($2)"
        js_setFontFallbackPrefersPictographs ::
        InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setFontFallbackPrefersPictographs Mozilla InternalSettings.setFontFallbackPrefersPictographs documentation> 
setFontFallbackPrefersPictographs ::
                                  (MonadIO m) => InternalSettings -> Bool -> m ()
setFontFallbackPrefersPictographs self preferPictographs
  = liftIO
      (js_setFontFallbackPrefersPictographs (self) preferPictographs)
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingEnabled\"]($2)" js_setTextAutosizingEnabled
        :: InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTextAutosizingEnabled Mozilla InternalSettings.setTextAutosizingEnabled documentation> 
setTextAutosizingEnabled ::
                         (MonadIO m) => InternalSettings -> Bool -> m ()
setTextAutosizingEnabled self enabled
  = liftIO (js_setTextAutosizingEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingWindowSizeOverride\"]($2,\n$3)"
        js_setTextAutosizingWindowSizeOverride ::
        InternalSettings -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTextAutosizingWindowSizeOverride Mozilla InternalSettings.setTextAutosizingWindowSizeOverride documentation> 
setTextAutosizingWindowSizeOverride ::
                                    (MonadIO m) => InternalSettings -> Int -> Int -> m ()
setTextAutosizingWindowSizeOverride self width height
  = liftIO
      (js_setTextAutosizingWindowSizeOverride (self) width height)
 
foreign import javascript unsafe
        "$1[\"setTextAutosizingFontScaleFactor\"]($2)"
        js_setTextAutosizingFontScaleFactor ::
        InternalSettings -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTextAutosizingFontScaleFactor Mozilla InternalSettings.setTextAutosizingFontScaleFactor documentation> 
setTextAutosizingFontScaleFactor ::
                                 (MonadIO m) => InternalSettings -> Float -> m ()
setTextAutosizingFontScaleFactor self fontScaleFactor
  = liftIO
      (js_setTextAutosizingFontScaleFactor (self) fontScaleFactor)
 
foreign import javascript unsafe "$1[\"setCSSShapesEnabled\"]($2)"
        js_setCSSShapesEnabled :: InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setCSSShapesEnabled Mozilla InternalSettings.setCSSShapesEnabled documentation> 
setCSSShapesEnabled ::
                    (MonadIO m) => InternalSettings -> Bool -> m ()
setCSSShapesEnabled self enabled
  = liftIO (js_setCSSShapesEnabled (self) enabled)
 
foreign import javascript unsafe "$1[\"setCanStartMedia\"]($2)"
        js_setCanStartMedia :: InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setCanStartMedia Mozilla InternalSettings.setCanStartMedia documentation> 
setCanStartMedia :: (MonadIO m) => InternalSettings -> Bool -> m ()
setCanStartMedia self enabled
  = liftIO (js_setCanStartMedia (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setShouldDisplayTrackKind\"]($2,\n$3)"
        js_setShouldDisplayTrackKind ::
        InternalSettings -> JSString -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setShouldDisplayTrackKind Mozilla InternalSettings.setShouldDisplayTrackKind documentation> 
setShouldDisplayTrackKind ::
                          (MonadIO m, ToJSString kind) =>
                            InternalSettings -> kind -> Bool -> m ()
setShouldDisplayTrackKind self kind enabled
  = liftIO
      (js_setShouldDisplayTrackKind (self) (toJSString kind) enabled)
 
foreign import javascript unsafe
        "($1[\"shouldDisplayTrackKind\"]($2) ? 1 : 0)"
        js_shouldDisplayTrackKind ::
        InternalSettings -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.shouldDisplayTrackKind Mozilla InternalSettings.shouldDisplayTrackKind documentation> 
shouldDisplayTrackKind ::
                       (MonadIO m, ToJSString trackKind) =>
                         InternalSettings -> trackKind -> m Bool
shouldDisplayTrackKind self trackKind
  = liftIO (js_shouldDisplayTrackKind (self) (toJSString trackKind))
 
foreign import javascript unsafe
        "$1[\"setDefaultVideoPosterURL\"]($2)" js_setDefaultVideoPosterURL
        :: InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setDefaultVideoPosterURL Mozilla InternalSettings.setDefaultVideoPosterURL documentation> 
setDefaultVideoPosterURL ::
                         (MonadIO m, ToJSString poster) =>
                           InternalSettings -> poster -> m ()
setDefaultVideoPosterURL self poster
  = liftIO (js_setDefaultVideoPosterURL (self) (toJSString poster))
 
foreign import javascript unsafe
        "$1[\"setTimeWithoutMouseMovementBeforeHidingControls\"]($2)"
        js_setTimeWithoutMouseMovementBeforeHidingControls ::
        InternalSettings -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setTimeWithoutMouseMovementBeforeHidingControls Mozilla InternalSettings.setTimeWithoutMouseMovementBeforeHidingControls documentation> 
setTimeWithoutMouseMovementBeforeHidingControls ::
                                                (MonadIO m) => InternalSettings -> Double -> m ()
setTimeWithoutMouseMovementBeforeHidingControls self time
  = liftIO
      (js_setTimeWithoutMouseMovementBeforeHidingControls (self) time)
 
foreign import javascript unsafe "$1[\"setMediaTypeOverride\"]($2)"
        js_setMediaTypeOverride :: InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setMediaTypeOverride Mozilla InternalSettings.setMediaTypeOverride documentation> 
setMediaTypeOverride ::
                     (MonadIO m, ToJSString mediaTypeOverride) =>
                       InternalSettings -> mediaTypeOverride -> m ()
setMediaTypeOverride self mediaTypeOverride
  = liftIO
      (js_setMediaTypeOverride (self) (toJSString mediaTypeOverride))
 
foreign import javascript unsafe
        "$1[\"setPluginReplacementEnabled\"]($2)"
        js_setPluginReplacementEnabled :: InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setPluginReplacementEnabled Mozilla InternalSettings.setPluginReplacementEnabled documentation> 
setPluginReplacementEnabled ::
                            (MonadIO m) => InternalSettings -> Bool -> m ()
setPluginReplacementEnabled self enabled
  = liftIO (js_setPluginReplacementEnabled (self) enabled)
 
foreign import javascript unsafe "$1[\"setEditingBehavior\"]($2)"
        js_setEditingBehavior :: InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setEditingBehavior Mozilla InternalSettings.setEditingBehavior documentation> 
setEditingBehavior ::
                   (MonadIO m, ToJSString behavior) =>
                     InternalSettings -> behavior -> m ()
setEditingBehavior self behavior
  = liftIO (js_setEditingBehavior (self) (toJSString behavior))
 
foreign import javascript unsafe
        "$1[\"setShouldConvertPositionStyleOnCopy\"]($2)"
        js_setShouldConvertPositionStyleOnCopy ::
        InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setShouldConvertPositionStyleOnCopy Mozilla InternalSettings.setShouldConvertPositionStyleOnCopy documentation> 
setShouldConvertPositionStyleOnCopy ::
                                    (MonadIO m) => InternalSettings -> Bool -> m ()
setShouldConvertPositionStyleOnCopy self convert
  = liftIO (js_setShouldConvertPositionStyleOnCopy (self) convert)
 
foreign import javascript unsafe
        "$1[\"setLangAttributeAwareFormControlUIEnabled\"]($2)"
        js_setLangAttributeAwareFormControlUIEnabled ::
        InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setLangAttributeAwareFormControlUIEnabled Mozilla InternalSettings.setLangAttributeAwareFormControlUIEnabled documentation> 
setLangAttributeAwareFormControlUIEnabled ::
                                          (MonadIO m) => InternalSettings -> Bool -> m ()
setLangAttributeAwareFormControlUIEnabled self enabled
  = liftIO
      (js_setLangAttributeAwareFormControlUIEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setStorageBlockingPolicy\"]($2)" js_setStorageBlockingPolicy
        :: InternalSettings -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setStorageBlockingPolicy Mozilla InternalSettings.setStorageBlockingPolicy documentation> 
setStorageBlockingPolicy ::
                         (MonadIO m, ToJSString policy) =>
                           InternalSettings -> policy -> m ()
setStorageBlockingPolicy self policy
  = liftIO (js_setStorageBlockingPolicy (self) (toJSString policy))
 
foreign import javascript unsafe "$1[\"setImagesEnabled\"]($2)"
        js_setImagesEnabled :: InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setImagesEnabled Mozilla InternalSettings.setImagesEnabled documentation> 
setImagesEnabled :: (MonadIO m) => InternalSettings -> Bool -> m ()
setImagesEnabled self enabled
  = liftIO (js_setImagesEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setUseLegacyBackgroundSizeShorthandBehavior\"]($2)"
        js_setUseLegacyBackgroundSizeShorthandBehavior ::
        InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setUseLegacyBackgroundSizeShorthandBehavior Mozilla InternalSettings.setUseLegacyBackgroundSizeShorthandBehavior documentation> 
setUseLegacyBackgroundSizeShorthandBehavior ::
                                            (MonadIO m) => InternalSettings -> Bool -> m ()
setUseLegacyBackgroundSizeShorthandBehavior self enabled
  = liftIO
      (js_setUseLegacyBackgroundSizeShorthandBehavior (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setAutoscrollForDragAndDropEnabled\"]($2)"
        js_setAutoscrollForDragAndDropEnabled ::
        InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setAutoscrollForDragAndDropEnabled Mozilla InternalSettings.setAutoscrollForDragAndDropEnabled documentation> 
setAutoscrollForDragAndDropEnabled ::
                                   (MonadIO m) => InternalSettings -> Bool -> m ()
setAutoscrollForDragAndDropEnabled self enabled
  = liftIO (js_setAutoscrollForDragAndDropEnabled (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setBackgroundShouldExtendBeyondPage\"]($2)"
        js_setBackgroundShouldExtendBeyondPage ::
        InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setBackgroundShouldExtendBeyondPage Mozilla InternalSettings.setBackgroundShouldExtendBeyondPage documentation> 
setBackgroundShouldExtendBeyondPage ::
                                    (MonadIO m) => InternalSettings -> Bool -> m ()
setBackgroundShouldExtendBeyondPage self hasExtendedBackground
  = liftIO
      (js_setBackgroundShouldExtendBeyondPage (self)
         hasExtendedBackground)
 
foreign import javascript unsafe
        "$1[\"setScrollingTreeIncludesFrames\"]($2)"
        js_setScrollingTreeIncludesFrames ::
        InternalSettings -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setScrollingTreeIncludesFrames Mozilla InternalSettings.setScrollingTreeIncludesFrames documentation> 
setScrollingTreeIncludesFrames ::
                               (MonadIO m) => InternalSettings -> Bool -> m ()
setScrollingTreeIncludesFrames self enabled
  = liftIO (js_setScrollingTreeIncludesFrames (self) enabled)
 
foreign import javascript unsafe
        "$1[\"setMinimumTimerInterval\"]($2)" js_setMinimumTimerInterval ::
        InternalSettings -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings.setMinimumTimerInterval Mozilla InternalSettings.setMinimumTimerInterval documentation> 
setMinimumTimerInterval ::
                        (MonadIO m) => InternalSettings -> Double -> m ()
setMinimumTimerInterval self intervalInSeconds
  = liftIO (js_setMinimumTimerInterval (self) intervalInSeconds)