{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CSSStyleSheet
       (webkit_dom_css_style_sheet_insert_rule, cssStyleSheetInsertRule,
        webkit_dom_css_style_sheet_delete_rule, cssStyleSheetDeleteRule,
        webkit_dom_css_style_sheet_add_rule, cssStyleSheetAddRule,
        webkit_dom_css_style_sheet_remove_rule, cssStyleSheetRemoveRule,
        webkit_dom_css_style_sheet_get_owner_rule,
        cssStyleSheetGetOwnerRule,
        webkit_dom_css_style_sheet_get_css_rules, cssStyleSheetGetCssRules,
        webkit_dom_css_style_sheet_get_rules, cssStyleSheetGetRules)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        webkit_dom_css_style_sheet_insert_rule ::
        JSRef CSSStyleSheet -> JSString -> Word -> IO Word
#else 
webkit_dom_css_style_sheet_insert_rule ::
                                         JSRef CSSStyleSheet -> JSString -> Word -> IO Word
webkit_dom_css_style_sheet_insert_rule = undefined
#endif
 
cssStyleSheetInsertRule ::
                        (CSSStyleSheetClass self, ToJSString rule) =>
                          self -> rule -> Word -> IO Word
cssStyleSheetInsertRule self rule index
  = webkit_dom_css_style_sheet_insert_rule
      (unCSSStyleSheet (toCSSStyleSheet self))
      (toJSString rule)
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        webkit_dom_css_style_sheet_delete_rule ::
        JSRef CSSStyleSheet -> Word -> IO ()
#else 
webkit_dom_css_style_sheet_delete_rule ::
                                         JSRef CSSStyleSheet -> Word -> IO ()
webkit_dom_css_style_sheet_delete_rule = undefined
#endif
 
cssStyleSheetDeleteRule ::
                        (CSSStyleSheetClass self) => self -> Word -> IO ()
cssStyleSheetDeleteRule self index
  = webkit_dom_css_style_sheet_delete_rule
      (unCSSStyleSheet (toCSSStyleSheet self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"addRule\"]($2, $3, $4)"
        webkit_dom_css_style_sheet_add_rule ::
        JSRef CSSStyleSheet -> JSString -> JSString -> Word -> IO Int
#else 
webkit_dom_css_style_sheet_add_rule ::
                                      JSRef CSSStyleSheet -> JSString -> JSString -> Word -> IO Int
webkit_dom_css_style_sheet_add_rule = undefined
#endif
 
cssStyleSheetAddRule ::
                     (CSSStyleSheetClass self, ToJSString selector, ToJSString style) =>
                       self -> selector -> style -> Word -> IO Int
cssStyleSheetAddRule self selector style index
  = webkit_dom_css_style_sheet_add_rule
      (unCSSStyleSheet (toCSSStyleSheet self))
      (toJSString selector)
      (toJSString style)
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeRule\"]($2)"
        webkit_dom_css_style_sheet_remove_rule ::
        JSRef CSSStyleSheet -> Word -> IO ()
#else 
webkit_dom_css_style_sheet_remove_rule ::
                                         JSRef CSSStyleSheet -> Word -> IO ()
webkit_dom_css_style_sheet_remove_rule = undefined
#endif
 
cssStyleSheetRemoveRule ::
                        (CSSStyleSheetClass self) => self -> Word -> IO ()
cssStyleSheetRemoveRule self index
  = webkit_dom_css_style_sheet_remove_rule
      (unCSSStyleSheet (toCSSStyleSheet self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ownerRule\"]"
        webkit_dom_css_style_sheet_get_owner_rule ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRule)
#else 
webkit_dom_css_style_sheet_get_owner_rule ::
                                            JSRef CSSStyleSheet -> IO (JSRef CSSRule)
webkit_dom_css_style_sheet_get_owner_rule = undefined
#endif
 
cssStyleSheetGetOwnerRule ::
                          (CSSStyleSheetClass self) => self -> IO (Maybe CSSRule)
cssStyleSheetGetOwnerRule self
  = fmap CSSRule . maybeJSNull <$>
      (webkit_dom_css_style_sheet_get_owner_rule
         (unCSSStyleSheet (toCSSStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssRules\"]"
        webkit_dom_css_style_sheet_get_css_rules ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)
#else 
webkit_dom_css_style_sheet_get_css_rules ::
                                           JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)
webkit_dom_css_style_sheet_get_css_rules = undefined
#endif
 
cssStyleSheetGetCssRules ::
                         (CSSStyleSheetClass self) => self -> IO (Maybe CSSRuleList)
cssStyleSheetGetCssRules self
  = fmap CSSRuleList . maybeJSNull <$>
      (webkit_dom_css_style_sheet_get_css_rules
         (unCSSStyleSheet (toCSSStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rules\"]"
        webkit_dom_css_style_sheet_get_rules ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)
#else 
webkit_dom_css_style_sheet_get_rules ::
                                       JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)
webkit_dom_css_style_sheet_get_rules = undefined
#endif
 
cssStyleSheetGetRules ::
                      (CSSStyleSheetClass self) => self -> IO (Maybe CSSRuleList)
cssStyleSheetGetRules self
  = fmap CSSRuleList . maybeJSNull <$>
      (webkit_dom_css_style_sheet_get_rules
         (unCSSStyleSheet (toCSSStyleSheet self)))