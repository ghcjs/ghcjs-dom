{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGGradientElement
       (pattern SVG_SPREADMETHOD_UNKNOWN, pattern SVG_SPREADMETHOD_PAD,
        pattern SVG_SPREADMETHOD_REFLECT, pattern SVG_SPREADMETHOD_REPEAT,
        js_getGradientUnits, getGradientUnits, js_getGradientTransform,
        getGradientTransform, js_getSpreadMethod, getSpreadMethod,
        SVGGradientElement, castToSVGGradientElement,
        gTypeSVGGradientElement, IsSVGGradientElement,
        toSVGGradientElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
pattern SVG_SPREADMETHOD_UNKNOWN = 0
pattern SVG_SPREADMETHOD_PAD = 1
pattern SVG_SPREADMETHOD_REFLECT = 2
pattern SVG_SPREADMETHOD_REPEAT = 3
 
foreign import javascript unsafe "$1[\"gradientUnits\"]"
        js_getGradientUnits ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientUnits Mozilla SVGGradientElement.gradientUnits documentation> 
getGradientUnits ::
                 (MonadIO m, IsSVGGradientElement self) =>
                   self -> m (Maybe SVGAnimatedEnumeration)
getGradientUnits self
  = liftIO
      ((js_getGradientUnits
          (unSVGGradientElement (toSVGGradientElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"gradientTransform\"]"
        js_getGradientTransform ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientTransform Mozilla SVGGradientElement.gradientTransform documentation> 
getGradientTransform ::
                     (MonadIO m, IsSVGGradientElement self) =>
                       self -> m (Maybe SVGAnimatedTransformList)
getGradientTransform self
  = liftIO
      ((js_getGradientTransform
          (unSVGGradientElement (toSVGGradientElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"spreadMethod\"]"
        js_getSpreadMethod ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.spreadMethod Mozilla SVGGradientElement.spreadMethod documentation> 
getSpreadMethod ::
                (MonadIO m, IsSVGGradientElement self) =>
                  self -> m (Maybe SVGAnimatedEnumeration)
getSpreadMethod self
  = liftIO
      ((js_getSpreadMethod
          (unSVGGradientElement (toSVGGradientElement self)))
         >>= fromJSRef)