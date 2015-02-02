{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSCharsetRule
       (ghcjs_dom_css_charset_rule_set_encoding,
        cssCharsetRuleSetEncoding, ghcjs_dom_css_charset_rule_get_encoding,
        cssCharsetRuleGetEncoding, CSSCharsetRule, IsCSSCharsetRule,
        castToCSSCharsetRule, gTypeCSSCharsetRule, toCSSCharsetRule)
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

 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        ghcjs_dom_css_charset_rule_set_encoding ::
        JSRef CSSCharsetRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
cssCharsetRuleSetEncoding ::
                          (IsCSSCharsetRule self, ToJSString val) => self -> val -> IO ()
cssCharsetRuleSetEncoding self val
  = ghcjs_dom_css_charset_rule_set_encoding
      (unCSSCharsetRule (toCSSCharsetRule self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"encoding\"]"
        ghcjs_dom_css_charset_rule_get_encoding ::
        JSRef CSSCharsetRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
cssCharsetRuleGetEncoding ::
                          (IsCSSCharsetRule self, FromJSString result) => self -> IO result
cssCharsetRuleGetEncoding self
  = fromJSString <$>
      (ghcjs_dom_css_charset_rule_get_encoding
         (unCSSCharsetRule (toCSSCharsetRule self)))
#else
module GHCJS.DOM.CSSCharsetRule (
  ) where
#endif
