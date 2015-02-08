{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSFontFaceRule
       (ghcjs_dom_css_font_face_rule_get_style, cssFontFaceRuleGetStyle,
        CSSFontFaceRule, IsCSSFontFaceRule, castToCSSFontFaceRule,
        gTypeCSSFontFaceRule, toCSSFontFaceRule)
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

 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_css_font_face_rule_get_style ::
        JSRef CSSFontFaceRule -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceRule.style Mozilla CSSFontFaceRule.style documentation> 
cssFontFaceRuleGetStyle ::
                        (MonadIO m, IsCSSFontFaceRule self) =>
                          self -> m (Maybe CSSStyleDeclaration)
cssFontFaceRuleGetStyle self
  = liftIO
      ((ghcjs_dom_css_font_face_rule_get_style
          (unCSSFontFaceRule (toCSSFontFaceRule self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.CSSFontFaceRule (
  ) where
#endif
