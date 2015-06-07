{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPatternElement
       (js_getPatternUnits, getPatternUnits, js_getPatternContentUnits,
        getPatternContentUnits, js_getPatternTransform,
        getPatternTransform, js_getX, getX, js_getY, getY, js_getWidth,
        getWidth, js_getHeight, getHeight, SVGPatternElement,
        castToSVGPatternElement, gTypeSVGPatternElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"patternUnits\"]"
        js_getPatternUnits ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternUnits Mozilla SVGPatternElement.patternUnits documentation> 
getPatternUnits ::
                (MonadIO m) =>
                  SVGPatternElement -> m (Maybe SVGAnimatedEnumeration)
getPatternUnits self
  = liftIO
      ((js_getPatternUnits (unSVGPatternElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"patternContentUnits\"]"
        js_getPatternContentUnits ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternContentUnits Mozilla SVGPatternElement.patternContentUnits documentation> 
getPatternContentUnits ::
                       (MonadIO m) =>
                         SVGPatternElement -> m (Maybe SVGAnimatedEnumeration)
getPatternContentUnits self
  = liftIO
      ((js_getPatternContentUnits (unSVGPatternElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"patternTransform\"]"
        js_getPatternTransform ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternTransform Mozilla SVGPatternElement.patternTransform documentation> 
getPatternTransform ::
                    (MonadIO m) =>
                      SVGPatternElement -> m (Maybe SVGAnimatedTransformList)
getPatternTransform self
  = liftIO
      ((js_getPatternTransform (unSVGPatternElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.x Mozilla SVGPatternElement.x documentation> 
getX ::
     (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getX self
  = liftIO ((js_getX (unSVGPatternElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.y Mozilla SVGPatternElement.y documentation> 
getY ::
     (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getY self
  = liftIO ((js_getY (unSVGPatternElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.width Mozilla SVGPatternElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getWidth self
  = liftIO ((js_getWidth (unSVGPatternElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.height Mozilla SVGPatternElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGPatternElement -> m (Maybe SVGAnimatedLength)
getHeight self
  = liftIO ((js_getHeight (unSVGPatternElement self)) >>= fromJSRef)