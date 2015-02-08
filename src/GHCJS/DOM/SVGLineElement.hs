{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGLineElement
       (ghcjs_dom_svg_line_element_get_x1, svgLineElementGetX1,
        ghcjs_dom_svg_line_element_get_y1, svgLineElementGetY1,
        ghcjs_dom_svg_line_element_get_x2, svgLineElementGetX2,
        ghcjs_dom_svg_line_element_get_y2, svgLineElementGetY2,
        SVGLineElement, IsSVGLineElement, castToSVGLineElement,
        gTypeSVGLineElement, toSVGLineElement)
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
        ghcjs_dom_svg_line_element_get_x1 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x1 Mozilla SVGLineElement.x1 documentation> 
svgLineElementGetX1 ::
                    (MonadIO m, IsSVGLineElement self) =>
                      self -> m (Maybe SVGAnimatedLength)
svgLineElementGetX1 self
  = liftIO
      ((ghcjs_dom_svg_line_element_get_x1
          (unSVGLineElement (toSVGLineElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_line_element_get_y1 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y1 Mozilla SVGLineElement.y1 documentation> 
svgLineElementGetY1 ::
                    (MonadIO m, IsSVGLineElement self) =>
                      self -> m (Maybe SVGAnimatedLength)
svgLineElementGetY1 self
  = liftIO
      ((ghcjs_dom_svg_line_element_get_y1
          (unSVGLineElement (toSVGLineElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_line_element_get_x2 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x2 Mozilla SVGLineElement.x2 documentation> 
svgLineElementGetX2 ::
                    (MonadIO m, IsSVGLineElement self) =>
                      self -> m (Maybe SVGAnimatedLength)
svgLineElementGetX2 self
  = liftIO
      ((ghcjs_dom_svg_line_element_get_x2
          (unSVGLineElement (toSVGLineElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_line_element_get_y2 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y2 Mozilla SVGLineElement.y2 documentation> 
svgLineElementGetY2 ::
                    (MonadIO m, IsSVGLineElement self) =>
                      self -> m (Maybe SVGAnimatedLength)
svgLineElementGetY2 self
  = liftIO
      ((ghcjs_dom_svg_line_element_get_y2
          (unSVGLineElement (toSVGLineElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGLineElement (
  ) where
#endif
