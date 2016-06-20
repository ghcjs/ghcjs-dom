{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEConvolveMatrixElement
       (pattern SVG_EDGEMODE_UNKNOWN, pattern SVG_EDGEMODE_DUPLICATE,
        pattern SVG_EDGEMODE_WRAP, pattern SVG_EDGEMODE_NONE, js_getIn1,
        getIn1, js_getOrderX, getOrderX, js_getOrderY, getOrderY,
        js_getKernelMatrix, getKernelMatrix, js_getDivisor, getDivisor,
        js_getBias, getBias, js_getTargetX, getTargetX, js_getTargetY,
        getTargetY, js_getEdgeMode, getEdgeMode, js_getKernelUnitLengthX,
        getKernelUnitLengthX, js_getKernelUnitLengthY,
        getKernelUnitLengthY, js_getPreserveAlpha, getPreserveAlpha,
        SVGFEConvolveMatrixElement, castToSVGFEConvolveMatrixElement,
        gTypeSVGFEConvolveMatrixElement)
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
pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"orderX\"]" js_getOrderX ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderX ::
          (MonadIO m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderX self = liftIO (nullableToMaybe <$> (js_getOrderX (self)))
 
foreign import javascript unsafe "$1[\"orderY\"]" js_getOrderY ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderY ::
          (MonadIO m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderY self = liftIO (nullableToMaybe <$> (js_getOrderY (self)))
 
foreign import javascript unsafe "$1[\"kernelMatrix\"]"
        js_getKernelMatrix ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrix ::
                (MonadIO m) =>
                  SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumberList)
getKernelMatrix self
  = liftIO (nullableToMaybe <$> (js_getKernelMatrix (self)))
 
foreign import javascript unsafe "$1[\"divisor\"]" js_getDivisor ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisor ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getDivisor self
  = liftIO (nullableToMaybe <$> (js_getDivisor (self)))
 
foreign import javascript unsafe "$1[\"bias\"]" js_getBias ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBias ::
        (MonadIO m) =>
          SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getBias self = liftIO (nullableToMaybe <$> (js_getBias (self)))
 
foreign import javascript unsafe "$1[\"targetX\"]" js_getTargetX ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetX ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetX self
  = liftIO (nullableToMaybe <$> (js_getTargetX (self)))
 
foreign import javascript unsafe "$1[\"targetY\"]" js_getTargetY ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetY ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetY self
  = liftIO (nullableToMaybe <$> (js_getTargetY (self)))
 
foreign import javascript unsafe "$1[\"edgeMode\"]" js_getEdgeMode
        ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeMode ::
            (MonadIO m) =>
              SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedEnumeration)
getEdgeMode self
  = liftIO (nullableToMaybe <$> (js_getEdgeMode (self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        js_getKernelUnitLengthX ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadIO m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthX self
  = liftIO (nullableToMaybe <$> (js_getKernelUnitLengthX (self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        js_getKernelUnitLengthY ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadIO m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthY self
  = liftIO (nullableToMaybe <$> (js_getKernelUnitLengthY (self)))
 
foreign import javascript unsafe "$1[\"preserveAlpha\"]"
        js_getPreserveAlpha ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedBoolean)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlpha ::
                 (MonadIO m) =>
                   SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedBoolean)
getPreserveAlpha self
  = liftIO (nullableToMaybe <$> (js_getPreserveAlpha (self)))