{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPolygonElement
       (ghcjs_dom_svg_polygon_element_get_points,
        svgPolygonElementGetPoints,
        ghcjs_dom_svg_polygon_element_get_animated_points,
        svgPolygonElementGetAnimatedPoints, SVGPolygonElement,
        IsSVGPolygonElement, castToSVGPolygonElement,
        gTypeSVGPolygonElement, toSVGPolygonElement)
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

 
foreign import javascript unsafe "$1[\"points\"]"
        ghcjs_dom_svg_polygon_element_get_points ::
        JSRef SVGPolygonElement -> IO (JSRef SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement.points Mozilla SVGPolygonElement.points documentation> 
svgPolygonElementGetPoints ::
                           (MonadIO m, IsSVGPolygonElement self) =>
                             self -> m (Maybe SVGPointList)
svgPolygonElementGetPoints self
  = liftIO
      ((ghcjs_dom_svg_polygon_element_get_points
          (unSVGPolygonElement (toSVGPolygonElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animatedPoints\"]"
        ghcjs_dom_svg_polygon_element_get_animated_points ::
        JSRef SVGPolygonElement -> IO (JSRef SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement.animatedPoints Mozilla SVGPolygonElement.animatedPoints documentation> 
svgPolygonElementGetAnimatedPoints ::
                                   (MonadIO m, IsSVGPolygonElement self) =>
                                     self -> m (Maybe SVGPointList)
svgPolygonElementGetAnimatedPoints self
  = liftIO
      ((ghcjs_dom_svg_polygon_element_get_animated_points
          (unSVGPolygonElement (toSVGPolygonElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGPolygonElement (
  ) where
#endif
