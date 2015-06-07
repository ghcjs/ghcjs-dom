{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEMorphologyElement
       (js_setRadius, setRadius, pattern SVG_MORPHOLOGY_OPERATOR_UNKNOWN,
        pattern SVG_MORPHOLOGY_OPERATOR_ERODE,
        pattern SVG_MORPHOLOGY_OPERATOR_DILATE, js_getIn1, getIn1,
        js_getOperator, getOperator, js_getRadiusX, getRadiusX,
        js_getRadiusY, getRadiusY, SVGFEMorphologyElement,
        castToSVGFEMorphologyElement, gTypeSVGFEMorphologyElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"setRadius\"]($2, $3)"
        js_setRadius ::
        JSRef SVGFEMorphologyElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.setRadius Mozilla SVGFEMorphologyElement.setRadius documentation> 
setRadius ::
          (MonadIO m) => SVGFEMorphologyElement -> Float -> Float -> m ()
setRadius self radiusX radiusY
  = liftIO
      (js_setRadius (unSVGFEMorphologyElement self) radiusX radiusY)
pattern SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0
pattern SVG_MORPHOLOGY_OPERATOR_ERODE = 1
pattern SVG_MORPHOLOGY_OPERATOR_DILATE = 2
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.in1 Mozilla SVGFEMorphologyElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEMorphologyElement -> m (Maybe SVGAnimatedString)
getIn1 self
  = liftIO
      ((js_getIn1 (unSVGFEMorphologyElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"operator\"]" js_getOperator
        ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.operator Mozilla SVGFEMorphologyElement.operator documentation> 
getOperator ::
            (MonadIO m) =>
              SVGFEMorphologyElement -> m (Maybe SVGAnimatedEnumeration)
getOperator self
  = liftIO
      ((js_getOperator (unSVGFEMorphologyElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"radiusX\"]" js_getRadiusX ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusX Mozilla SVGFEMorphologyElement.radiusX documentation> 
getRadiusX ::
           (MonadIO m) =>
             SVGFEMorphologyElement -> m (Maybe SVGAnimatedNumber)
getRadiusX self
  = liftIO
      ((js_getRadiusX (unSVGFEMorphologyElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"radiusY\"]" js_getRadiusY ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusY Mozilla SVGFEMorphologyElement.radiusY documentation> 
getRadiusY ::
           (MonadIO m) =>
             SVGFEMorphologyElement -> m (Maybe SVGAnimatedNumber)
getRadiusY self
  = liftIO
      ((js_getRadiusY (unSVGFEMorphologyElement self)) >>= fromJSRef)