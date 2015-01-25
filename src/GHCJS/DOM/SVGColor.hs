{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGColor
       (ghcjs_dom_svg_color_set_rgb_color, svgColorSetRGBColor,
        ghcjs_dom_svg_color_set_rgb_color_icc_color,
        svgColorSetRGBColorICCColor, ghcjs_dom_svg_color_set_color,
        svgColorSetColor, cSVG_COLORTYPE_UNKNOWN, cSVG_COLORTYPE_RGBCOLOR,
        cSVG_COLORTYPE_RGBCOLOR_ICCCOLOR, cSVG_COLORTYPE_CURRENTCOLOR,
        ghcjs_dom_svg_color_get_color_type, svgColorGetColorType,
        ghcjs_dom_svg_color_get_rgb_color, svgColorGetRgbColor, SVGColor,
        IsSVGColor, castToSVGColor, gTypeSVGColor, toSVGColor)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"setRGBColor\"]($2)"
        ghcjs_dom_svg_color_set_rgb_color ::
        JSRef SVGColor -> JSString -> IO ()
 
svgColorSetRGBColor ::
                    (IsSVGColor self, ToJSString rgbColor) => self -> rgbColor -> IO ()
svgColorSetRGBColor self rgbColor
  = ghcjs_dom_svg_color_set_rgb_color (unSVGColor (toSVGColor self))
      (toJSString rgbColor)
 
foreign import javascript unsafe
        "$1[\"setRGBColorICCColor\"]($2,\n$3)"
        ghcjs_dom_svg_color_set_rgb_color_icc_color ::
        JSRef SVGColor -> JSString -> JSString -> IO ()
 
svgColorSetRGBColorICCColor ::
                            (IsSVGColor self, ToJSString rgbColor, ToJSString iccColor) =>
                              self -> rgbColor -> iccColor -> IO ()
svgColorSetRGBColorICCColor self rgbColor iccColor
  = ghcjs_dom_svg_color_set_rgb_color_icc_color
      (unSVGColor (toSVGColor self))
      (toJSString rgbColor)
      (toJSString iccColor)
 
foreign import javascript unsafe "$1[\"setColor\"]($2, $3, $4)"
        ghcjs_dom_svg_color_set_color ::
        JSRef SVGColor -> Word -> JSString -> JSString -> IO ()
 
svgColorSetColor ::
                 (IsSVGColor self, ToJSString rgbColor, ToJSString iccColor) =>
                   self -> Word -> rgbColor -> iccColor -> IO ()
svgColorSetColor self colorType rgbColor iccColor
  = ghcjs_dom_svg_color_set_color (unSVGColor (toSVGColor self))
      colorType
      (toJSString rgbColor)
      (toJSString iccColor)
cSVG_COLORTYPE_UNKNOWN = 0
cSVG_COLORTYPE_RGBCOLOR = 1
cSVG_COLORTYPE_RGBCOLOR_ICCCOLOR = 2
cSVG_COLORTYPE_CURRENTCOLOR = 3
 
foreign import javascript unsafe "$1[\"colorType\"]"
        ghcjs_dom_svg_color_get_color_type :: JSRef SVGColor -> IO Word
 
svgColorGetColorType :: (IsSVGColor self) => self -> IO Word
svgColorGetColorType self
  = ghcjs_dom_svg_color_get_color_type (unSVGColor (toSVGColor self))
 
foreign import javascript unsafe "$1[\"rgbColor\"]"
        ghcjs_dom_svg_color_get_rgb_color ::
        JSRef SVGColor -> IO (JSRef RGBColor)
 
svgColorGetRgbColor ::
                    (IsSVGColor self) => self -> IO (Maybe RGBColor)
svgColorGetRgbColor self
  = fmap RGBColor . maybeJSNull <$>
      (ghcjs_dom_svg_color_get_rgb_color (unSVGColor (toSVGColor self)))
#else
module GHCJS.DOM.SVGColor (
  module Graphics.UI.Gtk.WebKit.DOM.SVGColor
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGColor
#endif
