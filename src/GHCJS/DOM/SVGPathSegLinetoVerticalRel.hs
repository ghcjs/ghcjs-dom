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
        ghcjs_dom_svg_path_seg_lineto_vertical_rel_set_y ::
        JSRef SVGPathSegLinetoVerticalRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalRel.y Mozilla SVGPathSegLinetoVerticalRel.y documentation> 
svgPathSegLinetoVerticalRelSetY ::
                                (MonadIO m, IsSVGPathSegLinetoVerticalRel self) =>
                                  self -> Float -> m ()
svgPathSegLinetoVerticalRelSetY self val
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_vertical_rel_set_y
         (unSVGPathSegLinetoVerticalRel
            (toSVGPathSegLinetoVerticalRel self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_lineto_vertical_rel_get_y ::
        JSRef SVGPathSegLinetoVerticalRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalRel.y Mozilla SVGPathSegLinetoVerticalRel.y documentation> 
svgPathSegLinetoVerticalRelGetY ::
                                (MonadIO m, IsSVGPathSegLinetoVerticalRel self) => self -> m Float
svgPathSegLinetoVerticalRelGetY self
  = liftIO
      (ghcjs_dom_svg_path_seg_lineto_vertical_rel_get_y
         (unSVGPathSegLinetoVerticalRel
            (toSVGPathSegLinetoVerticalRel self)))
#else
module GHCJS.DOM.SVGPathSegLinetoVerticalRel (
  ) where
#endif
