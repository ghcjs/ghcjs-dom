{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTextPositioningElement
       (js_getX, getX, js_getY, getY, js_getDx, getDx, js_getDy, getDy,
        js_getRotate, getRotate, SVGTextPositioningElement,
        castToSVGTextPositioningElement, gTypeSVGTextPositioningElement,
        IsSVGTextPositioningElement, toSVGTextPositioningElement)
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

 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
getX ::
     (MonadIO m, IsSVGTextPositioningElement self) =>
       self -> m (Maybe SVGAnimatedLengthList)
getX self
  = liftIO
      ((js_getX
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
getY ::
     (MonadIO m, IsSVGTextPositioningElement self) =>
       self -> m (Maybe SVGAnimatedLengthList)
getY self
  = liftIO
      ((js_getY
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"dx\"]" js_getDx ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
getDx ::
      (MonadIO m, IsSVGTextPositioningElement self) =>
        self -> m (Maybe SVGAnimatedLengthList)
getDx self
  = liftIO
      ((js_getDx
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"dy\"]" js_getDy ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
getDy ::
      (MonadIO m, IsSVGTextPositioningElement self) =>
        self -> m (Maybe SVGAnimatedLengthList)
getDy self
  = liftIO
      ((js_getDy
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotate\"]" js_getRotate ::
        JSRef SVGTextPositioningElement -> IO (JSRef SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
getRotate ::
          (MonadIO m, IsSVGTextPositioningElement self) =>
            self -> m (Maybe SVGAnimatedNumberList)
getRotate self
  = liftIO
      ((js_getRotate
          (unSVGTextPositioningElement (toSVGTextPositioningElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGTextPositioningElement (
  ) where
#endif
