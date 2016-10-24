{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGRectElement
       (js_getX, getX, getXUnsafe, getXUnchecked, js_getY, getY,
        getYUnsafe, getYUnchecked, js_getWidth, getWidth, getWidthUnsafe,
        getWidthUnchecked, js_getHeight, getHeight, getHeightUnsafe,
        getHeightUnchecked, js_getRx, getRx, getRxUnsafe, getRxUnchecked,
        js_getRy, getRy, getRyUnsafe, getRyUnchecked, SVGRectElement(..),
        gTypeSVGRectElement)
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
        SVGRectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getX ::
     (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getXUnsafe ::
           (MonadIO m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGRectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getY ::
     (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getYUnsafe ::
           (MonadIO m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGRectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidthUnsafe ::
               (MonadIO m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getWidthUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getWidth (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidthUnchecked ::
                  (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGRectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeightUnsafe ::
                (MonadIO m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getHeightUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getHeight (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeightUnchecked ::
                   (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"rx\"]" js_getRx ::
        SVGRectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRx ::
      (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getRx self = liftIO (nullableToMaybe <$> (js_getRx (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRxUnsafe ::
            (MonadIO m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getRxUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRx (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRxUnchecked ::
               (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getRxUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRx (self)))
 
foreign import javascript unsafe "$1[\"ry\"]" js_getRy ::
        SVGRectElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRy ::
      (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getRy self = liftIO (nullableToMaybe <$> (js_getRy (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRyUnsafe ::
            (MonadIO m, HasCallStack) => SVGRectElement -> m SVGAnimatedLength
getRyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRy (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRyUnchecked ::
               (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getRyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRy (self)))