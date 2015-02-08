{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEDropShadowElement
       (ghcjs_dom_svgfe_drop_shadow_element_set_std_deviation,
        svgfeDropShadowElementSetStdDeviation,
        ghcjs_dom_svgfe_drop_shadow_element_get_in1,
        svgfeDropShadowElementGetIn1,
        ghcjs_dom_svgfe_drop_shadow_element_get_dx,
        svgfeDropShadowElementGetDx,
        ghcjs_dom_svgfe_drop_shadow_element_get_dy,
        svgfeDropShadowElementGetDy,
        ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_x,
        svgfeDropShadowElementGetStdDeviationX,
        ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_y,
        svgfeDropShadowElementGetStdDeviationY, SVGFEDropShadowElement,
        IsSVGFEDropShadowElement, castToSVGFEDropShadowElement,
        gTypeSVGFEDropShadowElement, toSVGFEDropShadowElement)
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

 
foreign import javascript unsafe "$1[\"setStdDeviation\"]($2, $3)"
        ghcjs_dom_svgfe_drop_shadow_element_set_std_deviation ::
        JSRef SVGFEDropShadowElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviation Mozilla SVGFEDropShadowElement.stdDeviation documentation> 
svgfeDropShadowElementSetStdDeviation ::
                                      (MonadIO m, IsSVGFEDropShadowElement self) =>
                                        self -> Float -> Float -> m ()
svgfeDropShadowElementSetStdDeviation self stdDeviationX
  stdDeviationY
  = liftIO
      (ghcjs_dom_svgfe_drop_shadow_element_set_std_deviation
         (unSVGFEDropShadowElement (toSVGFEDropShadowElement self))
         stdDeviationX
         stdDeviationY)
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_in1 ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.in1 Mozilla SVGFEDropShadowElement.in1 documentation> 
svgfeDropShadowElementGetIn1 ::
                             (MonadIO m, IsSVGFEDropShadowElement self) =>
                               self -> m (Maybe SVGAnimatedString)
svgfeDropShadowElementGetIn1 self
  = liftIO
      ((ghcjs_dom_svgfe_drop_shadow_element_get_in1
          (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"dx\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_dx ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dx Mozilla SVGFEDropShadowElement.dx documentation> 
svgfeDropShadowElementGetDx ::
                            (MonadIO m, IsSVGFEDropShadowElement self) =>
                              self -> m (Maybe SVGAnimatedNumber)
svgfeDropShadowElementGetDx self
  = liftIO
      ((ghcjs_dom_svgfe_drop_shadow_element_get_dx
          (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"dy\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_dy ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dy Mozilla SVGFEDropShadowElement.dy documentation> 
svgfeDropShadowElementGetDy ::
                            (MonadIO m, IsSVGFEDropShadowElement self) =>
                              self -> m (Maybe SVGAnimatedNumber)
svgfeDropShadowElementGetDy self
  = liftIO
      ((ghcjs_dom_svgfe_drop_shadow_element_get_dy
          (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_x ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationX Mozilla SVGFEDropShadowElement.stdDeviationX documentation> 
svgfeDropShadowElementGetStdDeviationX ::
                                       (MonadIO m, IsSVGFEDropShadowElement self) =>
                                         self -> m (Maybe SVGAnimatedNumber)
svgfeDropShadowElementGetStdDeviationX self
  = liftIO
      ((ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_x
          (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_y ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationY Mozilla SVGFEDropShadowElement.stdDeviationY documentation> 
svgfeDropShadowElementGetStdDeviationY ::
                                       (MonadIO m, IsSVGFEDropShadowElement self) =>
                                         self -> m (Maybe SVGAnimatedNumber)
svgfeDropShadowElementGetStdDeviationY self
  = liftIO
      ((ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_y
          (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGFEDropShadowElement (
  ) where
#endif
