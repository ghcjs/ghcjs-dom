{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegLinetoRel
       (ghcjs_dom_svg_path_seg_lineto_rel_set_x, svgPathSegLinetoRelSetX,
        ghcjs_dom_svg_path_seg_lineto_rel_get_x, svgPathSegLinetoRelGetX,
        ghcjs_dom_svg_path_seg_lineto_rel_set_y, svgPathSegLinetoRelSetY,
        ghcjs_dom_svg_path_seg_lineto_rel_get_y, svgPathSegLinetoRelGetY,
        SVGPathSegLinetoRel, IsSVGPathSegLinetoRel,
        castToSVGPathSegLinetoRel, gTypeSVGPathSegLinetoRel,
        toSVGPathSegLinetoRel)
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
        ghcjs_dom_svg_path_seg_lineto_rel_set_x ::
        JSRef SVGPathSegLinetoRel -> Float -> IO ()
 
svgPathSegLinetoRelSetX ::
                        (IsSVGPathSegLinetoRel self) => self -> Float -> IO ()
svgPathSegLinetoRelSetX self val
  = ghcjs_dom_svg_path_seg_lineto_rel_set_x
      (unSVGPathSegLinetoRel (toSVGPathSegLinetoRel self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_lineto_rel_get_x ::
        JSRef SVGPathSegLinetoRel -> IO Float
 
svgPathSegLinetoRelGetX ::
                        (IsSVGPathSegLinetoRel self) => self -> IO Float
svgPathSegLinetoRelGetX self
  = ghcjs_dom_svg_path_seg_lineto_rel_get_x
      (unSVGPathSegLinetoRel (toSVGPathSegLinetoRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_rel_set_y ::
        JSRef SVGPathSegLinetoRel -> Float -> IO ()
 
svgPathSegLinetoRelSetY ::
                        (IsSVGPathSegLinetoRel self) => self -> Float -> IO ()
svgPathSegLinetoRelSetY self val
  = ghcjs_dom_svg_path_seg_lineto_rel_set_y
      (unSVGPathSegLinetoRel (toSVGPathSegLinetoRel self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_lineto_rel_get_y ::
        JSRef SVGPathSegLinetoRel -> IO Float
 
svgPathSegLinetoRelGetY ::
                        (IsSVGPathSegLinetoRel self) => self -> IO Float
svgPathSegLinetoRelGetY self
  = ghcjs_dom_svg_path_seg_lineto_rel_get_y
      (unSVGPathSegLinetoRel (toSVGPathSegLinetoRel self))
#else
module GHCJS.DOM.SVGPathSegLinetoRel (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoRel
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoRel
#endif
