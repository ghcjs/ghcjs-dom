{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGForeignObjectElement
       (ghcjs_dom_svg_foreign_object_element_get_x,
        svgForeignObjectElementGetX,
        ghcjs_dom_svg_foreign_object_element_get_y,
        svgForeignObjectElementGetY,
        ghcjs_dom_svg_foreign_object_element_get_width,
        svgForeignObjectElementGetWidth,
        ghcjs_dom_svg_foreign_object_element_get_height,
        svgForeignObjectElementGetHeight, SVGForeignObjectElement,
        IsSVGForeignObjectElement, castToSVGForeignObjectElement,
        gTypeSVGForeignObjectElement, toSVGForeignObjectElement)
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
        ghcjs_dom_svg_foreign_object_element_get_x ::
        JSRef SVGForeignObjectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.x Mozilla SVGForeignObjectElement.x documentation> 
svgForeignObjectElementGetX ::
                            (MonadIO m, IsSVGForeignObjectElement self) =>
                              self -> m (Maybe SVGAnimatedLength)
svgForeignObjectElementGetX self
  = liftIO
      ((ghcjs_dom_svg_foreign_object_element_get_x
          (unSVGForeignObjectElement (toSVGForeignObjectElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_foreign_object_element_get_y ::
        JSRef SVGForeignObjectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.y Mozilla SVGForeignObjectElement.y documentation> 
svgForeignObjectElementGetY ::
                            (MonadIO m, IsSVGForeignObjectElement self) =>
                              self -> m (Maybe SVGAnimatedLength)
svgForeignObjectElementGetY self
  = liftIO
      ((ghcjs_dom_svg_foreign_object_element_get_y
          (unSVGForeignObjectElement (toSVGForeignObjectElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_foreign_object_element_get_width ::
        JSRef SVGForeignObjectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.width Mozilla SVGForeignObjectElement.width documentation> 
svgForeignObjectElementGetWidth ::
                                (MonadIO m, IsSVGForeignObjectElement self) =>
                                  self -> m (Maybe SVGAnimatedLength)
svgForeignObjectElementGetWidth self
  = liftIO
      ((ghcjs_dom_svg_foreign_object_element_get_width
          (unSVGForeignObjectElement (toSVGForeignObjectElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_foreign_object_element_get_height ::
        JSRef SVGForeignObjectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.height Mozilla SVGForeignObjectElement.height documentation> 
svgForeignObjectElementGetHeight ::
                                 (MonadIO m, IsSVGForeignObjectElement self) =>
                                   self -> m (Maybe SVGAnimatedLength)
svgForeignObjectElementGetHeight self
  = liftIO
      ((ghcjs_dom_svg_foreign_object_element_get_height
          (unSVGForeignObjectElement (toSVGForeignObjectElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGForeignObjectElement (
  ) where
#endif
