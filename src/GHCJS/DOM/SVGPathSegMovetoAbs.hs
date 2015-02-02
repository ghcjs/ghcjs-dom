{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegMovetoAbs
       (ghcjs_dom_svg_path_seg_moveto_abs_set_x, svgPathSegMovetoAbsSetX,
        ghcjs_dom_svg_path_seg_moveto_abs_get_x, svgPathSegMovetoAbsGetX,
        ghcjs_dom_svg_path_seg_moveto_abs_set_y, svgPathSegMovetoAbsSetY,
        ghcjs_dom_svg_path_seg_moveto_abs_get_y, svgPathSegMovetoAbsGetY,
        SVGPathSegMovetoAbs, IsSVGPathSegMovetoAbs,
        castToSVGPathSegMovetoAbs, gTypeSVGPathSegMovetoAbs,
        toSVGPathSegMovetoAbs)
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
        ghcjs_dom_svg_path_seg_moveto_abs_set_x ::
        JSRef SVGPathSegMovetoAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoAbs.x Mozilla SVGPathSegMovetoAbs.x documentation> 
svgPathSegMovetoAbsSetX ::
                        (IsSVGPathSegMovetoAbs self) => self -> Float -> IO ()
svgPathSegMovetoAbsSetX self val
  = ghcjs_dom_svg_path_seg_moveto_abs_set_x
      (unSVGPathSegMovetoAbs (toSVGPathSegMovetoAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_moveto_abs_get_x ::
        JSRef SVGPathSegMovetoAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoAbs.x Mozilla SVGPathSegMovetoAbs.x documentation> 
svgPathSegMovetoAbsGetX ::
                        (IsSVGPathSegMovetoAbs self) => self -> IO Float
svgPathSegMovetoAbsGetX self
  = ghcjs_dom_svg_path_seg_moveto_abs_get_x
      (unSVGPathSegMovetoAbs (toSVGPathSegMovetoAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_moveto_abs_set_y ::
        JSRef SVGPathSegMovetoAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoAbs.y Mozilla SVGPathSegMovetoAbs.y documentation> 
svgPathSegMovetoAbsSetY ::
                        (IsSVGPathSegMovetoAbs self) => self -> Float -> IO ()
svgPathSegMovetoAbsSetY self val
  = ghcjs_dom_svg_path_seg_moveto_abs_set_y
      (unSVGPathSegMovetoAbs (toSVGPathSegMovetoAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_moveto_abs_get_y ::
        JSRef SVGPathSegMovetoAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoAbs.y Mozilla SVGPathSegMovetoAbs.y documentation> 
svgPathSegMovetoAbsGetY ::
                        (IsSVGPathSegMovetoAbs self) => self -> IO Float
svgPathSegMovetoAbsGetY self
  = ghcjs_dom_svg_path_seg_moveto_abs_get_y
      (unSVGPathSegMovetoAbs (toSVGPathSegMovetoAbs self))
#else
module GHCJS.DOM.SVGPathSegMovetoAbs (
  ) where
#endif
