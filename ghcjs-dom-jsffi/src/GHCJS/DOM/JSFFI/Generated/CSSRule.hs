{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSRule
       (pattern UNKNOWN_RULE, pattern STYLE_RULE, pattern CHARSET_RULE,
        pattern IMPORT_RULE, pattern MEDIA_RULE, pattern FONT_FACE_RULE,
        pattern PAGE_RULE, pattern KEYFRAMES_RULE, pattern KEYFRAME_RULE,
        pattern NAMESPACE_RULE, pattern SUPPORTS_RULE,
        pattern WEBKIT_VIEWPORT_RULE, pattern WEBKIT_REGION_RULE,
        pattern WEBKIT_KEYFRAMES_RULE, pattern WEBKIT_KEYFRAME_RULE,
        js_getType, getType, js_setCssText, setCssText, js_getCssText,
        getCssText, getCssTextUnsafe, getCssTextUnchecked,
        js_getParentStyleSheet, getParentStyleSheet,
        getParentStyleSheetUnsafe, getParentStyleSheetUnchecked,
        js_getParentRule, getParentRule, getParentRuleUnsafe,
        getParentRuleUnchecked, CSSRule(..), gTypeCSSRule, IsCSSRule,
        toCSSRule)
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
pattern UNKNOWN_RULE = 0
pattern STYLE_RULE = 1
pattern CHARSET_RULE = 2
pattern IMPORT_RULE = 3
pattern MEDIA_RULE = 4
pattern FONT_FACE_RULE = 5
pattern PAGE_RULE = 6
pattern KEYFRAMES_RULE = 7
pattern KEYFRAME_RULE = 8
pattern NAMESPACE_RULE = 10
pattern SUPPORTS_RULE = 12
pattern WEBKIT_VIEWPORT_RULE = 15
pattern WEBKIT_REGION_RULE = 16
pattern WEBKIT_KEYFRAMES_RULE = 7
pattern WEBKIT_KEYFRAME_RULE = 8
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        CSSRule -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.type Mozilla CSSRule.type documentation> 
getType :: (MonadIO m, IsCSSRule self) => self -> m Word
getType self = liftIO (js_getType (toCSSRule self))
 
foreign import javascript safe "$1[\"cssText\"] = $2;"
        js_setCssText :: CSSRule -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
setCssText ::
           (MonadIO m, IsCSSRule self, ToJSString val) =>
             self -> Maybe val -> m ()
setCssText self val
  = liftIO (js_setCssText (toCSSRule self) (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"cssText\"]" js_getCssText ::
        CSSRule -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
getCssText ::
           (MonadIO m, IsCSSRule self, FromJSString result) =>
             self -> m (Maybe result)
getCssText self
  = liftIO (fromMaybeJSString <$> (js_getCssText (toCSSRule self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
getCssTextUnsafe ::
                 (MonadIO m, IsCSSRule self, HasCallStack, FromJSString result) =>
                   self -> m result
getCssTextUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getCssText (toCSSRule self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
getCssTextUnchecked ::
                    (MonadIO m, IsCSSRule self, FromJSString result) =>
                      self -> m result
getCssTextUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getCssText (toCSSRule self)))
 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        js_getParentStyleSheet :: CSSRule -> IO (Nullable CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentStyleSheet Mozilla CSSRule.parentStyleSheet documentation> 
getParentStyleSheet ::
                    (MonadIO m, IsCSSRule self) => self -> m (Maybe CSSStyleSheet)
getParentStyleSheet self
  = liftIO
      (nullableToMaybe <$> (js_getParentStyleSheet (toCSSRule self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentStyleSheet Mozilla CSSRule.parentStyleSheet documentation> 
getParentStyleSheetUnsafe ::
                          (MonadIO m, IsCSSRule self, HasCallStack) =>
                            self -> m CSSStyleSheet
getParentStyleSheetUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getParentStyleSheet (toCSSRule self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentStyleSheet Mozilla CSSRule.parentStyleSheet documentation> 
getParentStyleSheetUnchecked ::
                             (MonadIO m, IsCSSRule self) => self -> m CSSStyleSheet
getParentStyleSheetUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getParentStyleSheet (toCSSRule self)))
 
foreign import javascript unsafe "$1[\"parentRule\"]"
        js_getParentRule :: CSSRule -> IO (Nullable CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentRule Mozilla CSSRule.parentRule documentation> 
getParentRule ::
              (MonadIO m, IsCSSRule self) => self -> m (Maybe CSSRule)
getParentRule self
  = liftIO (nullableToMaybe <$> (js_getParentRule (toCSSRule self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentRule Mozilla CSSRule.parentRule documentation> 
getParentRuleUnsafe ::
                    (MonadIO m, IsCSSRule self, HasCallStack) => self -> m CSSRule
getParentRuleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getParentRule (toCSSRule self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentRule Mozilla CSSRule.parentRule documentation> 
getParentRuleUnchecked ::
                       (MonadIO m, IsCSSRule self) => self -> m CSSRule
getParentRuleUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getParentRule (toCSSRule self)))