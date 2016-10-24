{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEConvolveMatrixElement
       (pattern SVG_EDGEMODE_UNKNOWN, pattern SVG_EDGEMODE_DUPLICATE,
        pattern SVG_EDGEMODE_WRAP, pattern SVG_EDGEMODE_NONE, js_getIn1,
        getIn1, getIn1Unsafe, getIn1Unchecked, js_getOrderX, getOrderX,
        getOrderXUnsafe, getOrderXUnchecked, js_getOrderY, getOrderY,
        getOrderYUnsafe, getOrderYUnchecked, js_getKernelMatrix,
        getKernelMatrix, getKernelMatrixUnsafe, getKernelMatrixUnchecked,
        js_getDivisor, getDivisor, getDivisorUnsafe, getDivisorUnchecked,
        js_getBias, getBias, getBiasUnsafe, getBiasUnchecked,
        js_getTargetX, getTargetX, getTargetXUnsafe, getTargetXUnchecked,
        js_getTargetY, getTargetY, getTargetYUnsafe, getTargetYUnchecked,
        js_getEdgeMode, getEdgeMode, getEdgeModeUnsafe,
        getEdgeModeUnchecked, js_getKernelUnitLengthX,
        getKernelUnitLengthX, getKernelUnitLengthXUnsafe,
        getKernelUnitLengthXUnchecked, js_getKernelUnitLengthY,
        getKernelUnitLengthY, getKernelUnitLengthYUnsafe,
        getKernelUnitLengthYUnchecked, js_getPreserveAlpha,
        getPreserveAlpha, getPreserveAlphaUnsafe,
        getPreserveAlphaUnchecked, SVGFEConvolveMatrixElement(..),
        gTypeSVGFEConvolveMatrixElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFEConvolveMatrixElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"orderX\"]" js_getOrderX ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderX ::
          (MonadIO m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderX self = liftIO (nullableToMaybe <$> (js_getOrderX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderXUnsafe ::
                (MonadIO m, HasCallStack) =>
                  SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOrderX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
getOrderXUnchecked ::
                   (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getOrderX (self)))
 
foreign import javascript unsafe "$1[\"orderY\"]" js_getOrderY ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderY ::
          (MonadIO m) =>
            SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getOrderY self = liftIO (nullableToMaybe <$> (js_getOrderY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderYUnsafe ::
                (MonadIO m, HasCallStack) =>
                  SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOrderY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
getOrderYUnchecked ::
                   (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getOrderYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getOrderY (self)))
 
foreign import javascript unsafe "$1[\"kernelMatrix\"]"
        js_getKernelMatrix ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrix ::
                (MonadIO m) =>
                  SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumberList)
getKernelMatrix self
  = liftIO (nullableToMaybe <$> (js_getKernelMatrix (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrixUnsafe ::
                      (MonadIO m, HasCallStack) =>
                        SVGFEConvolveMatrixElement -> m SVGAnimatedNumberList
getKernelMatrixUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getKernelMatrix (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
getKernelMatrixUnchecked ::
                         (MonadIO m) =>
                           SVGFEConvolveMatrixElement -> m SVGAnimatedNumberList
getKernelMatrixUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getKernelMatrix (self)))
 
foreign import javascript unsafe "$1[\"divisor\"]" js_getDivisor ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisor ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getDivisor self
  = liftIO (nullableToMaybe <$> (js_getDivisor (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisorUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getDivisorUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDivisor (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
getDivisorUnchecked ::
                    (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getDivisorUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getDivisor (self)))
 
foreign import javascript unsafe "$1[\"bias\"]" js_getBias ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBias ::
        (MonadIO m) =>
          SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getBias self = liftIO (nullableToMaybe <$> (js_getBias (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBiasUnsafe ::
              (MonadIO m, HasCallStack) =>
                SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getBiasUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBias (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
getBiasUnchecked ::
                 (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getBiasUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBias (self)))
 
foreign import javascript unsafe "$1[\"targetX\"]" js_getTargetX ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetX ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetX self
  = liftIO (nullableToMaybe <$> (js_getTargetX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetXUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTargetX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
getTargetXUnchecked ::
                    (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTargetX (self)))
 
foreign import javascript unsafe "$1[\"targetY\"]" js_getTargetY ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetY ::
           (MonadIO m) =>
             SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedInteger)
getTargetY self
  = liftIO (nullableToMaybe <$> (js_getTargetY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetYUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTargetY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
getTargetYUnchecked ::
                    (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedInteger
getTargetYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTargetY (self)))
 
foreign import javascript unsafe "$1[\"edgeMode\"]" js_getEdgeMode
        ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeMode ::
            (MonadIO m) =>
              SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedEnumeration)
getEdgeMode self
  = liftIO (nullableToMaybe <$> (js_getEdgeMode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeModeUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    SVGFEConvolveMatrixElement -> m SVGAnimatedEnumeration
getEdgeModeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getEdgeMode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
getEdgeModeUnchecked ::
                     (MonadIO m) =>
                       SVGFEConvolveMatrixElement -> m SVGAnimatedEnumeration
getEdgeModeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getEdgeMode (self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        js_getKernelUnitLengthX ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadIO m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthX self
  = liftIO (nullableToMaybe <$> (js_getKernelUnitLengthX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthXUnsafe ::
                           (MonadIO m, HasCallStack) =>
                             SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getKernelUnitLengthX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
getKernelUnitLengthXUnchecked ::
                              (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthXUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getKernelUnitLengthX (self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        js_getKernelUnitLengthY ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadIO m) =>
                       SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthY self
  = liftIO (nullableToMaybe <$> (js_getKernelUnitLengthY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthYUnsafe ::
                           (MonadIO m, HasCallStack) =>
                             SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getKernelUnitLengthY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
getKernelUnitLengthYUnchecked ::
                              (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getKernelUnitLengthY (self)))
 
foreign import javascript unsafe "$1[\"preserveAlpha\"]"
        js_getPreserveAlpha ::
        SVGFEConvolveMatrixElement -> IO (Nullable SVGAnimatedBoolean)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlpha ::
                 (MonadIO m) =>
                   SVGFEConvolveMatrixElement -> m (Maybe SVGAnimatedBoolean)
getPreserveAlpha self
  = liftIO (nullableToMaybe <$> (js_getPreserveAlpha (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlphaUnsafe ::
                       (MonadIO m, HasCallStack) =>
                         SVGFEConvolveMatrixElement -> m SVGAnimatedBoolean
getPreserveAlphaUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPreserveAlpha (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
getPreserveAlphaUnchecked ::
                          (MonadIO m) => SVGFEConvolveMatrixElement -> m SVGAnimatedBoolean
getPreserveAlphaUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPreserveAlpha (self)))