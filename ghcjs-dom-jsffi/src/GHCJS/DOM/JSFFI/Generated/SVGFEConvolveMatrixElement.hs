{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEConvolveMatrixElement
       (pattern SVG_EDGEMODE_UNKNOWN, pattern SVG_EDGEMODE_DUPLICATE,
        pattern SVG_EDGEMODE_WRAP, pattern SVG_EDGEMODE_NONE, js_getIn1,
        getIn1, js_getOrderX, getOrderX, js_getOrderY, getOrderY,
        js_getKernelMatrix, getKernelMatrix, js_getDivisor, getDivisor,
        js_getBias, getBias, js_getTargetX, getTargetX, js_getTargetY,
        getTargetY, js_getEdgeMode, getEdgeMode, js_getKernelUnitLengthX,
        getKernelUnitLengthX, js_getKernelUnitLengthY,
        getKernelUnitLengthY, js_getPreserveAlpha, getPreserveAlpha,
        SVGFEConvolveMatrixElement(..), gTypeSVGFEConvolveMatrixElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedString
getIn1 self = liftIO (js_getIn1 self)
 
foreign import javascript unsafe "$1[\"orderX\"]" js_getOrderX ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedInteger

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderX ::
          (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderX self = liftIO (js_getOrderX self)
 
foreign import javascript unsafe "$1[\"orderY\"]" js_getOrderY ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedInteger

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderY ::
          (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderY self = liftIO (js_getOrderY self)
 
foreign import javascript unsafe "$1[\"kernelMatrix\"]"
        js_getKernelMatrix ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedNumberList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrix ::
                (MonadIO m) =>
                  SVGFEConvolveMatrixElement -> m SVGAnimatedNumberList
getKernelMatrix self = liftIO (js_getKernelMatrix self)
 
foreign import javascript unsafe "$1[\"divisor\"]" js_getDivisor ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisor ::
           (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getDivisor self = liftIO (js_getDivisor self)
 
foreign import javascript unsafe "$1[\"bias\"]" js_getBias ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBias ::
        (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getBias self = liftIO (js_getBias self)
 
foreign import javascript unsafe "$1[\"targetX\"]" js_getTargetX ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedInteger

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetX ::
           (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetX self = liftIO (js_getTargetX self)
 
foreign import javascript unsafe "$1[\"targetY\"]" js_getTargetY ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedInteger

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetY ::
           (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetY self = liftIO (js_getTargetY self)
 
foreign import javascript unsafe "$1[\"edgeMode\"]" js_getEdgeMode
        :: SVGFEConvolveMatrixElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeMode ::
            (MonadIO m) =>
              SVGFEConvolveMatrixElement -> m SVGAnimatedEnumeration
getEdgeMode self = liftIO (js_getEdgeMode self)
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        js_getKernelUnitLengthX ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthX self = liftIO (js_getKernelUnitLengthX self)
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        js_getKernelUnitLengthY ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthY self = liftIO (js_getKernelUnitLengthY self)
 
foreign import javascript unsafe "$1[\"preserveAlpha\"]"
        js_getPreserveAlpha ::
        SVGFEConvolveMatrixElement -> IO SVGAnimatedBoolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlpha ::
                 (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedBoolean
getPreserveAlpha self = liftIO (js_getPreserveAlpha self)