{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPatternElement
       (js_getPatternUnits, getPatternUnits, js_getPatternContentUnits,
        getPatternContentUnits, js_getPatternTransform,
        getPatternTransform, js_getX, getX, js_getY, getY, js_getWidth,
        getWidth, js_getHeight, getHeight, SVGPatternElement,
        castToSVGPatternElement, gTypeSVGPatternElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"patternUnits\"]"
        js_getPatternUnits ::
        SVGPatternElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternUnits Mozilla SVGPatternElement.patternUnits documentation> 
getPatternUnits ::
                (MonadIO m) =>
                  SVGPatternElement -> m (Maybe SVGAnimatedEnumeration)
getPatternUnits self
  = liftIO (nullableToMaybe <$> (js_getPatternUnits (self)))
 
foreign import javascript unsafe "$1[\"patternContentUnits\"]"
        js_getPatternContentUnits ::
        SVGPatternElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternContentUnits Mozilla SVGPatternElement.patternContentUnits documentation> 
getPatternContentUnits ::
                       (MonadIO m) =>
                         SVGPatternElement -> m (Maybe SVGAnimatedEnumeration)
getPatternContentUnits self
  = liftIO (nullableToMaybe <$> (js_getPatternContentUnits (self)))
 
foreign import javascript unsafe "$1[\"patternTransform\"]"
        js_getPatternTransform ::
        SVGPatternElement -> IO (Nullable SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternTransform Mozilla SVGPatternElement.patternTransform documentation> 
getPatternTransform ::
                    (MonadIO m) =>
                      SVGPatternElement -> m (Maybe SVGAnimatedTransformList)
getPatternTransform self
  = liftIO (nullableToMaybe <$> (js_getPatternTransform (self)))
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGPatternElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.x Mozilla SVGPatternElement.x documentation> 
getX ::
     (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPatternElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.y Mozilla SVGPatternElement.y documentation> 
getY ::
     (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGPatternElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.width Mozilla SVGPatternElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGPatternElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.height Mozilla SVGPatternElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))