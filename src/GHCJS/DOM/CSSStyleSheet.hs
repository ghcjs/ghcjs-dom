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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        ghcjs_dom_css_style_sheet_insert_rule ::
        JSRef CSSStyleSheet -> JSString -> Word -> IO Word
 
cssStyleSheetInsertRule ::
                        (IsCSSStyleSheet self, ToJSString rule) =>
                          self -> rule -> Word -> IO Word
cssStyleSheetInsertRule self rule index
  = ghcjs_dom_css_style_sheet_insert_rule
      (unCSSStyleSheet (toCSSStyleSheet self))
      (toJSString rule)
      index
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        ghcjs_dom_css_style_sheet_delete_rule ::
        JSRef CSSStyleSheet -> Word -> IO ()
 
cssStyleSheetDeleteRule ::
                        (IsCSSStyleSheet self) => self -> Word -> IO ()
cssStyleSheetDeleteRule self index
  = ghcjs_dom_css_style_sheet_delete_rule
      (unCSSStyleSheet (toCSSStyleSheet self))
      index
 
foreign import javascript unsafe "$1[\"addRule\"]($2, $3, $4)"
        ghcjs_dom_css_style_sheet_add_rule ::
        JSRef CSSStyleSheet -> JSString -> JSString -> Word -> IO Int
 
cssStyleSheetAddRule ::
                     (IsCSSStyleSheet self, ToJSString selector, ToJSString style) =>
                       self -> selector -> style -> Word -> IO Int
cssStyleSheetAddRule self selector style index
  = ghcjs_dom_css_style_sheet_add_rule
      (unCSSStyleSheet (toCSSStyleSheet self))
      (toJSString selector)
      (toJSString style)
      index
 
foreign import javascript unsafe "$1[\"removeRule\"]($2)"
        ghcjs_dom_css_style_sheet_remove_rule ::
        JSRef CSSStyleSheet -> Word -> IO ()
 
cssStyleSheetRemoveRule ::
                        (IsCSSStyleSheet self) => self -> Word -> IO ()
cssStyleSheetRemoveRule self index
  = ghcjs_dom_css_style_sheet_remove_rule
      (unCSSStyleSheet (toCSSStyleSheet self))
      index
 
foreign import javascript unsafe "$1[\"ownerRule\"]"
        ghcjs_dom_css_style_sheet_get_owner_rule ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRule)
 
cssStyleSheetGetOwnerRule ::
                          (IsCSSStyleSheet self) => self -> IO (Maybe CSSRule)
cssStyleSheetGetOwnerRule self
  = fmap CSSRule . maybeJSNull <$>
      (ghcjs_dom_css_style_sheet_get_owner_rule
         (unCSSStyleSheet (toCSSStyleSheet self)))
 
foreign import javascript unsafe "$1[\"cssRules\"]"
        ghcjs_dom_css_style_sheet_get_css_rules ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)
 
cssStyleSheetGetCssRules ::
                         (IsCSSStyleSheet self) => self -> IO (Maybe CSSRuleList)
cssStyleSheetGetCssRules self
  = fmap CSSRuleList . maybeJSNull <$>
      (ghcjs_dom_css_style_sheet_get_css_rules
         (unCSSStyleSheet (toCSSStyleSheet self)))
 
foreign import javascript unsafe "$1[\"rules\"]"
        ghcjs_dom_css_style_sheet_get_rules ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)
 
cssStyleSheetGetRules ::
                      (IsCSSStyleSheet self) => self -> IO (Maybe CSSRuleList)
cssStyleSheetGetRules self
  = fmap CSSRuleList . maybeJSNull <$>
      (ghcjs_dom_css_style_sheet_get_rules
         (unCSSStyleSheet (toCSSStyleSheet self)))
#else
module GHCJS.DOM.CSSStyleSheet (
  module Graphics.UI.Gtk.WebKit.DOM.CSSStyleSheet
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSStyleSheet
#endif
