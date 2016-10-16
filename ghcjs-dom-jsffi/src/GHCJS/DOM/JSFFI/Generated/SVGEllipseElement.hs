{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGEllipseElement
       (js_getCx, getCx, getCxUnsafe, getCxUnchecked, js_getCy, getCy,
        getCyUnsafe, getCyUnchecked, js_getRx, getRx, getRxUnsafe,
        getRxUnchecked, js_getRy, getRy, getRyUnsafe, getRyUnchecked,
        SVGEllipseElement(..), gTypeSVGEllipseElement)
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
 
foreign import javascript unsafe "$1[\"cx\"]" js_getCx ::
        SVGEllipseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCx ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCx self = liftIO (nullableToMaybe <$> (js_getCx (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCxUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGEllipseElement -> m SVGAnimatedLength
getCxUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCx (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCxUnchecked ::
               (MonadIO m) => SVGEllipseElement -> m SVGAnimatedLength
getCxUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCx (self)))
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        SVGEllipseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCy ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCy self = liftIO (nullableToMaybe <$> (js_getCy (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCyUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGEllipseElement -> m SVGAnimatedLength
getCyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCy (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCyUnchecked ::
               (MonadIO m) => SVGEllipseElement -> m SVGAnimatedLength
getCyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCy (self)))
 
foreign import javascript unsafe "$1[\"rx\"]" js_getRx ::
        SVGEllipseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRx ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRx self = liftIO (nullableToMaybe <$> (js_getRx (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRxUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGEllipseElement -> m SVGAnimatedLength
getRxUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRx (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRxUnchecked ::
               (MonadIO m) => SVGEllipseElement -> m SVGAnimatedLength
getRxUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRx (self)))
 
foreign import javascript unsafe "$1[\"ry\"]" js_getRy ::
        SVGEllipseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRy ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRy self = liftIO (nullableToMaybe <$> (js_getRy (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRyUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGEllipseElement -> m SVGAnimatedLength
getRyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRy (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRyUnchecked ::
               (MonadIO m) => SVGEllipseElement -> m SVGAnimatedLength
getRyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRy (self)))