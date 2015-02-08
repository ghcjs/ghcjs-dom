{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGGraphicsElement
       (ghcjs_dom_svg_graphics_element_get_b_box,
        svgGraphicsElementGetBBox, ghcjs_dom_svg_graphics_element_get_ctm,
        svgGraphicsElementGetCTM,
        ghcjs_dom_svg_graphics_element_get_screen_ctm,
        svgGraphicsElementGetScreenCTM,
        ghcjs_dom_svg_graphics_element_get_transform_to_element,
        svgGraphicsElementGetTransformToElement,
        ghcjs_dom_svg_graphics_element_get_transform,
        svgGraphicsElementGetTransform,
        ghcjs_dom_svg_graphics_element_get_nearest_viewport_element,
        svgGraphicsElementGetNearestViewportElement,
        ghcjs_dom_svg_graphics_element_get_farthest_viewport_element,
        svgGraphicsElementGetFarthestViewportElement, SVGGraphicsElement,
        IsSVGGraphicsElement, castToSVGGraphicsElement,
        gTypeSVGGraphicsElement, toSVGGraphicsElement)
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

 
foreign import javascript unsafe "$1[\"getBBox\"]()"
        ghcjs_dom_svg_graphics_element_get_b_box ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.bBox Mozilla SVGGraphicsElement.bBox documentation> 
svgGraphicsElementGetBBox ::
                          (MonadIO m, IsSVGGraphicsElement self) => self -> m (Maybe SVGRect)
svgGraphicsElementGetBBox self
  = liftIO
      ((ghcjs_dom_svg_graphics_element_get_b_box
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getCTM\"]()"
        ghcjs_dom_svg_graphics_element_get_ctm ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.ctm Mozilla SVGGraphicsElement.ctm documentation> 
svgGraphicsElementGetCTM ::
                         (MonadIO m, IsSVGGraphicsElement self) =>
                           self -> m (Maybe SVGMatrix)
svgGraphicsElementGetCTM self
  = liftIO
      ((ghcjs_dom_svg_graphics_element_get_ctm
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getScreenCTM\"]()"
        ghcjs_dom_svg_graphics_element_get_screen_ctm ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.screenCTM Mozilla SVGGraphicsElement.screenCTM documentation> 
svgGraphicsElementGetScreenCTM ::
                               (MonadIO m, IsSVGGraphicsElement self) =>
                                 self -> m (Maybe SVGMatrix)
svgGraphicsElementGetScreenCTM self
  = liftIO
      ((ghcjs_dom_svg_graphics_element_get_screen_ctm
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getTransformToElement\"]($2)"
        ghcjs_dom_svg_graphics_element_get_transform_to_element ::
        JSRef SVGGraphicsElement ->
          JSRef SVGElement -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.transformToElement Mozilla SVGGraphicsElement.transformToElement documentation> 
svgGraphicsElementGetTransformToElement ::
                                        (MonadIO m, IsSVGGraphicsElement self,
                                         IsSVGElement element) =>
                                          self -> Maybe element -> m (Maybe SVGMatrix)
svgGraphicsElementGetTransformToElement self element
  = liftIO
      ((ghcjs_dom_svg_graphics_element_get_transform_to_element
          (unSVGGraphicsElement (toSVGGraphicsElement self))
          (maybe jsNull (unSVGElement . toSVGElement) element))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transform\"]"
        ghcjs_dom_svg_graphics_element_get_transform ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.transform Mozilla SVGGraphicsElement.transform documentation> 
svgGraphicsElementGetTransform ::
                               (MonadIO m, IsSVGGraphicsElement self) =>
                                 self -> m (Maybe SVGAnimatedTransformList)
svgGraphicsElementGetTransform self
  = liftIO
      ((ghcjs_dom_svg_graphics_element_get_transform
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nearestViewportElement\"]"
        ghcjs_dom_svg_graphics_element_get_nearest_viewport_element ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.nearestViewportElement Mozilla SVGGraphicsElement.nearestViewportElement documentation> 
svgGraphicsElementGetNearestViewportElement ::
                                            (MonadIO m, IsSVGGraphicsElement self) =>
                                              self -> m (Maybe SVGElement)
svgGraphicsElementGetNearestViewportElement self
  = liftIO
      ((ghcjs_dom_svg_graphics_element_get_nearest_viewport_element
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"farthestViewportElement\"]"
        ghcjs_dom_svg_graphics_element_get_farthest_viewport_element ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.farthestViewportElement Mozilla SVGGraphicsElement.farthestViewportElement documentation> 
svgGraphicsElementGetFarthestViewportElement ::
                                             (MonadIO m, IsSVGGraphicsElement self) =>
                                               self -> m (Maybe SVGElement)
svgGraphicsElementGetFarthestViewportElement self
  = liftIO
      ((ghcjs_dom_svg_graphics_element_get_farthest_viewport_element
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGGraphicsElement (
  ) where
#endif
