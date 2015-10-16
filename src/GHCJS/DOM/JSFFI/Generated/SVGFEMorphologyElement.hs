{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEMorphologyElement
       (js_setRadius, setRadius, pattern SVG_MORPHOLOGY_OPERATOR_UNKNOWN,
        pattern SVG_MORPHOLOGY_OPERATOR_ERODE,
        pattern SVG_MORPHOLOGY_OPERATOR_DILATE, js_getIn1, getIn1,
        js_getOperator, getOperator, js_getRadiusX, getRadiusX,
        js_getRadiusY, getRadiusY, SVGFEMorphologyElement,
        castToSVGFEMorphologyElement, gTypeSVGFEMorphologyElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"setRadius\"]($2, $3)"
        js_setRadius :: SVGFEMorphologyElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.setRadius Mozilla SVGFEMorphologyElement.setRadius documentation> 
setRadius ::
          (MonadIO m) => SVGFEMorphologyElement -> Float -> Float -> m ()
setRadius self radiusX radiusY
  = liftIO (js_setRadius (self) radiusX radiusY)
pattern SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0
pattern SVG_MORPHOLOGY_OPERATOR_ERODE = 1
pattern SVG_MORPHOLOGY_OPERATOR_DILATE = 2
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEMorphologyElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.in1 Mozilla SVGFEMorphologyElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEMorphologyElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"operator\"]" js_getOperator
        :: SVGFEMorphologyElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.operator Mozilla SVGFEMorphologyElement.operator documentation> 
getOperator ::
            (MonadIO m) =>
              SVGFEMorphologyElement -> m (Maybe SVGAnimatedEnumeration)
getOperator self
  = liftIO (nullableToMaybe <$> (js_getOperator (self)))
 
foreign import javascript unsafe "$1[\"radiusX\"]" js_getRadiusX ::
        SVGFEMorphologyElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusX Mozilla SVGFEMorphologyElement.radiusX documentation> 
getRadiusX ::
           (MonadIO m) =>
             SVGFEMorphologyElement -> m (Maybe SVGAnimatedNumber)
getRadiusX self
  = liftIO (nullableToMaybe <$> (js_getRadiusX (self)))
 
foreign import javascript unsafe "$1[\"radiusY\"]" js_getRadiusY ::
        SVGFEMorphologyElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusY Mozilla SVGFEMorphologyElement.radiusY documentation> 
getRadiusY ::
           (MonadIO m) =>
             SVGFEMorphologyElement -> m (Maybe SVGAnimatedNumber)
getRadiusY self
  = liftIO (nullableToMaybe <$> (js_getRadiusY (self)))