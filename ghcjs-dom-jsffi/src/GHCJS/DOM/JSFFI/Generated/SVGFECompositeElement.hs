{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFECompositeElement
       (pattern SVG_FECOMPOSITE_OPERATOR_UNKNOWN,
        pattern SVG_FECOMPOSITE_OPERATOR_OVER,
        pattern SVG_FECOMPOSITE_OPERATOR_IN,
        pattern SVG_FECOMPOSITE_OPERATOR_OUT,
        pattern SVG_FECOMPOSITE_OPERATOR_ATOP,
        pattern SVG_FECOMPOSITE_OPERATOR_XOR,
        pattern SVG_FECOMPOSITE_OPERATOR_ARITHMETIC, js_getIn1, getIn1,
        getIn1Unsafe, getIn1Unchecked, js_getIn2, getIn2, getIn2Unsafe,
        getIn2Unchecked, js_getOperator, getOperator, getOperatorUnsafe,
        getOperatorUnchecked, js_getK1, getK1, getK1Unsafe, getK1Unchecked,
        js_getK2, getK2, getK2Unsafe, getK2Unchecked, js_getK3, getK3,
        getK3Unsafe, getK3Unchecked, js_getK4, getK4, getK4Unsafe,
        getK4Unchecked, SVGFECompositeElement(..),
        gTypeSVGFECompositeElement)
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
pattern SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0
pattern SVG_FECOMPOSITE_OPERATOR_OVER = 1
pattern SVG_FECOMPOSITE_OPERATOR_IN = 2
pattern SVG_FECOMPOSITE_OPERATOR_OUT = 3
pattern SVG_FECOMPOSITE_OPERATOR_ATOP = 4
pattern SVG_FECOMPOSITE_OPERATOR_XOR = 5
pattern SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in1 Mozilla SVGFECompositeElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in1 Mozilla SVGFECompositeElement.in1 documentation> 
getIn1Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFECompositeElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in1 Mozilla SVGFECompositeElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"in2\"]" js_getIn2 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in2 Mozilla SVGFECompositeElement.in2 documentation> 
getIn2 ::
       (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedString)
getIn2 self = liftIO (nullableToMaybe <$> (js_getIn2 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in2 Mozilla SVGFECompositeElement.in2 documentation> 
getIn2Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFECompositeElement -> m SVGAnimatedString
getIn2Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn2 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in2 Mozilla SVGFECompositeElement.in2 documentation> 
getIn2Unchecked ::
                (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedString
getIn2Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn2 (self)))
 
foreign import javascript unsafe "$1[\"operator\"]" js_getOperator
        :: SVGFECompositeElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.operator Mozilla SVGFECompositeElement.operator documentation> 
getOperator ::
            (MonadIO m) =>
              SVGFECompositeElement -> m (Maybe SVGAnimatedEnumeration)
getOperator self
  = liftIO (nullableToMaybe <$> (js_getOperator (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.operator Mozilla SVGFECompositeElement.operator documentation> 
getOperatorUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    SVGFECompositeElement -> m SVGAnimatedEnumeration
getOperatorUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOperator (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.operator Mozilla SVGFECompositeElement.operator documentation> 
getOperatorUnchecked ::
                     (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedEnumeration
getOperatorUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getOperator (self)))
 
foreign import javascript unsafe "$1[\"k1\"]" js_getK1 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k1 Mozilla SVGFECompositeElement.k1 documentation> 
getK1 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK1 self = liftIO (nullableToMaybe <$> (js_getK1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k1 Mozilla SVGFECompositeElement.k1 documentation> 
getK1Unsafe ::
            (MonadIO m, HasCallStack) =>
              SVGFECompositeElement -> m SVGAnimatedNumber
getK1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getK1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k1 Mozilla SVGFECompositeElement.k1 documentation> 
getK1Unchecked ::
               (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getK1 (self)))
 
foreign import javascript unsafe "$1[\"k2\"]" js_getK2 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k2 Mozilla SVGFECompositeElement.k2 documentation> 
getK2 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK2 self = liftIO (nullableToMaybe <$> (js_getK2 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k2 Mozilla SVGFECompositeElement.k2 documentation> 
getK2Unsafe ::
            (MonadIO m, HasCallStack) =>
              SVGFECompositeElement -> m SVGAnimatedNumber
getK2Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getK2 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k2 Mozilla SVGFECompositeElement.k2 documentation> 
getK2Unchecked ::
               (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK2Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getK2 (self)))
 
foreign import javascript unsafe "$1[\"k3\"]" js_getK3 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k3 Mozilla SVGFECompositeElement.k3 documentation> 
getK3 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK3 self = liftIO (nullableToMaybe <$> (js_getK3 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k3 Mozilla SVGFECompositeElement.k3 documentation> 
getK3Unsafe ::
            (MonadIO m, HasCallStack) =>
              SVGFECompositeElement -> m SVGAnimatedNumber
getK3Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getK3 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k3 Mozilla SVGFECompositeElement.k3 documentation> 
getK3Unchecked ::
               (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK3Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getK3 (self)))
 
foreign import javascript unsafe "$1[\"k4\"]" js_getK4 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k4 Mozilla SVGFECompositeElement.k4 documentation> 
getK4 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK4 self = liftIO (nullableToMaybe <$> (js_getK4 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k4 Mozilla SVGFECompositeElement.k4 documentation> 
getK4Unsafe ::
            (MonadIO m, HasCallStack) =>
              SVGFECompositeElement -> m SVGAnimatedNumber
getK4Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getK4 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k4 Mozilla SVGFECompositeElement.k4 documentation> 
getK4Unchecked ::
               (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK4Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getK4 (self)))