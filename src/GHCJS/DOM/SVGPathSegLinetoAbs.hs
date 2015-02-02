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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_abs_set_x ::
        JSRef SVGPathSegLinetoAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.x Mozilla SVGPathSegLinetoAbs.x documentation> 
svgPathSegLinetoAbsSetX ::
                        (IsSVGPathSegLinetoAbs self) => self -> Float -> IO ()
svgPathSegLinetoAbsSetX self val
  = ghcjs_dom_svg_path_seg_lineto_abs_set_x
      (unSVGPathSegLinetoAbs (toSVGPathSegLinetoAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_lineto_abs_get_x ::
        JSRef SVGPathSegLinetoAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.x Mozilla SVGPathSegLinetoAbs.x documentation> 
svgPathSegLinetoAbsGetX ::
                        (IsSVGPathSegLinetoAbs self) => self -> IO Float
svgPathSegLinetoAbsGetX self
  = ghcjs_dom_svg_path_seg_lineto_abs_get_x
      (unSVGPathSegLinetoAbs (toSVGPathSegLinetoAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_abs_set_y ::
        JSRef SVGPathSegLinetoAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.y Mozilla SVGPathSegLinetoAbs.y documentation> 
svgPathSegLinetoAbsSetY ::
                        (IsSVGPathSegLinetoAbs self) => self -> Float -> IO ()
svgPathSegLinetoAbsSetY self val
  = ghcjs_dom_svg_path_seg_lineto_abs_set_y
      (unSVGPathSegLinetoAbs (toSVGPathSegLinetoAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_lineto_abs_get_y ::
        JSRef SVGPathSegLinetoAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.y Mozilla SVGPathSegLinetoAbs.y documentation> 
svgPathSegLinetoAbsGetY ::
                        (IsSVGPathSegLinetoAbs self) => self -> IO Float
svgPathSegLinetoAbsGetY self
  = ghcjs_dom_svg_path_seg_lineto_abs_get_y
      (unSVGPathSegLinetoAbs (toSVGPathSegLinetoAbs self))
#else
module GHCJS.DOM.SVGPathSegLinetoAbs (
  ) where
#endif
