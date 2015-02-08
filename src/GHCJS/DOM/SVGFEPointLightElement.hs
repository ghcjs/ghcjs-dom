{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEPointLightElement
       (ghcjs_dom_svgfe_point_light_element_get_x,
        svgfePointLightElementGetX,
        ghcjs_dom_svgfe_point_light_element_get_y,
        svgfePointLightElementGetY,
        ghcjs_dom_svgfe_point_light_element_get_z,
        svgfePointLightElementGetZ, SVGFEPointLightElement,
        IsSVGFEPointLightElement, castToSVGFEPointLightElement,
        gTypeSVGFEPointLightElement, toSVGFEPointLightElement)
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
        ghcjs_dom_svgfe_point_light_element_get_x ::
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.x Mozilla SVGFEPointLightElement.x documentation> 
svgfePointLightElementGetX ::
                           (MonadIO m, IsSVGFEPointLightElement self) =>
                             self -> m (Maybe SVGAnimatedNumber)
svgfePointLightElementGetX self
  = liftIO
      ((ghcjs_dom_svgfe_point_light_element_get_x
          (unSVGFEPointLightElement (toSVGFEPointLightElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svgfe_point_light_element_get_y ::
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.y Mozilla SVGFEPointLightElement.y documentation> 
svgfePointLightElementGetY ::
                           (MonadIO m, IsSVGFEPointLightElement self) =>
                             self -> m (Maybe SVGAnimatedNumber)
svgfePointLightElementGetY self
  = liftIO
      ((ghcjs_dom_svgfe_point_light_element_get_y
          (unSVGFEPointLightElement (toSVGFEPointLightElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"z\"]"
        ghcjs_dom_svgfe_point_light_element_get_z ::
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.z Mozilla SVGFEPointLightElement.z documentation> 
svgfePointLightElementGetZ ::
                           (MonadIO m, IsSVGFEPointLightElement self) =>
                             self -> m (Maybe SVGAnimatedNumber)
svgfePointLightElementGetZ self
  = liftIO
      ((ghcjs_dom_svgfe_point_light_element_get_z
          (unSVGFEPointLightElement (toSVGFEPointLightElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGFEPointLightElement (
  ) where
#endif
