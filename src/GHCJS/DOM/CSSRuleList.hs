{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSRuleList
       (ghcjs_dom_css_rule_list_item, cssRuleListItem,
        ghcjs_dom_css_rule_list_get_length, cssRuleListGetLength,
        CSSRuleList, IsCSSRuleList, castToCSSRuleList, gTypeCSSRuleList,
        toCSSRuleList)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_css_rule_list_item ::
        JSRef CSSRuleList -> Word -> IO (JSRef CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList.item Mozilla CSSRuleList.item documentation> 
cssRuleListItem ::
                (IsCSSRuleList self) => self -> Word -> IO (Maybe CSSRule)
cssRuleListItem self index
  = (ghcjs_dom_css_rule_list_item
       (unCSSRuleList (toCSSRuleList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_css_rule_list_get_length :: JSRef CSSRuleList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList.length Mozilla CSSRuleList.length documentation> 
cssRuleListGetLength :: (IsCSSRuleList self) => self -> IO Word
cssRuleListGetLength self
  = ghcjs_dom_css_rule_list_get_length
      (unCSSRuleList (toCSSRuleList self))
#else
module GHCJS.DOM.CSSRuleList (
  module Graphics.UI.Gtk.WebKit.DOM.CSSRuleList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSRuleList
#endif
