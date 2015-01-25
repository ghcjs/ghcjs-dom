{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegLinetoHorizontalAbs
       (ghcjs_dom_svg_path_seg_lineto_horizontal_abs_set_x,
        svgPathSegLinetoHorizontalAbsSetX,
        ghcjs_dom_svg_path_seg_lineto_horizontal_abs_get_x,
        svgPathSegLinetoHorizontalAbsGetX, SVGPathSegLinetoHorizontalAbs,
        IsSVGPathSegLinetoHorizontalAbs,
        castToSVGPathSegLinetoHorizontalAbs,
        gTypeSVGPathSegLinetoHorizontalAbs,
        toSVGPathSegLinetoHorizontalAbs)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_horizontal_abs_set_x ::
        JSRef SVGPathSegLinetoHorizontalAbs -> Float -> IO ()
 
svgPathSegLinetoHorizontalAbsSetX ::
                                  (IsSVGPathSegLinetoHorizontalAbs self) => self -> Float -> IO ()
svgPathSegLinetoHorizontalAbsSetX self val
  = ghcjs_dom_svg_path_seg_lineto_horizontal_abs_set_x
      (unSVGPathSegLinetoHorizontalAbs
         (toSVGPathSegLinetoHorizontalAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_lineto_horizontal_abs_get_x ::
        JSRef SVGPathSegLinetoHorizontalAbs -> IO Float
 
svgPathSegLinetoHorizontalAbsGetX ::
                                  (IsSVGPathSegLinetoHorizontalAbs self) => self -> IO Float
svgPathSegLinetoHorizontalAbsGetX self
  = ghcjs_dom_svg_path_seg_lineto_horizontal_abs_get_x
      (unSVGPathSegLinetoHorizontalAbs
         (toSVGPathSegLinetoHorizontalAbs self))
#else
module GHCJS.DOM.SVGPathSegLinetoHorizontalAbs (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoHorizontalAbs
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoHorizontalAbs
#endif
