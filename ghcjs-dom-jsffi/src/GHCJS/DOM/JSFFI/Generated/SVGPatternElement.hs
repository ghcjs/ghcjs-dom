{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPatternElement
       (js_getPatternUnits, getPatternUnits, getPatternUnitsUnchecked,
        js_getPatternContentUnits, getPatternContentUnits,
        getPatternContentUnitsUnchecked, js_getPatternTransform,
        getPatternTransform, getPatternTransformUnchecked, js_getX, getX,
        getXUnchecked, js_getY, getY, getYUnchecked, js_getWidth, getWidth,
        getWidthUnchecked, js_getHeight, getHeight, getHeightUnchecked,
        SVGPatternElement(..), gTypeSVGPatternElement)
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
 
foreign import javascript unsafe "$1[\"patternUnits\"]"
        js_getPatternUnits ::
        SVGPatternElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternUnits Mozilla SVGPatternElement.patternUnits documentation> 
getPatternUnits ::
                (MonadIO m) =>
                  SVGPatternElement -> m (Maybe SVGAnimatedEnumeration)
getPatternUnits self
  = liftIO (nullableToMaybe <$> (js_getPatternUnits (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternUnits Mozilla SVGPatternElement.patternUnits documentation> 
getPatternUnitsUnchecked ::
                         (MonadIO m) => SVGPatternElement -> m SVGAnimatedEnumeration
getPatternUnitsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPatternUnits (self)))
 
foreign import javascript unsafe "$1[\"patternContentUnits\"]"
        js_getPatternContentUnits ::
        SVGPatternElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternContentUnits Mozilla SVGPatternElement.patternContentUnits documentation> 
getPatternContentUnits ::
                       (MonadIO m) =>
                         SVGPatternElement -> m (Maybe SVGAnimatedEnumeration)
getPatternContentUnits self
  = liftIO (nullableToMaybe <$> (js_getPatternContentUnits (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternContentUnits Mozilla SVGPatternElement.patternContentUnits documentation> 
getPatternContentUnitsUnchecked ::
                                (MonadIO m) => SVGPatternElement -> m SVGAnimatedEnumeration
getPatternContentUnitsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPatternContentUnits (self)))
 
foreign import javascript unsafe "$1[\"patternTransform\"]"
        js_getPatternTransform ::
        SVGPatternElement -> IO (Nullable SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternTransform Mozilla SVGPatternElement.patternTransform documentation> 
getPatternTransform ::
                    (MonadIO m) =>
                      SVGPatternElement -> m (Maybe SVGAnimatedTransformList)
getPatternTransform self
  = liftIO (nullableToMaybe <$> (js_getPatternTransform (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternTransform Mozilla SVGPatternElement.patternTransform documentation> 
getPatternTransformUnchecked ::
                             (MonadIO m) => SVGPatternElement -> m SVGAnimatedTransformList
getPatternTransformUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPatternTransform (self)))
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGPatternElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.x Mozilla SVGPatternElement.x documentation> 
getX ::
     (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.x Mozilla SVGPatternElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGPatternElement -> m SVGAnimatedLength
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPatternElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.y Mozilla SVGPatternElement.y documentation> 
getY ::
     (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.y Mozilla SVGPatternElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGPatternElement -> m SVGAnimatedLength
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGPatternElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.width Mozilla SVGPatternElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.width Mozilla SVGPatternElement.width documentation> 
getWidthUnchecked ::
                  (MonadIO m) => SVGPatternElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGPatternElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.height Mozilla SVGPatternElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.height Mozilla SVGPatternElement.height documentation> 
getHeightUnchecked ::
                   (MonadIO m) => SVGPatternElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHeight (self)))