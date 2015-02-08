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

 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_text_positioning_element_get_x ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
svgTextPositioningElementGetX ::
                              (MonadIO m, IsSVGTextPositioningElement self) =>
                                self -> m (Maybe SVGAnimatedLengthList)
svgTextPositioningElementGetX self
  = liftIO
      ((ghcjs_dom_svg_text_positioning_element_get_x
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_text_positioning_element_get_y ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
svgTextPositioningElementGetY ::
                              (MonadIO m, IsSVGTextPositioningElement self) =>
                                self -> m (Maybe SVGAnimatedLengthList)
svgTextPositioningElementGetY self
  = liftIO
      ((ghcjs_dom_svg_text_positioning_element_get_y
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"dx\"]"
        ghcjs_dom_svg_text_positioning_element_get_dx ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
svgTextPositioningElementGetDx ::
                               (MonadIO m, IsSVGTextPositioningElement self) =>
                                 self -> m (Maybe SVGAnimatedLengthList)
svgTextPositioningElementGetDx self
  = liftIO
      ((ghcjs_dom_svg_text_positioning_element_get_dx
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"dy\"]"
        ghcjs_dom_svg_text_positioning_element_get_dy ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
svgTextPositioningElementGetDy ::
                               (MonadIO m, IsSVGTextPositioningElement self) =>
                                 self -> m (Maybe SVGAnimatedLengthList)
svgTextPositioningElementGetDy self
  = liftIO
      ((ghcjs_dom_svg_text_positioning_element_get_dy
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotate\"]"
        ghcjs_dom_svg_text_positioning_element_get_rotate ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
svgTextPositioningElementGetRotate ::
                                   (MonadIO m, IsSVGTextPositioningElement self) =>
                                     self -> m (Maybe SVGAnimatedNumberList)
svgTextPositioningElementGetRotate self
  = liftIO
      ((ghcjs_dom_svg_text_positioning_element_get_rotate
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGTextPositioningElement (
  ) where
#endif
