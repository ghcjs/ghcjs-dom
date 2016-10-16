{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFESpecularLightingElement
       (js_getIn1, getIn1, getIn1Unsafe, getIn1Unchecked,
        js_getSurfaceScale, getSurfaceScale, getSurfaceScaleUnsafe,
        getSurfaceScaleUnchecked, js_getSpecularConstant,
        getSpecularConstant, getSpecularConstantUnsafe,
        getSpecularConstantUnchecked, js_getSpecularExponent,
        getSpecularExponent, getSpecularExponentUnsafe,
        getSpecularExponentUnchecked, SVGFESpecularLightingElement(..),
        gTypeSVGFESpecularLightingElement)
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
        SVGFESpecularLightingElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFESpecularLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFESpecularLightingElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFESpecularLightingElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        js_getSurfaceScale ::
        SVGFESpecularLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadIO m) =>
                  SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSurfaceScale self
  = liftIO (nullableToMaybe <$> (js_getSurfaceScale (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScaleUnsafe ::
                      (MonadIO m, HasCallStack) =>
                        SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSurfaceScaleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSurfaceScale (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScaleUnchecked ::
                         (MonadIO m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSurfaceScaleUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSurfaceScale (self)))
 
foreign import javascript unsafe "$1[\"specularConstant\"]"
        js_getSpecularConstant ::
        SVGFESpecularLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstant ::
                    (MonadIO m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularConstant self
  = liftIO (nullableToMaybe <$> (js_getSpecularConstant (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstantUnsafe ::
                          (MonadIO m, HasCallStack) =>
                            SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularConstantUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSpecularConstant (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstantUnchecked ::
                             (MonadIO m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularConstantUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSpecularConstant (self)))
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        js_getSpecularExponent ::
        SVGFESpecularLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadIO m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftIO (nullableToMaybe <$> (js_getSpecularExponent (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponentUnsafe ::
                          (MonadIO m, HasCallStack) =>
                            SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularExponentUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSpecularExponent (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponentUnchecked ::
                             (MonadIO m) => SVGFESpecularLightingElement -> m SVGAnimatedNumber
getSpecularExponentUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSpecularExponent (self)))