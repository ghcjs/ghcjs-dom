{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDiffuseLightingElement
       (js_getIn1, getIn1, js_getSurfaceScale, getSurfaceScale,
        js_getDiffuseConstant, getDiffuseConstant, js_getKernelUnitLengthX,
        getKernelUnitLengthX, js_getKernelUnitLengthY,
        getKernelUnitLengthY, SVGFEDiffuseLightingElement,
        castToSVGFEDiffuseLightingElement,
        gTypeSVGFEDiffuseLightingElement)
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
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        js_getSurfaceScale ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.surfaceScale Mozilla SVGFEDiffuseLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadIO m) =>
                  SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getSurfaceScale self
  = liftIO (nullableToMaybe <$> (js_getSurfaceScale (self)))
 
foreign import javascript unsafe "$1[\"diffuseConstant\"]"
        js_getDiffuseConstant ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.diffuseConstant Mozilla SVGFEDiffuseLightingElement.diffuseConstant documentation> 
getDiffuseConstant ::
                   (MonadIO m) =>
                     SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getDiffuseConstant self
  = liftIO (nullableToMaybe <$> (js_getDiffuseConstant (self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        js_getKernelUnitLengthX ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthX Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthX documentation> 
getKernelUnitLengthX ::
                     (MonadIO m) =>
                       SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthX self
  = liftIO (nullableToMaybe <$> (js_getKernelUnitLengthX (self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        js_getKernelUnitLengthY ::
        SVGFEDiffuseLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthY Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthY documentation> 
getKernelUnitLengthY ::
                     (MonadIO m) =>
                       SVGFEDiffuseLightingElement -> m (Maybe SVGAnimatedNumber)
getKernelUnitLengthY self
  = liftIO (nullableToMaybe <$> (js_getKernelUnitLengthY (self)))