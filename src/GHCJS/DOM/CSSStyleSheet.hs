{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSStyleSheet
       (ghcjs_dom_css_style_sheet_insert_rule, cssStyleSheetInsertRule,
        ghcjs_dom_css_style_sheet_delete_rule, cssStyleSheetDeleteRule,
        ghcjs_dom_css_style_sheet_add_rule, cssStyleSheetAddRule,
        ghcjs_dom_css_style_sheet_remove_rule, cssStyleSheetRemoveRule,
        ghcjs_dom_css_style_sheet_get_owner_rule,
        cssStyleSheetGetOwnerRule, ghcjs_dom_css_style_sheet_get_css_rules,
        cssStyleSheetGetCssRules, ghcjs_dom_css_style_sheet_get_rules,
        cssStyleSheetGetRules, CSSStyleSheet, IsCSSStyleSheet,
        castToCSSStyleSheet, gTypeCSSStyleSheet, toCSSStyleSheet)
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

 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        ghcjs_dom_css_style_sheet_insert_rule ::
        JSRef CSSStyleSheet -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
cssStyleSheetInsertRule ::
                        (MonadIO m, IsCSSStyleSheet self, ToJSString rule) =>
                          self -> rule -> Word -> m Word
cssStyleSheetInsertRule self rule index
  = liftIO
      (ghcjs_dom_css_style_sheet_insert_rule
         (unCSSStyleSheet (toCSSStyleSheet self))
         (toJSString rule)
         index)
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        ghcjs_dom_css_style_sheet_delete_rule ::
        JSRef CSSStyleSheet -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.deleteRule Mozilla CSSStyleSheet.deleteRule documentation> 
cssStyleSheetDeleteRule ::
                        (MonadIO m, IsCSSStyleSheet self) => self -> Word -> m ()
cssStyleSheetDeleteRule self index
  = liftIO
      (ghcjs_dom_css_style_sheet_delete_rule
         (unCSSStyleSheet (toCSSStyleSheet self))
         index)
 
foreign import javascript unsafe "$1[\"addRule\"]($2, $3, $4)"
        ghcjs_dom_css_style_sheet_add_rule ::
        JSRef CSSStyleSheet -> JSString -> JSString -> Word -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.addRule Mozilla CSSStyleSheet.addRule documentation> 
cssStyleSheetAddRule ::
                     (MonadIO m, IsCSSStyleSheet self, ToJSString selector,
                      ToJSString style) =>
                       self -> selector -> style -> Word -> m Int
cssStyleSheetAddRule self selector style index
  = liftIO
      (ghcjs_dom_css_style_sheet_add_rule
         (unCSSStyleSheet (toCSSStyleSheet self))
         (toJSString selector)
         (toJSString style)
         index)
 
foreign import javascript unsafe "$1[\"removeRule\"]($2)"
        ghcjs_dom_css_style_sheet_remove_rule ::
        JSRef CSSStyleSheet -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.removeRule Mozilla CSSStyleSheet.removeRule documentation> 
cssStyleSheetRemoveRule ::
                        (MonadIO m, IsCSSStyleSheet self) => self -> Word -> m ()
cssStyleSheetRemoveRule self index
  = liftIO
      (ghcjs_dom_css_style_sheet_remove_rule
         (unCSSStyleSheet (toCSSStyleSheet self))
         index)
 
foreign import javascript unsafe "$1[\"ownerRule\"]"
        ghcjs_dom_css_style_sheet_get_owner_rule ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.ownerRule Mozilla CSSStyleSheet.ownerRule documentation> 
cssStyleSheetGetOwnerRule ::
                          (MonadIO m, IsCSSStyleSheet self) => self -> m (Maybe CSSRule)
cssStyleSheetGetOwnerRule self
  = liftIO
      ((ghcjs_dom_css_style_sheet_get_owner_rule
          (unCSSStyleSheet (toCSSStyleSheet self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"cssRules\"]"
        ghcjs_dom_css_style_sheet_get_css_rules ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.cssRules Mozilla CSSStyleSheet.cssRules documentation> 
cssStyleSheetGetCssRules ::
                         (MonadIO m, IsCSSStyleSheet self) => self -> m (Maybe CSSRuleList)
cssStyleSheetGetCssRules self
  = liftIO
      ((ghcjs_dom_css_style_sheet_get_css_rules
          (unCSSStyleSheet (toCSSStyleSheet self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rules\"]"
        ghcjs_dom_css_style_sheet_get_rules ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.rules Mozilla CSSStyleSheet.rules documentation> 
cssStyleSheetGetRules ::
                      (MonadIO m, IsCSSStyleSheet self) => self -> m (Maybe CSSRuleList)
cssStyleSheetGetRules self
  = liftIO
      ((ghcjs_dom_css_style_sheet_get_rules
          (unCSSStyleSheet (toCSSStyleSheet self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.CSSStyleSheet (
  module Graphics.UI.Gtk.WebKit.DOM.CSSStyleSheet
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSStyleSheet
#endif
