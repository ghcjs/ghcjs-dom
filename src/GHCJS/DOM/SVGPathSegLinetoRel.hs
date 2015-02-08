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

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_rel_set_x ::
        JSRef SVGPathSegLinetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.x Mozilla SVGPathSegLinetoRel.x documentation> 
svgPathSegLinetoRelSetX ::
                        (MonadIO m, IsSVGPathSegLinetoRel self) => self -> Float -> m ()
svgPathSegLinetoRelSetX self val
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_rel_set_x
         (unSVGPathSegLinetoRel (toSVGPathSegLinetoRel self))
         val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_lineto_rel_get_x ::
        JSRef SVGPathSegLinetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.x Mozilla SVGPathSegLinetoRel.x documentation> 
svgPathSegLinetoRelGetX ::
                        (MonadIO m, IsSVGPathSegLinetoRel self) => self -> m Float
svgPathSegLinetoRelGetX self
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_rel_get_x
         (unSVGPathSegLinetoRel (toSVGPathSegLinetoRel self)))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_lineto_rel_set_y ::
        JSRef SVGPathSegLinetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.y Mozilla SVGPathSegLinetoRel.y documentation> 
svgPathSegLinetoRelSetY ::
                        (MonadIO m, IsSVGPathSegLinetoRel self) => self -> Float -> m ()
svgPathSegLinetoRelSetY self val
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_rel_set_y
         (unSVGPathSegLinetoRel (toSVGPathSegLinetoRel self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_lineto_rel_get_y ::
        JSRef SVGPathSegLinetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.y Mozilla SVGPathSegLinetoRel.y documentation> 
svgPathSegLinetoRelGetY ::
                        (MonadIO m, IsSVGPathSegLinetoRel self) => self -> m Float
svgPathSegLinetoRelGetY self
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_rel_get_y
         (unSVGPathSegLinetoRel (toSVGPathSegLinetoRel self)))
#else
module GHCJS.DOM.SVGPathSegLinetoRel (
  ) where
#endif
