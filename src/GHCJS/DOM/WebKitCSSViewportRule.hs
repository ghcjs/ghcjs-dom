{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitCSSViewportRule
       (ghcjs_dom_webkit_css_viewport_rule_get_style,
        webKitCSSViewportRuleGetStyle, WebKitCSSViewportRule,
        IsWebKitCSSViewportRule, castToWebKitCSSViewportRule,
        gTypeWebKitCSSViewportRule, toWebKitCSSViewportRule)
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

 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_webkit_css_viewport_rule_get_style ::
        JSRef WebKitCSSViewportRule -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSViewportRule.style Mozilla WebKitCSSViewportRule.style documentation> 
webKitCSSViewportRuleGetStyle ::
                              (IsWebKitCSSViewportRule self) =>
                                self -> IO (Maybe CSSStyleDeclaration)
webKitCSSViewportRuleGetStyle self
  = (ghcjs_dom_webkit_css_viewport_rule_get_style
       (unWebKitCSSViewportRule (toWebKitCSSViewportRule self)))
      >>= fromJSRef
#else
module GHCJS.DOM.WebKitCSSViewportRule (
  ) where
#endif
