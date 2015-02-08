{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSImportRule
       (ghcjs_dom_css_import_rule_get_href, cssImportRuleGetHref,
        ghcjs_dom_css_import_rule_get_media, cssImportRuleGetMedia,
        ghcjs_dom_css_import_rule_get_style_sheet,
        cssImportRuleGetStyleSheet, CSSImportRule, IsCSSImportRule,
        castToCSSImportRule, gTypeCSSImportRule, toCSSImportRule)
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

 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_css_import_rule_get_href ::
        JSRef CSSImportRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
cssImportRuleGetHref ::
                     (MonadIO m, IsCSSImportRule self, FromJSString result) =>
                       self -> m result
cssImportRuleGetHref self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_css_import_rule_get_href
            (unCSSImportRule (toCSSImportRule self))))
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_css_import_rule_get_media ::
        JSRef CSSImportRule -> IO (JSRef MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
cssImportRuleGetMedia ::
                      (MonadIO m, IsCSSImportRule self) => self -> m (Maybe MediaList)
cssImportRuleGetMedia self
  = liftIO
      ((ghcjs_dom_css_import_rule_get_media
          (unCSSImportRule (toCSSImportRule self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"styleSheet\"]"
        ghcjs_dom_css_import_rule_get_style_sheet ::
        JSRef CSSImportRule -> IO (JSRef CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
cssImportRuleGetStyleSheet ::
                           (MonadIO m, IsCSSImportRule self) =>
                             self -> m (Maybe CSSStyleSheet)
cssImportRuleGetStyleSheet self
  = liftIO
      ((ghcjs_dom_css_import_rule_get_style_sheet
          (unCSSImportRule (toCSSImportRule self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.CSSImportRule (
  ) where
#endif
