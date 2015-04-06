{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSRule
       (pattern UNKNOWN_RULE, pattern STYLE_RULE, pattern CHARSET_RULE,
        pattern IMPORT_RULE, pattern MEDIA_RULE, pattern FONT_FACE_RULE,
        pattern PAGE_RULE, pattern KEYFRAMES_RULE, pattern KEYFRAME_RULE,
        pattern SUPPORTS_RULE, pattern WEBKIT_VIEWPORT_RULE,
        pattern WEBKIT_REGION_RULE, pattern WEBKIT_KEYFRAMES_RULE,
        pattern WEBKIT_KEYFRAME_RULE, js_setCssText, setCssText,
        js_getCssText, getCssText, js_getParentStyleSheet,
        getParentStyleSheet, js_getParentRule, getParentRule, CSSRule,
        castToCSSRule, gTypeCSSRule, IsCSSRule, toCSSRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern UNKNOWN_RULE = 0
pattern STYLE_RULE = 1
pattern CHARSET_RULE = 2
pattern IMPORT_RULE = 3
pattern MEDIA_RULE = 4
pattern FONT_FACE_RULE = 5
pattern PAGE_RULE = 6
pattern KEYFRAMES_RULE = 7
pattern KEYFRAME_RULE = 8
pattern SUPPORTS_RULE = 12
pattern WEBKIT_VIEWPORT_RULE = 15
pattern WEBKIT_REGION_RULE = 16
pattern WEBKIT_KEYFRAMES_RULE = 7
pattern WEBKIT_KEYFRAME_RULE = 8
 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        js_setCssText :: JSRef CSSRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
setCssText ::
           (MonadIO m, IsCSSRule self, ToJSString val) => self -> val -> m ()
setCssText self val
  = liftIO
      (js_setCssText (unCSSRule (toCSSRule self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"cssText\"]" js_getCssText ::
        JSRef CSSRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.cssText Mozilla CSSRule.cssText documentation> 
getCssText ::
           (MonadIO m, IsCSSRule self, FromJSString result) =>
             self -> m result
getCssText self
  = liftIO
      (fromJSString <$> (js_getCssText (unCSSRule (toCSSRule self))))
 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        js_getParentStyleSheet :: JSRef CSSRule -> IO (JSRef CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentStyleSheet Mozilla CSSRule.parentStyleSheet documentation> 
getParentStyleSheet ::
                    (MonadIO m, IsCSSRule self) => self -> m (Maybe CSSStyleSheet)
getParentStyleSheet self
  = liftIO
      ((js_getParentStyleSheet (unCSSRule (toCSSRule self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"parentRule\"]"
        js_getParentRule :: JSRef CSSRule -> IO (JSRef CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule.parentRule Mozilla CSSRule.parentRule documentation> 
getParentRule ::
              (MonadIO m, IsCSSRule self) => self -> m (Maybe CSSRule)
getParentRule self
  = liftIO
      ((js_getParentRule (unCSSRule (toCSSRule self))) >>= fromJSRef)
#else
module GHCJS.DOM.CSSRule (
  module Graphics.UI.Gtk.WebKit.DOM.CSSRule
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSRule
#endif
