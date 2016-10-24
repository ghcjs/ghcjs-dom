{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGForeignObjectElement
       (js_getX, getX, getXUnsafe, getXUnchecked, js_getY, getY,
        getYUnsafe, getYUnchecked, js_getWidth, getWidth, getWidthUnsafe,
        getWidthUnchecked, js_getHeight, getHeight, getHeightUnsafe,
        getHeightUnchecked, SVGForeignObjectElement(..),
        gTypeSVGForeignObjectElement)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGForeignObjectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.x Mozilla SVGForeignObjectElement.x documentation> 
getX ::
     (MonadIO m) =>
       SVGForeignObjectElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.x Mozilla SVGForeignObjectElement.x documentation> 
getXUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGForeignObjectElement -> m SVGAnimatedLength
getXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.x Mozilla SVGForeignObjectElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGForeignObjectElement -> m SVGAnimatedLength
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGForeignObjectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.y Mozilla SVGForeignObjectElement.y documentation> 
getY ::
     (MonadIO m) =>
       SVGForeignObjectElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.y Mozilla SVGForeignObjectElement.y documentation> 
getYUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGForeignObjectElement -> m SVGAnimatedLength
getYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.y Mozilla SVGForeignObjectElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGForeignObjectElement -> m SVGAnimatedLength
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGForeignObjectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.width Mozilla SVGForeignObjectElement.width documentation> 
getWidth ::
         (MonadIO m) =>
           SVGForeignObjectElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.width Mozilla SVGForeignObjectElement.width documentation> 
getWidthUnsafe ::
               (MonadIO m, HasCallStack) =>
                 SVGForeignObjectElement -> m SVGAnimatedLength
getWidthUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getWidth (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.width Mozilla SVGForeignObjectElement.width documentation> 
getWidthUnchecked ::
                  (MonadIO m) => SVGForeignObjectElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGForeignObjectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.height Mozilla SVGForeignObjectElement.height documentation> 
getHeight ::
          (MonadIO m) =>
            SVGForeignObjectElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.height Mozilla SVGForeignObjectElement.height documentation> 
getHeightUnsafe ::
                (MonadIO m, HasCallStack) =>
                  SVGForeignObjectElement -> m SVGAnimatedLength
getHeightUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getHeight (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.height Mozilla SVGForeignObjectElement.height documentation> 
getHeightUnchecked ::
                   (MonadIO m) => SVGForeignObjectElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHeight (self)))