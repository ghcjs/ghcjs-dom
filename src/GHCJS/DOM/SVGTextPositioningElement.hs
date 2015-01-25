{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTextPositioningElement
       (ghcjs_dom_svg_text_positioning_element_get_x,
        svgTextPositioningElementGetX,
        ghcjs_dom_svg_text_positioning_element_get_y,
        svgTextPositioningElementGetY,
        ghcjs_dom_svg_text_positioning_element_get_dx,
        svgTextPositioningElementGetDx,
        ghcjs_dom_svg_text_positioning_element_get_dy,
        svgTextPositioningElementGetDy,
        ghcjs_dom_svg_text_positioning_element_get_rotate,
        svgTextPositioningElementGetRotate, SVGTextPositioningElement,
        IsSVGTextPositioningElement, castToSVGTextPositioningElement,
        gTypeSVGTextPositioningElement, toSVGTextPositioningElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_text_positioning_element_get_x ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)
 
svgTextPositioningElementGetX ::
                              (IsSVGTextPositioningElement self) =>
                                self -> IO (Maybe SVGAnimatedLengthList)
svgTextPositioningElementGetX self
  = fmap SVGAnimatedLengthList . maybeJSNull <$>
      (ghcjs_dom_svg_text_positioning_element_get_x
         (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_text_positioning_element_get_y ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)
 
svgTextPositioningElementGetY ::
                              (IsSVGTextPositioningElement self) =>
                                self -> IO (Maybe SVGAnimatedLengthList)
svgTextPositioningElementGetY self
  = fmap SVGAnimatedLengthList . maybeJSNull <$>
      (ghcjs_dom_svg_text_positioning_element_get_y
         (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
 
foreign import javascript unsafe "$1[\"dx\"]"
        ghcjs_dom_svg_text_positioning_element_get_dx ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)
 
svgTextPositioningElementGetDx ::
                               (IsSVGTextPositioningElement self) =>
                                 self -> IO (Maybe SVGAnimatedLengthList)
svgTextPositioningElementGetDx self
  = fmap SVGAnimatedLengthList . maybeJSNull <$>
      (ghcjs_dom_svg_text_positioning_element_get_dx
         (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
 
foreign import javascript unsafe "$1[\"dy\"]"
        ghcjs_dom_svg_text_positioning_element_get_dy ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)
 
svgTextPositioningElementGetDy ::
                               (IsSVGTextPositioningElement self) =>
                                 self -> IO (Maybe SVGAnimatedLengthList)
svgTextPositioningElementGetDy self
  = fmap SVGAnimatedLengthList . maybeJSNull <$>
      (ghcjs_dom_svg_text_positioning_element_get_dy
         (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
 
foreign import javascript unsafe "$1[\"rotate\"]"
        ghcjs_dom_svg_text_positioning_element_get_rotate ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedNumberList)
 
svgTextPositioningElementGetRotate ::
                                   (IsSVGTextPositioningElement self) =>
                                     self -> IO (Maybe SVGAnimatedNumberList)
svgTextPositioningElementGetRotate self
  = fmap SVGAnimatedNumberList . maybeJSNull <$>
      (ghcjs_dom_svg_text_positioning_element_get_rotate
         (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
#else
module GHCJS.DOM.SVGTextPositioningElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGTextPositioningElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGTextPositioningElement
#endif
