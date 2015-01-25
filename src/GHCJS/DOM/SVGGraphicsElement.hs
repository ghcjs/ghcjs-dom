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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"getBBox\"]()"
        ghcjs_dom_svg_graphics_element_get_b_box ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGRect)
 
svgGraphicsElementGetBBox ::
                          (IsSVGGraphicsElement self) => self -> IO (Maybe SVGRect)
svgGraphicsElementGetBBox self
  = fmap SVGRect . maybeJSNull <$>
      (ghcjs_dom_svg_graphics_element_get_b_box
         (unSVGGraphicsElement (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"getCTM\"]()"
        ghcjs_dom_svg_graphics_element_get_ctm ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGMatrix)
 
svgGraphicsElementGetCTM ::
                         (IsSVGGraphicsElement self) => self -> IO (Maybe SVGMatrix)
svgGraphicsElementGetCTM self
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_graphics_element_get_ctm
         (unSVGGraphicsElement (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"getScreenCTM\"]()"
        ghcjs_dom_svg_graphics_element_get_screen_ctm ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGMatrix)
 
svgGraphicsElementGetScreenCTM ::
                               (IsSVGGraphicsElement self) => self -> IO (Maybe SVGMatrix)
svgGraphicsElementGetScreenCTM self
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_graphics_element_get_screen_ctm
         (unSVGGraphicsElement (toSVGGraphicsElement self)))
 
foreign import javascript unsafe
        "$1[\"getTransformToElement\"]($2)"
        ghcjs_dom_svg_graphics_element_get_transform_to_element ::
        JSRef SVGGraphicsElement ->
          JSRef SVGElement -> IO (JSRef SVGMatrix)
 
svgGraphicsElementGetTransformToElement ::
                                        (IsSVGGraphicsElement self, IsSVGElement element) =>
                                          self -> Maybe element -> IO (Maybe SVGMatrix)
svgGraphicsElementGetTransformToElement self element
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_graphics_element_get_transform_to_element
         (unSVGGraphicsElement (toSVGGraphicsElement self))
         (maybe jsNull (unSVGElement . toSVGElement) element))
 
foreign import javascript unsafe "$1[\"transform\"]"
        ghcjs_dom_svg_graphics_element_get_transform ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGAnimatedTransformList)
 
svgGraphicsElementGetTransform ::
                               (IsSVGGraphicsElement self) =>
                                 self -> IO (Maybe SVGAnimatedTransformList)
svgGraphicsElementGetTransform self
  = fmap SVGAnimatedTransformList . maybeJSNull <$>
      (ghcjs_dom_svg_graphics_element_get_transform
         (unSVGGraphicsElement (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"nearestViewportElement\"]"
        ghcjs_dom_svg_graphics_element_get_nearest_viewport_element ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGElement)
 
svgGraphicsElementGetNearestViewportElement ::
                                            (IsSVGGraphicsElement self) =>
                                              self -> IO (Maybe SVGElement)
svgGraphicsElementGetNearestViewportElement self
  = fmap SVGElement . maybeJSNull <$>
      (ghcjs_dom_svg_graphics_element_get_nearest_viewport_element
         (unSVGGraphicsElement (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"farthestViewportElement\"]"
        ghcjs_dom_svg_graphics_element_get_farthest_viewport_element ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGElement)
 
svgGraphicsElementGetFarthestViewportElement ::
                                             (IsSVGGraphicsElement self) =>
                                               self -> IO (Maybe SVGElement)
svgGraphicsElementGetFarthestViewportElement self
  = fmap SVGElement . maybeJSNull <$>
      (ghcjs_dom_svg_graphics_element_get_farthest_viewport_element
         (unSVGGraphicsElement (toSVGGraphicsElement self)))
#else
module GHCJS.DOM.SVGGraphicsElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGGraphicsElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGGraphicsElement
#endif
