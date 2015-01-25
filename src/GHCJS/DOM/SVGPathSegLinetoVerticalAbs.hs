{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegLinetoVerticalAbs
       (ghcjs_dom_svg_path_seg_lineto_vertical_abs_set_y,
        svgPathSegLinetoVerticalAbsSetY,
        ghcjs_dom_svg_path_seg_lineto_vertical_abs_get_y,
        svgPathSegLinetoVerticalAbsGetY, SVGPathSegLinetoVerticalAbs,
        IsSVGPathSegLinetoVerticalAbs, castToSVGPathSegLinetoVerticalAbs,
        gTypeSVGPathSegLinetoVerticalAbs, toSVGPathSegLinetoVerticalAbs)
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
        ghcjs_dom_svg_path_seg_lineto_vertical_abs_set_y ::
        JSRef SVGPathSegLinetoVerticalAbs -> Float -> IO ()
 
svgPathSegLinetoVerticalAbsSetY ::
                                (IsSVGPathSegLinetoVerticalAbs self) => self -> Float -> IO ()
svgPathSegLinetoVerticalAbsSetY self val
  = ghcjs_dom_svg_path_seg_lineto_vertical_abs_set_y
      (unSVGPathSegLinetoVerticalAbs
         (toSVGPathSegLinetoVerticalAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_lineto_vertical_abs_get_y ::
        JSRef SVGPathSegLinetoVerticalAbs -> IO Float
 
svgPathSegLinetoVerticalAbsGetY ::
                                (IsSVGPathSegLinetoVerticalAbs self) => self -> IO Float
svgPathSegLinetoVerticalAbsGetY self
  = ghcjs_dom_svg_path_seg_lineto_vertical_abs_get_y
      (unSVGPathSegLinetoVerticalAbs
         (toSVGPathSegLinetoVerticalAbs self))
#else
module GHCJS.DOM.SVGPathSegLinetoVerticalAbs (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoVerticalAbs
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegLinetoVerticalAbs
#endif
