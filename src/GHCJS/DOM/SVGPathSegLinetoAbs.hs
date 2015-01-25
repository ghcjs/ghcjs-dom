{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegLinetoAbs
       (ghcjs_dom_svg_path_seg_lineto_abs_set_x, svgPathSegLinetoAbsSetX,
        ghcjs_dom_svg_path_seg_lineto_abs_get_x, svgPathSegLinetoAbsGetX,
        ghcjs_dom_svg_path_seg_lineto_abs_set_y, svgPathSegLinetoAbsSetY,
        ghcjs_dom_svg_path_seg_lineto_abs_get_y, svgPathSegLinetoAbsGetY,
        SVGPathSegLinetoAbs, IsSVGPathSegLinetoAbs,
        castToSVGPathSegLinetoAbs, gTypeSVGPathSegLinetoAbs,
        toSVGPathSegLinetoAbs)
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
        ghcjs_dom_svg_path_seg_lineto_abs_set_x ::
        JSRef SVGPathSegLinetoAbs -> Float -> IO ()
 
svgPathSegLinetoAbsSetX ::
                        (IsSVGPathSegLinetoAbs self) => self -> Float -> IO ()
svgPathSegLinetoAbsSetX self val
  = ghcjs_dom_svg_path_seg_lineto_abs_set_x
      (unSVGPathSegLinetoAbs (toSVGPathSegLinetoAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_lineto_abs_get_x ::
        JSRef SVGPathSegLinetoAbs -> IO Float
 
svgPathSegLinetoAbsGetX ::
                        (IsSVGPathSegLinetoAbs self) => self -> IO Float
svgPathSegLinetoAbsGetX self
  = ghcjs_dom_svg_path_seg_lineto_abs_get_x
      (unSVGPathSegLinetoAbs (toSVGPathSegLinetoAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_abs_set_y ::
        JSRef SVGPathSegLinetoAbs -> Float -> IO ()
 
svgPathSegLinetoAbsSetY ::
                        (IsSVGPathSegLinetoAbs self) => self -> Float -> IO ()
svgPathSegLinetoAbsSetY self val
  = ghcjs_dom_svg_path_seg_lineto_abs_set_y
      (unSVGPathSegLinetoAbs (toSVGPathSegLinetoAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_lineto_abs_get_y ::
        JSRef SVGPathSegLinetoAbs -> IO Float
 
svgPathSegLinetoAbsGetY ::
                        (IsSVGPathSegLinetoAbs self) => self -> IO Float
svgPathSegLinetoAbsGetY self
  = ghcjs_dom_svg_path_seg_lineto_abs_get_y
      (unSVGPathSegLinetoAbs (toSVGPathSegLinetoAbs self))
#else
module GHCJS.DOM.SVGPathSegLinetoAbs (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoAbs
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoAbs
#endif
