{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CSSRuleList
       (webkit_dom_css_rule_list_item, cssRuleListItem,
        webkit_dom_css_rule_list_get_length, cssRuleListGetLength)
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
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_css_rule_list_item ::
        JSRef CSSRuleList -> Word -> IO (JSRef CSSRule)
#else 
webkit_dom_css_rule_list_item ::
                                JSRef CSSRuleList -> Word -> IO (JSRef CSSRule)
webkit_dom_css_rule_list_item = undefined
#endif
 
cssRuleListItem ::
                (CSSRuleListClass self) => self -> Word -> IO (Maybe CSSRule)
cssRuleListItem self index
  = fmap CSSRule . maybeJSNull <$>
      (webkit_dom_css_rule_list_item (unCSSRuleList (toCSSRuleList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_css_rule_list_get_length :: JSRef CSSRuleList -> IO Word
#else 
webkit_dom_css_rule_list_get_length :: JSRef CSSRuleList -> IO Word
webkit_dom_css_rule_list_get_length = undefined
#endif
 
cssRuleListGetLength :: (CSSRuleListClass self) => self -> IO Word
cssRuleListGetLength self
  = webkit_dom_css_rule_list_get_length
      (unCSSRuleList (toCSSRuleList self))