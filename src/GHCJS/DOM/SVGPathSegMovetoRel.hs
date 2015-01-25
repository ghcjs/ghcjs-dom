{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegMovetoRel
       (ghcjs_dom_svg_path_seg_moveto_rel_set_x, svgPathSegMovetoRelSetX,
        ghcjs_dom_svg_path_seg_moveto_rel_get_x, svgPathSegMovetoRelGetX,
        ghcjs_dom_svg_path_seg_moveto_rel_set_y, svgPathSegMovetoRelSetY,
        ghcjs_dom_svg_path_seg_moveto_rel_get_y, svgPathSegMovetoRelGetY,
        SVGPathSegMovetoRel, IsSVGPathSegMovetoRel,
        castToSVGPathSegMovetoRel, gTypeSVGPathSegMovetoRel,
        toSVGPathSegMovetoRel)
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
        ghcjs_dom_svg_path_seg_moveto_rel_set_x ::
        JSRef SVGPathSegMovetoRel -> Float -> IO ()
 
svgPathSegMovetoRelSetX ::
                        (IsSVGPathSegMovetoRel self) => self -> Float -> IO ()
svgPathSegMovetoRelSetX self val
  = ghcjs_dom_svg_path_seg_moveto_rel_set_x
      (unSVGPathSegMovetoRel (toSVGPathSegMovetoRel self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_moveto_rel_get_x ::
        JSRef SVGPathSegMovetoRel -> IO Float
 
svgPathSegMovetoRelGetX ::
                        (IsSVGPathSegMovetoRel self) => self -> IO Float
svgPathSegMovetoRelGetX self
  = ghcjs_dom_svg_path_seg_moveto_rel_get_x
      (unSVGPathSegMovetoRel (toSVGPathSegMovetoRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_moveto_rel_set_y ::
        JSRef SVGPathSegMovetoRel -> Float -> IO ()
 
svgPathSegMovetoRelSetY ::
                        (IsSVGPathSegMovetoRel self) => self -> Float -> IO ()
svgPathSegMovetoRelSetY self val
  = ghcjs_dom_svg_path_seg_moveto_rel_set_y
      (unSVGPathSegMovetoRel (toSVGPathSegMovetoRel self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_moveto_rel_get_y ::
        JSRef SVGPathSegMovetoRel -> IO Float
 
svgPathSegMovetoRelGetY ::
                        (IsSVGPathSegMovetoRel self) => self -> IO Float
svgPathSegMovetoRelGetY self
  = ghcjs_dom_svg_path_seg_moveto_rel_get_y
      (unSVGPathSegMovetoRel (toSVGPathSegMovetoRel self))
#else
module GHCJS.DOM.SVGPathSegMovetoRel (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegMovetoRel
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegMovetoRel
#endif
