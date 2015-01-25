{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegLinetoHorizontalRel
       (ghcjs_dom_svg_path_seg_lineto_horizontal_rel_set_x,
        svgPathSegLinetoHorizontalRelSetX,
        ghcjs_dom_svg_path_seg_lineto_horizontal_rel_get_x,
        svgPathSegLinetoHorizontalRelGetX, SVGPathSegLinetoHorizontalRel,
        IsSVGPathSegLinetoHorizontalRel,
        castToSVGPathSegLinetoHorizontalRel,
        gTypeSVGPathSegLinetoHorizontalRel,
        toSVGPathSegLinetoHorizontalRel)
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
        ghcjs_dom_svg_path_seg_lineto_horizontal_rel_set_x ::
        JSRef SVGPathSegLinetoHorizontalRel -> Float -> IO ()
 
svgPathSegLinetoHorizontalRelSetX ::
                                  (IsSVGPathSegLinetoHorizontalRel self) => self -> Float -> IO ()
svgPathSegLinetoHorizontalRelSetX self val
  = ghcjs_dom_svg_path_seg_lineto_horizontal_rel_set_x
      (unSVGPathSegLinetoHorizontalRel
         (toSVGPathSegLinetoHorizontalRel self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_lineto_horizontal_rel_get_x ::
        JSRef SVGPathSegLinetoHorizontalRel -> IO Float
 
svgPathSegLinetoHorizontalRelGetX ::
                                  (IsSVGPathSegLinetoHorizontalRel self) => self -> IO Float
svgPathSegLinetoHorizontalRelGetX self
  = ghcjs_dom_svg_path_seg_lineto_horizontal_rel_get_x
      (unSVGPathSegLinetoHorizontalRel
         (toSVGPathSegLinetoHorizontalRel self))
#else
module GHCJS.DOM.SVGPathSegLinetoHorizontalRel (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoHorizontalRel
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoHorizontalRel
#endif
