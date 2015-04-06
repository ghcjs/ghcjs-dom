{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFilterElement
       (js_setFilterRes, setFilterRes, js_getFilterUnits, getFilterUnits,
        js_getPrimitiveUnits, getPrimitiveUnits, js_getX, getX, js_getY,
        getY, js_getWidth, getWidth, js_getHeight, getHeight,
        js_getFilterResX, getFilterResX, js_getFilterResY, getFilterResY,
        SVGFilterElement, castToSVGFilterElement, gTypeSVGFilterElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"setFilterRes\"]($2, $3)"
        js_setFilterRes :: JSRef SVGFilterElement -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.setFilterRes Mozilla SVGFilterElement.setFilterRes documentation> 
setFilterRes ::
             (MonadIO m) => SVGFilterElement -> Word -> Word -> m ()
setFilterRes self filterResX filterResY
  = liftIO
      (js_setFilterRes (unSVGFilterElement self) filterResX filterResY)
 
foreign import javascript unsafe "$1[\"filterUnits\"]"
        js_getFilterUnits ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterUnits Mozilla SVGFilterElement.filterUnits documentation> 
getFilterUnits ::
               (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedEnumeration)
getFilterUnits self
  = liftIO
      ((js_getFilterUnits (unSVGFilterElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"primitiveUnits\"]"
        js_getPrimitiveUnits ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.primitiveUnits Mozilla SVGFilterElement.primitiveUnits documentation> 
getPrimitiveUnits ::
                  (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedEnumeration)
getPrimitiveUnits self
  = liftIO
      ((js_getPrimitiveUnits (unSVGFilterElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.x Mozilla SVGFilterElement.x documentation> 
getX ::
     (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getX self
  = liftIO ((js_getX (unSVGFilterElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.y Mozilla SVGFilterElement.y documentation> 
getY ::
     (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getY self
  = liftIO ((js_getY (unSVGFilterElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.width Mozilla SVGFilterElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getWidth self
  = liftIO ((js_getWidth (unSVGFilterElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.height Mozilla SVGFilterElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getHeight self
  = liftIO ((js_getHeight (unSVGFilterElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"filterResX\"]"
        js_getFilterResX ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResX Mozilla SVGFilterElement.filterResX documentation> 
getFilterResX ::
              (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedInteger)
getFilterResX self
  = liftIO
      ((js_getFilterResX (unSVGFilterElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"filterResY\"]"
        js_getFilterResY ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResY Mozilla SVGFilterElement.filterResY documentation> 
getFilterResY ::
              (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedInteger)
getFilterResY self
  = liftIO
      ((js_getFilterResY (unSVGFilterElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGFilterElement (
  ) where
#endif
