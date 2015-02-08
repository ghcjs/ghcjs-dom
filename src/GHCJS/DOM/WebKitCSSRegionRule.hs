{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitCSSRegionRule
       (ghcjs_dom_webkit_css_region_rule_get_css_rules,
        webKitCSSRegionRuleGetCssRules, WebKitCSSRegionRule,
        IsWebKitCSSRegionRule, castToWebKitCSSRegionRule,
        gTypeWebKitCSSRegionRule, toWebKitCSSRegionRule)
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

 
foreign import javascript unsafe "$1[\"cssRules\"]"
        ghcjs_dom_webkit_css_region_rule_get_css_rules ::
        JSRef WebKitCSSRegionRule -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSRegionRule.cssRules Mozilla WebKitCSSRegionRule.cssRules documentation> 
webKitCSSRegionRuleGetCssRules ::
                               (MonadIO m, IsWebKitCSSRegionRule self) =>
                                 self -> m (Maybe CSSRuleList)
webKitCSSRegionRuleGetCssRules self
  = liftIO
      ((ghcjs_dom_webkit_css_region_rule_get_css_rules
          (unWebKitCSSRegionRule (toWebKitCSSRegionRule self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.WebKitCSSRegionRule (
  ) where
#endif
