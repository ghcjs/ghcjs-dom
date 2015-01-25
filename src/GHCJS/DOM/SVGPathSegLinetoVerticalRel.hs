{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegLinetoVerticalRel
       (ghcjs_dom_svg_path_seg_lineto_vertical_rel_set_y,
        svgPathSegLinetoVerticalRelSetY,
        ghcjs_dom_svg_path_seg_lineto_vertical_rel_get_y,
        svgPathSegLinetoVerticalRelGetY, SVGPathSegLinetoVerticalRel,
        IsSVGPathSegLinetoVerticalRel, castToSVGPathSegLinetoVerticalRel,
        gTypeSVGPathSegLinetoVerticalRel, toSVGPathSegLinetoVerticalRel)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_vertical_rel_set_y ::
        JSRef SVGPathSegLinetoVerticalRel -> Float -> IO ()
 
svgPathSegLinetoVerticalRelSetY ::
                                (IsSVGPathSegLinetoVerticalRel self) => self -> Float -> IO ()
svgPathSegLinetoVerticalRelSetY self val
  = ghcjs_dom_svg_path_seg_lineto_vertical_rel_set_y
      (unSVGPathSegLinetoVerticalRel
         (toSVGPathSegLinetoVerticalRel self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_lineto_vertical_rel_get_y ::
        JSRef SVGPathSegLinetoVerticalRel -> IO Float
 
svgPathSegLinetoVerticalRelGetY ::
                                (IsSVGPathSegLinetoVerticalRel self) => self -> IO Float
svgPathSegLinetoVerticalRelGetY self
  = ghcjs_dom_svg_path_seg_lineto_vertical_rel_get_y
      (unSVGPathSegLinetoVerticalRel
         (toSVGPathSegLinetoVerticalRel self))
#else
module GHCJS.DOM.SVGPathSegLinetoVerticalRel (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoVerticalRel
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoVerticalRel
#endif
