{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGRadialGradientElement
       (js_getCx, getCx, getCxUnsafe, getCxUnchecked, js_getCy, getCy,
        getCyUnsafe, getCyUnchecked, js_getR, getR, getRUnsafe,
        getRUnchecked, js_getFx, getFx, getFxUnsafe, getFxUnchecked,
        js_getFy, getFy, getFyUnsafe, getFyUnchecked, js_getFr, getFr,
        getFrUnsafe, getFrUnchecked, SVGRadialGradientElement(..),
        gTypeSVGRadialGradientElement)
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
        SVGRadialGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cx Mozilla SVGRadialGradientElement.cx documentation> 
getCx ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getCx self = liftIO (nullableToMaybe <$> (js_getCx (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cx Mozilla SVGRadialGradientElement.cx documentation> 
getCxUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGRadialGradientElement -> m SVGAnimatedLength
getCxUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCx (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cx Mozilla SVGRadialGradientElement.cx documentation> 
getCxUnchecked ::
               (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getCxUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCx (self)))
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        SVGRadialGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cy Mozilla SVGRadialGradientElement.cy documentation> 
getCy ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getCy self = liftIO (nullableToMaybe <$> (js_getCy (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cy Mozilla SVGRadialGradientElement.cy documentation> 
getCyUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGRadialGradientElement -> m SVGAnimatedLength
getCyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCy (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cy Mozilla SVGRadialGradientElement.cy documentation> 
getCyUnchecked ::
               (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getCyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCy (self)))
 
foreign import javascript unsafe "$1[\"r\"]" js_getR ::
        SVGRadialGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.r Mozilla SVGRadialGradientElement.r documentation> 
getR ::
     (MonadIO m) =>
       SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getR self = liftIO (nullableToMaybe <$> (js_getR (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.r Mozilla SVGRadialGradientElement.r documentation> 
getRUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGRadialGradientElement -> m SVGAnimatedLength
getRUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getR (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.r Mozilla SVGRadialGradientElement.r documentation> 
getRUnchecked ::
              (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getRUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getR (self)))
 
foreign import javascript unsafe "$1[\"fx\"]" js_getFx ::
        SVGRadialGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fx Mozilla SVGRadialGradientElement.fx documentation> 
getFx ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFx self = liftIO (nullableToMaybe <$> (js_getFx (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fx Mozilla SVGRadialGradientElement.fx documentation> 
getFxUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGRadialGradientElement -> m SVGAnimatedLength
getFxUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFx (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fx Mozilla SVGRadialGradientElement.fx documentation> 
getFxUnchecked ::
               (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFxUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFx (self)))
 
foreign import javascript unsafe "$1[\"fy\"]" js_getFy ::
        SVGRadialGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fy Mozilla SVGRadialGradientElement.fy documentation> 
getFy ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFy self = liftIO (nullableToMaybe <$> (js_getFy (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fy Mozilla SVGRadialGradientElement.fy documentation> 
getFyUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGRadialGradientElement -> m SVGAnimatedLength
getFyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFy (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fy Mozilla SVGRadialGradientElement.fy documentation> 
getFyUnchecked ::
               (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFy (self)))
 
foreign import javascript unsafe "$1[\"fr\"]" js_getFr ::
        SVGRadialGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fr Mozilla SVGRadialGradientElement.fr documentation> 
getFr ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFr self = liftIO (nullableToMaybe <$> (js_getFr (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fr Mozilla SVGRadialGradientElement.fr documentation> 
getFrUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGRadialGradientElement -> m SVGAnimatedLength
getFrUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFr (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fr Mozilla SVGRadialGradientElement.fr documentation> 
getFrUnchecked ::
               (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFrUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFr (self)))