{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGRectElement
       (js_getX, getX, js_getY, getY, js_getWidth, getWidth, js_getHeight,
        getHeight, js_getRx, getRx, js_getRy, getRy, SVGRectElement,
        castToSVGRectElement, gTypeSVGRectElement)
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
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getX ::
     (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getX self
  = liftIO ((js_getX (unSVGRectElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getY ::
     (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getY self
  = liftIO ((js_getY (unSVGRectElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getWidth self
  = liftIO ((js_getWidth (unSVGRectElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getHeight self
  = liftIO ((js_getHeight (unSVGRectElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rx\"]" js_getRx ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRx ::
      (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getRx self
  = liftIO ((js_getRx (unSVGRectElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"ry\"]" js_getRy ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRy ::
      (MonadIO m) => SVGRectElement -> m (Maybe SVGAnimatedLength)
getRy self
  = liftIO ((js_getRy (unSVGRectElement self)) >>= fromJSRef)