{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPolylineElement
       (js_getPoints, getPoints, js_getAnimatedPoints, getAnimatedPoints,
        SVGPolylineElement, castToSVGPolylineElement,
        gTypeSVGPolylineElement)
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

 
foreign import javascript unsafe "$1[\"points\"]" js_getPoints ::
        JSRef SVGPolylineElement -> IO (JSRef SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement.points Mozilla SVGPolylineElement.points documentation> 
getPoints ::
          (MonadIO m) => SVGPolylineElement -> m (Maybe SVGPointList)
getPoints self
  = liftIO ((js_getPoints (unSVGPolylineElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animatedPoints\"]"
        js_getAnimatedPoints ::
        JSRef SVGPolylineElement -> IO (JSRef SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement.animatedPoints Mozilla SVGPolylineElement.animatedPoints documentation> 
getAnimatedPoints ::
                  (MonadIO m) => SVGPolylineElement -> m (Maybe SVGPointList)
getAnimatedPoints self
  = liftIO
      ((js_getAnimatedPoints (unSVGPolylineElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGPolylineElement (
  ) where
#endif
