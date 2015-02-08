{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGLinearGradientElement
       (ghcjs_dom_svg_linear_gradient_element_get_x1,
        svgLinearGradientElementGetX1,
        ghcjs_dom_svg_linear_gradient_element_get_y1,
        svgLinearGradientElementGetY1,
        ghcjs_dom_svg_linear_gradient_element_get_x2,
        svgLinearGradientElementGetX2,
        ghcjs_dom_svg_linear_gradient_element_get_y2,
        svgLinearGradientElementGetY2, SVGLinearGradientElement,
        IsSVGLinearGradientElement, castToSVGLinearGradientElement,
        gTypeSVGLinearGradientElement, toSVGLinearGradientElement)
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

 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_linear_gradient_element_get_x1 ::
        JSRef SVGLinearGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x1 Mozilla SVGLinearGradientElement.x1 documentation> 
svgLinearGradientElementGetX1 ::
                              (MonadIO m, IsSVGLinearGradientElement self) =>
                                self -> m (Maybe SVGAnimatedLength)
svgLinearGradientElementGetX1 self
  = liftIO
      ((ghcjs_dom_svg_linear_gradient_element_get_x1
          (unSVGLinearGradientElement (toSVGLinearGradientElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_linear_gradient_element_get_y1 ::
        JSRef SVGLinearGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y1 Mozilla SVGLinearGradientElement.y1 documentation> 
svgLinearGradientElementGetY1 ::
                              (MonadIO m, IsSVGLinearGradientElement self) =>
                                self -> m (Maybe SVGAnimatedLength)
svgLinearGradientElementGetY1 self
  = liftIO
      ((ghcjs_dom_svg_linear_gradient_element_get_y1
          (unSVGLinearGradientElement (toSVGLinearGradientElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_linear_gradient_element_get_x2 ::
        JSRef SVGLinearGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x2 Mozilla SVGLinearGradientElement.x2 documentation> 
svgLinearGradientElementGetX2 ::
                              (MonadIO m, IsSVGLinearGradientElement self) =>
                                self -> m (Maybe SVGAnimatedLength)
svgLinearGradientElementGetX2 self
  = liftIO
      ((ghcjs_dom_svg_linear_gradient_element_get_x2
          (unSVGLinearGradientElement (toSVGLinearGradientElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_linear_gradient_element_get_y2 ::
        JSRef SVGLinearGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y2 Mozilla SVGLinearGradientElement.y2 documentation> 
svgLinearGradientElementGetY2 ::
                              (MonadIO m, IsSVGLinearGradientElement self) =>
                                self -> m (Maybe SVGAnimatedLength)
svgLinearGradientElementGetY2 self
  = liftIO
      ((ghcjs_dom_svg_linear_gradient_element_get_y2
          (unSVGLinearGradientElement (toSVGLinearGradientElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGLinearGradientElement (
  ) where
#endif
