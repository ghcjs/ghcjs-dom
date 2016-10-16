{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFitToViewBox
       (js_getViewBox, getViewBox, getViewBoxUnsafe, getViewBoxUnchecked,
        js_getPreserveAspectRatio, getPreserveAspectRatio,
        getPreserveAspectRatioUnsafe, getPreserveAspectRatioUnchecked,
        SVGFitToViewBox(..), gTypeSVGFitToViewBox)
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
 
foreign import javascript unsafe "$1[\"viewBox\"]" js_getViewBox ::
        SVGFitToViewBox -> IO (Nullable SVGAnimatedRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
getViewBox ::
           (MonadIO m) => SVGFitToViewBox -> m (Maybe SVGAnimatedRect)
getViewBox self
  = liftIO (nullableToMaybe <$> (js_getViewBox (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
getViewBoxUnsafe ::
                 (MonadIO m, HasCallStack) => SVGFitToViewBox -> m SVGAnimatedRect
getViewBoxUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getViewBox (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
getViewBoxUnchecked ::
                    (MonadIO m) => SVGFitToViewBox -> m SVGAnimatedRect
getViewBoxUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getViewBox (self)))
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        js_getPreserveAspectRatio ::
        SVGFitToViewBox -> IO (Nullable SVGAnimatedPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadIO m) =>
                         SVGFitToViewBox -> m (Maybe SVGAnimatedPreserveAspectRatio)
getPreserveAspectRatio self
  = liftIO (nullableToMaybe <$> (js_getPreserveAspectRatio (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatioUnsafe ::
                             (MonadIO m, HasCallStack) =>
                               SVGFitToViewBox -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatioUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPreserveAspectRatio (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatioUnchecked ::
                                (MonadIO m) => SVGFitToViewBox -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatioUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPreserveAspectRatio (self)))