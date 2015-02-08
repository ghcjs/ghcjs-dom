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
        ghcjs_dom_svg_path_seg_lineto_horizontal_rel_set_x ::
        JSRef SVGPathSegLinetoHorizontalRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalRel.x Mozilla SVGPathSegLinetoHorizontalRel.x documentation> 
svgPathSegLinetoHorizontalRelSetX ::
                                  (MonadIO m, IsSVGPathSegLinetoHorizontalRel self) =>
                                    self -> Float -> m ()
svgPathSegLinetoHorizontalRelSetX self val
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_horizontal_rel_set_x
         (unSVGPathSegLinetoHorizontalRel
            (toSVGPathSegLinetoHorizontalRel self))
         val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_lineto_horizontal_rel_get_x ::
        JSRef SVGPathSegLinetoHorizontalRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalRel.x Mozilla SVGPathSegLinetoHorizontalRel.x documentation> 
svgPathSegLinetoHorizontalRelGetX ::
                                  (MonadIO m, IsSVGPathSegLinetoHorizontalRel self) =>
                                    self -> m Float
svgPathSegLinetoHorizontalRelGetX self
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_horizontal_rel_get_x
         (unSVGPathSegLinetoHorizontalRel
            (toSVGPathSegLinetoHorizontalRel self)))
#else
module GHCJS.DOM.SVGPathSegLinetoHorizontalRel (
  ) where
#endif
