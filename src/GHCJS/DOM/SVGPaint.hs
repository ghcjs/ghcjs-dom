{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPaint
       (ghcjs_dom_svg_paint_set_uri, svgPaintSetUri,
        ghcjs_dom_svg_paint_set_paint, svgPaintSetPaint,
        cSVG_PAINTTYPE_UNKNOWN, cSVG_PAINTTYPE_RGBCOLOR,
        cSVG_PAINTTYPE_RGBCOLOR_ICCCOLOR, cSVG_PAINTTYPE_NONE,
        cSVG_PAINTTYPE_CURRENTCOLOR, cSVG_PAINTTYPE_URI_NONE,
        cSVG_PAINTTYPE_URI_CURRENTCOLOR, cSVG_PAINTTYPE_URI_RGBCOLOR,
        cSVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR, cSVG_PAINTTYPE_URI,
        ghcjs_dom_svg_paint_get_paint_type, svgPaintGetPaintType,
        ghcjs_dom_svg_paint_get_uri, svgPaintGetUri, SVGPaint, IsSVGPaint,
        castToSVGPaint, gTypeSVGPaint, toSVGPaint)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"setUri\"]($2)"
        ghcjs_dom_svg_paint_set_uri :: JSRef SVGPaint -> JSString -> IO ()
 
svgPaintSetUri ::
               (IsSVGPaint self, ToJSString uri) => self -> uri -> IO ()
svgPaintSetUri self uri
  = ghcjs_dom_svg_paint_set_uri (unSVGPaint (toSVGPaint self))
      (toJSString uri)
 
foreign import javascript unsafe "$1[\"setPaint\"]($2, $3, $4, $5)"
        ghcjs_dom_svg_paint_set_paint ::
        JSRef SVGPaint -> Word -> JSString -> JSString -> JSString -> IO ()
 
svgPaintSetPaint ::
                 (IsSVGPaint self, ToJSString uri, ToJSString rgbColor,
                  ToJSString iccColor) =>
                   self -> Word -> uri -> rgbColor -> iccColor -> IO ()
svgPaintSetPaint self paintType uri rgbColor iccColor
  = ghcjs_dom_svg_paint_set_paint (unSVGPaint (toSVGPaint self))
      paintType
      (toJSString uri)
      (toJSString rgbColor)
      (toJSString iccColor)
cSVG_PAINTTYPE_UNKNOWN = 0
cSVG_PAINTTYPE_RGBCOLOR = 1
cSVG_PAINTTYPE_RGBCOLOR_ICCCOLOR = 2
cSVG_PAINTTYPE_NONE = 101
cSVG_PAINTTYPE_CURRENTCOLOR = 102
cSVG_PAINTTYPE_URI_NONE = 103
cSVG_PAINTTYPE_URI_CURRENTCOLOR = 104
cSVG_PAINTTYPE_URI_RGBCOLOR = 105
cSVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR = 106
cSVG_PAINTTYPE_URI = 107
 
foreign import javascript unsafe "$1[\"paintType\"]"
        ghcjs_dom_svg_paint_get_paint_type :: JSRef SVGPaint -> IO Word
 
svgPaintGetPaintType :: (IsSVGPaint self) => self -> IO Word
svgPaintGetPaintType self
  = ghcjs_dom_svg_paint_get_paint_type (unSVGPaint (toSVGPaint self))
 
foreign import javascript unsafe "$1[\"uri\"]"
        ghcjs_dom_svg_paint_get_uri :: JSRef SVGPaint -> IO JSString
 
svgPaintGetUri ::
               (IsSVGPaint self, FromJSString result) => self -> IO result
svgPaintGetUri self
  = fromJSString <$>
      (ghcjs_dom_svg_paint_get_uri (unSVGPaint (toSVGPaint self)))
#else
module GHCJS.DOM.SVGPaint (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPaint
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPaint
#endif
