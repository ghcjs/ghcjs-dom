{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEGaussianBlurElement
       (js_setStdDeviation, setStdDeviation, pattern SVG_EDGEMODE_UNKNOWN,
        pattern SVG_EDGEMODE_DUPLICATE, pattern SVG_EDGEMODE_WRAP,
        pattern SVG_EDGEMODE_NONE, js_getIn1, getIn1, getIn1Unsafe,
        getIn1Unchecked, js_getStdDeviationX, getStdDeviationX,
        getStdDeviationXUnsafe, getStdDeviationXUnchecked,
        js_getStdDeviationY, getStdDeviationY, getStdDeviationYUnsafe,
        getStdDeviationYUnchecked, js_getEdgeMode, getEdgeMode,
        getEdgeModeUnsafe, getEdgeModeUnchecked,
        SVGFEGaussianBlurElement(..), gTypeSVGFEGaussianBlurElement)
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
 
foreign import javascript unsafe "$1[\"setStdDeviation\"]($2, $3)"
        js_setStdDeviation ::
        SVGFEGaussianBlurElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.setStdDeviation Mozilla SVGFEGaussianBlurElement.setStdDeviation documentation> 
setStdDeviation ::
                (MonadIO m) => SVGFEGaussianBlurElement -> Float -> Float -> m ()
setStdDeviation self stdDeviationX stdDeviationY
  = liftIO (js_setStdDeviation (self) stdDeviationX stdDeviationY)
pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEGaussianBlurElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.in1 Mozilla SVGFEGaussianBlurElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEGaussianBlurElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.in1 Mozilla SVGFEGaussianBlurElement.in1 documentation> 
getIn1Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFEGaussianBlurElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.in1 Mozilla SVGFEGaussianBlurElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFEGaussianBlurElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        js_getStdDeviationX ::
        SVGFEGaussianBlurElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationX Mozilla SVGFEGaussianBlurElement.stdDeviationX documentation> 
getStdDeviationX ::
                 (MonadIO m) =>
                   SVGFEGaussianBlurElement -> m (Maybe SVGAnimatedNumber)
getStdDeviationX self
  = liftIO (nullableToMaybe <$> (js_getStdDeviationX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationX Mozilla SVGFEGaussianBlurElement.stdDeviationX documentation> 
getStdDeviationXUnsafe ::
                       (MonadIO m, HasCallStack) =>
                         SVGFEGaussianBlurElement -> m SVGAnimatedNumber
getStdDeviationXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStdDeviationX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationX Mozilla SVGFEGaussianBlurElement.stdDeviationX documentation> 
getStdDeviationXUnchecked ::
                          (MonadIO m) => SVGFEGaussianBlurElement -> m SVGAnimatedNumber
getStdDeviationXUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getStdDeviationX (self)))
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        js_getStdDeviationY ::
        SVGFEGaussianBlurElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationY Mozilla SVGFEGaussianBlurElement.stdDeviationY documentation> 
getStdDeviationY ::
                 (MonadIO m) =>
                   SVGFEGaussianBlurElement -> m (Maybe SVGAnimatedNumber)
getStdDeviationY self
  = liftIO (nullableToMaybe <$> (js_getStdDeviationY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationY Mozilla SVGFEGaussianBlurElement.stdDeviationY documentation> 
getStdDeviationYUnsafe ::
                       (MonadIO m, HasCallStack) =>
                         SVGFEGaussianBlurElement -> m SVGAnimatedNumber
getStdDeviationYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStdDeviationY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationY Mozilla SVGFEGaussianBlurElement.stdDeviationY documentation> 
getStdDeviationYUnchecked ::
                          (MonadIO m) => SVGFEGaussianBlurElement -> m SVGAnimatedNumber
getStdDeviationYUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getStdDeviationY (self)))
 
foreign import javascript unsafe "$1[\"edgeMode\"]" js_getEdgeMode
        :: SVGFEGaussianBlurElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.edgeMode Mozilla SVGFEGaussianBlurElement.edgeMode documentation> 
getEdgeMode ::
            (MonadIO m) =>
              SVGFEGaussianBlurElement -> m (Maybe SVGAnimatedEnumeration)
getEdgeMode self
  = liftIO (nullableToMaybe <$> (js_getEdgeMode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.edgeMode Mozilla SVGFEGaussianBlurElement.edgeMode documentation> 
getEdgeModeUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    SVGFEGaussianBlurElement -> m SVGAnimatedEnumeration
getEdgeModeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getEdgeMode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.edgeMode Mozilla SVGFEGaussianBlurElement.edgeMode documentation> 
getEdgeModeUnchecked ::
                     (MonadIO m) => SVGFEGaussianBlurElement -> m SVGAnimatedEnumeration
getEdgeModeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getEdgeMode (self)))