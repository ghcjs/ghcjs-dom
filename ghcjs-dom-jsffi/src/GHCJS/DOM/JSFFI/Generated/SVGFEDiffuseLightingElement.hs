{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDiffuseLightingElement
       (js_getIn1, getIn1, getIn1Unsafe, getIn1Unchecked,
        js_getSurfaceScale, getSurfaceScale, getSurfaceScaleUnsafe,
        getSurfaceScaleUnchecked, js_getDiffuseConstant,
        getDiffuseConstant, getDiffuseConstantUnsafe,
        getDiffuseConstantUnchecked, js_getKernelUnitLengthX,
        getKernelUnitLengthX, getKernelUnitLengthXUnsafe,
        getKernelUnitLengthXUnchecked, js_getKernelUnitLengthY,
        getKernelUnitLengthY, getKernelUnitLengthYUnsafe,
        getKernelUnitLengthYUnchecked, SVGFEDiffuseLightingElement(..),
        gTypeSVGFEDiffuseLightingElement)
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
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
getIn1Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFEDiffuseLightingElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFEDiffuseLightingElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        js_getSurfaceScale ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.surfaceScale Mozilla SVGFEDiffuseLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadIO m) =>
                  SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getSurfaceScale self
  = liftIO (nullableToMaybe <$> (js_getSurfaceScale (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.surfaceScale Mozilla SVGFEDiffuseLightingElement.surfaceScale documentation> 
getSurfaceScaleUnsafe ::
                      (MonadIO m, HasCallStack) =>
                        SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getSurfaceScaleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSurfaceScale (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.surfaceScale Mozilla SVGFEDiffuseLightingElement.surfaceScale documentation> 
getSurfaceScaleUnchecked ::
                         (MonadIO m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getSurfaceScaleUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSurfaceScale (self)))
 
foreign import javascript unsafe "$1[\"diffuseConstant\"]"
        js_getDiffuseConstant ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.diffuseConstant Mozilla SVGFEDiffuseLightingElement.diffuseConstant documentation> 
getDiffuseConstant ::
                   (MonadIO m) =>
                     SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getDiffuseConstant self
  = liftIO (nullableToMaybe <$> (js_getDiffuseConstant (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.diffuseConstant Mozilla SVGFEDiffuseLightingElement.diffuseConstant documentation> 
getDiffuseConstantUnsafe ::
                         (MonadIO m, HasCallStack) =>
                           SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getDiffuseConstantUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDiffuseConstant (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.diffuseConstant Mozilla SVGFEDiffuseLightingElement.diffuseConstant documentation> 
getDiffuseConstantUnchecked ::
                            (MonadIO m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getDiffuseConstantUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getDiffuseConstant (self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        js_getKernelUnitLengthX ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthX Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadIO m) =>
                       SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthX self
  = liftIO (nullableToMaybe <$> (js_getKernelUnitLengthX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthX Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthX documentation> 
getKernelUnitLengthXUnsafe ::
                           (MonadIO m, HasCallStack) =>
                             SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getKernelUnitLengthX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthX Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthX documentation> 
getKernelUnitLengthXUnchecked ::
                              (MonadIO m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthXUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getKernelUnitLengthX (self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        js_getKernelUnitLengthY ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthY Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadIO m) =>
                       SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthY self
  = liftIO (nullableToMaybe <$> (js_getKernelUnitLengthY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthY Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthY documentation> 
getKernelUnitLengthYUnsafe ::
                           (MonadIO m, HasCallStack) =>
                             SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getKernelUnitLengthY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthY Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthY documentation> 
getKernelUnitLengthYUnchecked ::
                              (MonadIO m) => SVGFEDiffuseLightingElement -> m SVGAnimatedNumber
getKernelUnitLengthYUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getKernelUnitLengthY (self)))