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
        ghcjs_dom_svg_path_seg_lineto_horizontal_abs_set_x ::
        JSRef SVGPathSegLinetoHorizontalAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalAbs.x Mozilla SVGPathSegLinetoHorizontalAbs.x documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalAbs.x Mozilla SVGPathSegLinetoHorizontalAbs.x documentation> 
svgPathSegLinetoHorizontalAbsGetX ::
                                  (IsSVGPathSegLinetoHorizontalAbs self) => self -> IO Float
svgPathSegLinetoHorizontalAbsGetX self
  = ghcjs_dom_svg_path_seg_lineto_horizontal_abs_get_x
      (unSVGPathSegLinetoHorizontalAbs
         (toSVGPathSegLinetoHorizontalAbs self))
#else
module GHCJS.DOM.SVGPathSegLinetoHorizontalAbs (
  ) where
#endif
