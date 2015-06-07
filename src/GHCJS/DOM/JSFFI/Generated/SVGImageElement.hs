{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGImageElement
       (js_getX, getX, js_getY, getY, js_getWidth, getWidth, js_getHeight,
        getHeight, js_getPreserveAspectRatio, getPreserveAspectRatio,
        SVGImageElement, castToSVGImageElement, gTypeSVGImageElement)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.x Mozilla SVGImageElement.x documentation> 
getX ::
     (MonadIO m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getX self
  = liftIO ((js_getX (unSVGImageElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.y Mozilla SVGImageElement.y documentation> 
getY ::
     (MonadIO m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getY self
  = liftIO ((js_getY (unSVGImageElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.width Mozilla SVGImageElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getWidth self
  = liftIO ((js_getWidth (unSVGImageElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.height Mozilla SVGImageElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGImageElement -> m (Maybe SVGAnimatedLength)
getHeight self
  = liftIO ((js_getHeight (unSVGImageElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        js_getPreserveAspectRatio ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.preserveAspectRatio Mozilla SVGImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadIO m) =>
                         SVGImageElement -> m (Maybe SVGAnimatedPreserveAspectRatio)
getPreserveAspectRatio self
  = liftIO
      ((js_getPreserveAspectRatio (unSVGImageElement self)) >>=
         fromJSRef)