{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGImageElement
       (js_getX, getX, getXUnchecked, js_getY, getY, getYUnchecked,
        js_getWidth, getWidth, getWidthUnchecked, js_getHeight, getHeight,
        getHeightUnchecked, js_getPreserveAspectRatio,
        getPreserveAspectRatio, getPreserveAspectRatioUnchecked,
        SVGImageElement(..), gTypeSVGImageElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGImageElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.x Mozilla SVGImageElement.x documentation> 
getX ::
     (MonadIO m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.x Mozilla SVGImageElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGImageElement -> m SVGAnimatedLength
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGImageElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.y Mozilla SVGImageElement.y documentation> 
getY ::
     (MonadIO m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.y Mozilla SVGImageElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGImageElement -> m SVGAnimatedLength
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGImageElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.width Mozilla SVGImageElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.width Mozilla SVGImageElement.width documentation> 
getWidthUnchecked ::
                  (MonadIO m) => SVGImageElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGImageElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.height Mozilla SVGImageElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.height Mozilla SVGImageElement.height documentation> 
getHeightUnchecked ::
                   (MonadIO m) => SVGImageElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        js_getPreserveAspectRatio ::
        SVGImageElement -> IO (Nullable SVGAnimatedPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.preserveAspectRatio Mozilla SVGImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadIO m) =>
                         SVGImageElement -> m (Maybe SVGAnimatedPreserveAspectRatio)
getPreserveAspectRatio self
  = liftIO (nullableToMaybe <$> (js_getPreserveAspectRatio (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.preserveAspectRatio Mozilla SVGImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatioUnchecked ::
                                (MonadIO m) => SVGImageElement -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatioUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPreserveAspectRatio (self)))