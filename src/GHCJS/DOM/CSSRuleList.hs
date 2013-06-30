{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CSSRuleList
       (ghcjs_dom_css_rule_list_item, cssRuleListItem,
        ghcjs_dom_css_rule_list_get_length, cssRuleListGetLength)
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
        ghcjs_dom_css_rule_list_item ::
        JSRef CSSRuleList -> Word -> IO (JSRef CSSRule)
#else 
ghcjs_dom_css_rule_list_item ::
                               JSRef CSSRuleList -> Word -> IO (JSRef CSSRule)
ghcjs_dom_css_rule_list_item = undefined
#endif
 
cssRuleListItem ::
                (IsCSSRuleList self) => self -> Word -> IO (Maybe CSSRule)
cssRuleListItem self index
  = fmap CSSRule . maybeJSNull <$>
      (ghcjs_dom_css_rule_list_item (unCSSRuleList (toCSSRuleList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_css_rule_list_get_length :: JSRef CSSRuleList -> IO Word
#else 
ghcjs_dom_css_rule_list_get_length :: JSRef CSSRuleList -> IO Word
ghcjs_dom_css_rule_list_get_length = undefined
#endif
 
cssRuleListGetLength :: (IsCSSRuleList self) => self -> IO Word
cssRuleListGetLength self
  = ghcjs_dom_css_rule_list_get_length
      (unCSSRuleList (toCSSRuleList self))