{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CSSValue
       (cCSS_INHERIT, cCSS_PRIMITIVE_VALUE, cCSS_VALUE_LIST, cCSS_CUSTOM,
        webkit_dom_css_value_set_css_text, cssValueSetCssText,
        webkit_dom_css_value_get_css_text, cssValueGetCssText,
        webkit_dom_css_value_get_css_value_type, cssValueGetCssValueType)
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

cCSS_INHERIT = 0
cCSS_PRIMITIVE_VALUE = 1
cCSS_VALUE_LIST = 2
cCSS_CUSTOM = 3


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        webkit_dom_css_value_set_css_text ::
        JSRef CSSValue -> JSString -> IO ()
#else 
webkit_dom_css_value_set_css_text ::
                                    JSRef CSSValue -> JSString -> IO ()
webkit_dom_css_value_set_css_text = undefined
#endif
 
cssValueSetCssText ::
                   (CSSValueClass self, ToJSString val) => self -> val -> IO ()
cssValueSetCssText self val
  = webkit_dom_css_value_set_css_text (unCSSValue (toCSSValue self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"]"
        webkit_dom_css_value_get_css_text :: JSRef CSSValue -> IO JSString
#else 
webkit_dom_css_value_get_css_text :: JSRef CSSValue -> IO JSString
webkit_dom_css_value_get_css_text = undefined
#endif
 
cssValueGetCssText ::
                   (CSSValueClass self, FromJSString result) => self -> IO result
cssValueGetCssText self
  = fromJSString <$>
      (webkit_dom_css_value_get_css_text (unCSSValue (toCSSValue self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssValueType\"]"
        webkit_dom_css_value_get_css_value_type ::
        JSRef CSSValue -> IO Word
#else 
webkit_dom_css_value_get_css_value_type ::
                                          JSRef CSSValue -> IO Word
webkit_dom_css_value_get_css_value_type = undefined
#endif
 
cssValueGetCssValueType :: (CSSValueClass self) => self -> IO Word
cssValueGetCssValueType self
  = webkit_dom_css_value_get_css_value_type
      (unCSSValue (toCSSValue self))