{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoCubicRel
       (ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x,
        svgPathSegCurvetoCubicRelSetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x,
        svgPathSegCurvetoCubicRelGetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y,
        svgPathSegCurvetoCubicRelSetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y,
        svgPathSegCurvetoCubicRelGetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x1,
        svgPathSegCurvetoCubicRelSetX1,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x1,
        svgPathSegCurvetoCubicRelGetX1,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y1,
        svgPathSegCurvetoCubicRelSetY1,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y1,
        svgPathSegCurvetoCubicRelGetY1,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x2,
        svgPathSegCurvetoCubicRelSetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x2,
        svgPathSegCurvetoCubicRelGetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y2,
        svgPathSegCurvetoCubicRelSetY2,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y2,
        svgPathSegCurvetoCubicRelGetY2, SVGPathSegCurvetoCubicRel,
        IsSVGPathSegCurvetoCubicRel, castToSVGPathSegCurvetoCubicRel,
        gTypeSVGPathSegCurvetoCubicRel, toSVGPathSegCurvetoCubicRel)
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
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()
 
svgPathSegCurvetoCubicRelSetX ::
                              (IsSVGPathSegCurvetoCubicRel self) => self -> Float -> IO ()
svgPathSegCurvetoCubicRelSetX self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float
 
svgPathSegCurvetoCubicRelGetX ::
                              (IsSVGPathSegCurvetoCubicRel self) => self -> IO Float
svgPathSegCurvetoCubicRelGetX self
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()
 
svgPathSegCurvetoCubicRelSetY ::
                              (IsSVGPathSegCurvetoCubicRel self) => self -> Float -> IO ()
svgPathSegCurvetoCubicRelSetY self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float
 
svgPathSegCurvetoCubicRelGetY ::
                              (IsSVGPathSegCurvetoCubicRel self) => self -> IO Float
svgPathSegCurvetoCubicRelGetY self
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x1 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()
 
svgPathSegCurvetoCubicRelSetX1 ::
                               (IsSVGPathSegCurvetoCubicRel self) => self -> Float -> IO ()
svgPathSegCurvetoCubicRelSetX1 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x1
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
      val
 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x1 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float
 
svgPathSegCurvetoCubicRelGetX1 ::
                               (IsSVGPathSegCurvetoCubicRel self) => self -> IO Float
svgPathSegCurvetoCubicRelGetX1 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x1
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y1 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()
 
svgPathSegCurvetoCubicRelSetY1 ::
                               (IsSVGPathSegCurvetoCubicRel self) => self -> Float -> IO ()
svgPathSegCurvetoCubicRelSetY1 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y1
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
      val
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y1 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float
 
svgPathSegCurvetoCubicRelGetY1 ::
                               (IsSVGPathSegCurvetoCubicRel self) => self -> IO Float
svgPathSegCurvetoCubicRelGetY1 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y1
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x2 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()
 
svgPathSegCurvetoCubicRelSetX2 ::
                               (IsSVGPathSegCurvetoCubicRel self) => self -> Float -> IO ()
svgPathSegCurvetoCubicRelSetX2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x2
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
      val
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x2 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float
 
svgPathSegCurvetoCubicRelGetX2 ::
                               (IsSVGPathSegCurvetoCubicRel self) => self -> IO Float
svgPathSegCurvetoCubicRelGetX2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x2
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y2 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()
 
svgPathSegCurvetoCubicRelSetY2 ::
                               (IsSVGPathSegCurvetoCubicRel self) => self -> Float -> IO ()
svgPathSegCurvetoCubicRelSetY2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y2
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
      val
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y2 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float
 
svgPathSegCurvetoCubicRelGetY2 ::
                               (IsSVGPathSegCurvetoCubicRel self) => self -> IO Float
svgPathSegCurvetoCubicRelGetY2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y2
      (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicRel (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoCubicRel
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoCubicRel
#endif
