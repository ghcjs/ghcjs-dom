{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedPreserveAspectRatio
       (js_getBaseVal, getBaseVal, getBaseValUnsafe, getBaseValUnchecked,
        js_getAnimVal, getAnimVal, getAnimValUnsafe, getAnimValUnchecked,
        SVGAnimatedPreserveAspectRatio(..),
        gTypeSVGAnimatedPreserveAspectRatio)
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
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        SVGAnimatedPreserveAspectRatio ->
          IO (Nullable SVGPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.baseVal Mozilla SVGAnimatedPreserveAspectRatio.baseVal documentation> 
getBaseVal ::
           (MonadIO m) =>
             SVGAnimatedPreserveAspectRatio -> m (Maybe SVGPreserveAspectRatio)
getBaseVal self
  = liftIO (nullableToMaybe <$> (js_getBaseVal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.baseVal Mozilla SVGAnimatedPreserveAspectRatio.baseVal documentation> 
getBaseValUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGAnimatedPreserveAspectRatio -> m SVGPreserveAspectRatio
getBaseValUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBaseVal (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.baseVal Mozilla SVGAnimatedPreserveAspectRatio.baseVal documentation> 
getBaseValUnchecked ::
                    (MonadIO m) =>
                      SVGAnimatedPreserveAspectRatio -> m SVGPreserveAspectRatio
getBaseValUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBaseVal (self)))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedPreserveAspectRatio ->
          IO (Nullable SVGPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.animVal Mozilla SVGAnimatedPreserveAspectRatio.animVal documentation> 
getAnimVal ::
           (MonadIO m) =>
             SVGAnimatedPreserveAspectRatio -> m (Maybe SVGPreserveAspectRatio)
getAnimVal self
  = liftIO (nullableToMaybe <$> (js_getAnimVal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.animVal Mozilla SVGAnimatedPreserveAspectRatio.animVal documentation> 
getAnimValUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGAnimatedPreserveAspectRatio -> m SVGPreserveAspectRatio
getAnimValUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAnimVal (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.animVal Mozilla SVGAnimatedPreserveAspectRatio.animVal documentation> 
getAnimValUnchecked ::
                    (MonadIO m) =>
                      SVGAnimatedPreserveAspectRatio -> m SVGPreserveAspectRatio
getAnimValUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAnimVal (self)))