{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGCircleElement
       (js_getCx, getCx, getCxUnsafe, getCxUnchecked, js_getCy, getCy,
        getCyUnsafe, getCyUnchecked, js_getR, getR, getRUnsafe,
        getRUnchecked, SVGCircleElement(..), gTypeSVGCircleElement)
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
        SVGCircleElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cx Mozilla SVGCircleElement.cx documentation> 
getCx ::
      (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getCx self = liftIO (nullableToMaybe <$> (js_getCx (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cx Mozilla SVGCircleElement.cx documentation> 
getCxUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGCircleElement -> m SVGAnimatedLength
getCxUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCx (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cx Mozilla SVGCircleElement.cx documentation> 
getCxUnchecked ::
               (MonadIO m) => SVGCircleElement -> m SVGAnimatedLength
getCxUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCx (self)))
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        SVGCircleElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cy Mozilla SVGCircleElement.cy documentation> 
getCy ::
      (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getCy self = liftIO (nullableToMaybe <$> (js_getCy (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cy Mozilla SVGCircleElement.cy documentation> 
getCyUnsafe ::
            (MonadIO m, HasCallStack) =>
              SVGCircleElement -> m SVGAnimatedLength
getCyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCy (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cy Mozilla SVGCircleElement.cy documentation> 
getCyUnchecked ::
               (MonadIO m) => SVGCircleElement -> m SVGAnimatedLength
getCyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCy (self)))
 
foreign import javascript unsafe "$1[\"r\"]" js_getR ::
        SVGCircleElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.r Mozilla SVGCircleElement.r documentation> 
getR ::
     (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getR self = liftIO (nullableToMaybe <$> (js_getR (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.r Mozilla SVGCircleElement.r documentation> 
getRUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGCircleElement -> m SVGAnimatedLength
getRUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getR (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.r Mozilla SVGCircleElement.r documentation> 
getRUnchecked ::
              (MonadIO m) => SVGCircleElement -> m SVGAnimatedLength
getRUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getR (self)))