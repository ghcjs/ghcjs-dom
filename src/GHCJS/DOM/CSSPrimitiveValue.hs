{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSPrimitiveValue
       (ghcjs_dom_css_primitive_value_set_float_value,
        cssPrimitiveValueSetFloatValue,
        ghcjs_dom_css_primitive_value_get_float_value,
        cssPrimitiveValueGetFloatValue,
        ghcjs_dom_css_primitive_value_set_string_value,
        cssPrimitiveValueSetStringValue,
        ghcjs_dom_css_primitive_value_get_string_value,
        cssPrimitiveValueGetStringValue,
        ghcjs_dom_css_primitive_value_get_counter_value,
        cssPrimitiveValueGetCounterValue,
        ghcjs_dom_css_primitive_value_get_rect_value,
        cssPrimitiveValueGetRectValue,
        ghcjs_dom_css_primitive_value_get_rgb_color_value,
        cssPrimitiveValueGetRGBColorValue, cCSS_UNKNOWN, cCSS_NUMBER,
        cCSS_PERCENTAGE, cCSS_EMS, cCSS_EXS, cCSS_PX, cCSS_CM, cCSS_MM,
        cCSS_IN, cCSS_PT, cCSS_PC, cCSS_DEG, cCSS_RAD, cCSS_GRAD, cCSS_MS,
        cCSS_S, cCSS_HZ, cCSS_KHZ, cCSS_DIMENSION, cCSS_STRING, cCSS_URI,
        cCSS_IDENT, cCSS_ATTR, cCSS_COUNTER, cCSS_RECT, cCSS_RGBCOLOR,
        cCSS_VW, cCSS_VH, cCSS_VMIN, cCSS_VMAX,
        ghcjs_dom_css_primitive_value_get_primitive_type,
        cssPrimitiveValueGetPrimitiveType, CSSPrimitiveValue,
        IsCSSPrimitiveValue, castToCSSPrimitiveValue,
        gTypeCSSPrimitiveValue, toCSSPrimitiveValue)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"setFloatValue\"]($2, $3)"
        ghcjs_dom_css_primitive_value_set_float_value ::
        JSRef CSSPrimitiveValue -> Word -> Float -> IO ()
 
cssPrimitiveValueSetFloatValue ::
                               (IsCSSPrimitiveValue self) => self -> Word -> Float -> IO ()
cssPrimitiveValueSetFloatValue self unitType floatValue
  = ghcjs_dom_css_primitive_value_set_float_value
      (unCSSPrimitiveValue (toCSSPrimitiveValue self))
      unitType
      floatValue
 
foreign import javascript unsafe "$1[\"getFloatValue\"]($2)"
        ghcjs_dom_css_primitive_value_get_float_value ::
        JSRef CSSPrimitiveValue -> Word -> IO Float
 
cssPrimitiveValueGetFloatValue ::
                               (IsCSSPrimitiveValue self) => self -> Word -> IO Float
cssPrimitiveValueGetFloatValue self unitType
  = ghcjs_dom_css_primitive_value_get_float_value
      (unCSSPrimitiveValue (toCSSPrimitiveValue self))
      unitType
 
foreign import javascript unsafe "$1[\"setStringValue\"]($2, $3)"
        ghcjs_dom_css_primitive_value_set_string_value ::
        JSRef CSSPrimitiveValue -> Word -> JSString -> IO ()
 
cssPrimitiveValueSetStringValue ::
                                (IsCSSPrimitiveValue self, ToJSString stringValue) =>
                                  self -> Word -> stringValue -> IO ()
cssPrimitiveValueSetStringValue self stringType stringValue
  = ghcjs_dom_css_primitive_value_set_string_value
      (unCSSPrimitiveValue (toCSSPrimitiveValue self))
      stringType
      (toJSString stringValue)
 
foreign import javascript unsafe "$1[\"getStringValue\"]()"
        ghcjs_dom_css_primitive_value_get_string_value ::
        JSRef CSSPrimitiveValue -> IO JSString
 
cssPrimitiveValueGetStringValue ::
                                (IsCSSPrimitiveValue self, FromJSString result) =>
                                  self -> IO result
cssPrimitiveValueGetStringValue self
  = fromJSString <$>
      (ghcjs_dom_css_primitive_value_get_string_value
         (unCSSPrimitiveValue (toCSSPrimitiveValue self)))
 
foreign import javascript unsafe "$1[\"getCounterValue\"]()"
        ghcjs_dom_css_primitive_value_get_counter_value ::
        JSRef CSSPrimitiveValue -> IO (JSRef Counter)
 
cssPrimitiveValueGetCounterValue ::
                                 (IsCSSPrimitiveValue self) => self -> IO (Maybe Counter)
cssPrimitiveValueGetCounterValue self
  = fmap Counter . maybeJSNull <$>
      (ghcjs_dom_css_primitive_value_get_counter_value
         (unCSSPrimitiveValue (toCSSPrimitiveValue self)))
 
foreign import javascript unsafe "$1[\"getRectValue\"]()"
        ghcjs_dom_css_primitive_value_get_rect_value ::
        JSRef CSSPrimitiveValue -> IO (JSRef Rect)
 
cssPrimitiveValueGetRectValue ::
                              (IsCSSPrimitiveValue self) => self -> IO (Maybe Rect)
cssPrimitiveValueGetRectValue self
  = fmap Rect . maybeJSNull <$>
      (ghcjs_dom_css_primitive_value_get_rect_value
         (unCSSPrimitiveValue (toCSSPrimitiveValue self)))
 
foreign import javascript unsafe "$1[\"getRGBColorValue\"]()"
        ghcjs_dom_css_primitive_value_get_rgb_color_value ::
        JSRef CSSPrimitiveValue -> IO (JSRef RGBColor)
 
cssPrimitiveValueGetRGBColorValue ::
                                  (IsCSSPrimitiveValue self) => self -> IO (Maybe RGBColor)
cssPrimitiveValueGetRGBColorValue self
  = fmap RGBColor . maybeJSNull <$>
      (ghcjs_dom_css_primitive_value_get_rgb_color_value
         (unCSSPrimitiveValue (toCSSPrimitiveValue self)))
cCSS_UNKNOWN = 0
cCSS_NUMBER = 1
cCSS_PERCENTAGE = 2
cCSS_EMS = 3
cCSS_EXS = 4
cCSS_PX = 5
cCSS_CM = 6
cCSS_MM = 7
cCSS_IN = 8
cCSS_PT = 9
cCSS_PC = 10
cCSS_DEG = 11
cCSS_RAD = 12
cCSS_GRAD = 13
cCSS_MS = 14
cCSS_S = 15
cCSS_HZ = 16
cCSS_KHZ = 17
cCSS_DIMENSION = 18
cCSS_STRING = 19
cCSS_URI = 20
cCSS_IDENT = 21
cCSS_ATTR = 22
cCSS_COUNTER = 23
cCSS_RECT = 24
cCSS_RGBCOLOR = 25
cCSS_VW = 26
cCSS_VH = 27
cCSS_VMIN = 28
cCSS_VMAX = 29
 
foreign import javascript unsafe "$1[\"primitiveType\"]"
        ghcjs_dom_css_primitive_value_get_primitive_type ::
        JSRef CSSPrimitiveValue -> IO Word
 
cssPrimitiveValueGetPrimitiveType ::
                                  (IsCSSPrimitiveValue self) => self -> IO Word
cssPrimitiveValueGetPrimitiveType self
  = ghcjs_dom_css_primitive_value_get_primitive_type
      (unCSSPrimitiveValue (toCSSPrimitiveValue self))
#else
module GHCJS.DOM.CSSPrimitiveValue (
  module Graphics.UI.Gtk.WebKit.DOM.CSSPrimitiveValue
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSPrimitiveValue
#endif
