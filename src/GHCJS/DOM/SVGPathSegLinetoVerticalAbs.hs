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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_vertical_abs_set_y ::
        JSRef SVGPathSegLinetoVerticalAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalAbs.y Mozilla SVGPathSegLinetoVerticalAbs.y documentation> 
svgPathSegLinetoVerticalAbsSetY ::
                                (MonadIO m, IsSVGPathSegLinetoVerticalAbs self) =>
                                  self -> Float -> m ()
svgPathSegLinetoVerticalAbsSetY self val
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_vertical_abs_set_y
         (unSVGPathSegLinetoVerticalAbs
            (toSVGPathSegLinetoVerticalAbs self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_lineto_vertical_abs_get_y ::
        JSRef SVGPathSegLinetoVerticalAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalAbs.y Mozilla SVGPathSegLinetoVerticalAbs.y documentation> 
svgPathSegLinetoVerticalAbsGetY ::
                                (MonadIO m, IsSVGPathSegLinetoVerticalAbs self) => self -> m Float
svgPathSegLinetoVerticalAbsGetY self
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_vertical_abs_get_y
         (unSVGPathSegLinetoVerticalAbs
            (toSVGPathSegLinetoVerticalAbs self)))
#else
module GHCJS.DOM.SVGPathSegLinetoVerticalAbs (
  ) where
#endif
