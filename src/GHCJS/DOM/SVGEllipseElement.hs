{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGEllipseElement
       (js_getCx, getCx, js_getCy, getCy, js_getRx, getRx, js_getRy,
        getRy, SVGEllipseElement, castToSVGEllipseElement,
        gTypeSVGEllipseElement)
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

 
foreign import javascript unsafe "$1[\"cx\"]" js_getCx ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCx ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCx self
  = liftIO ((js_getCx (unSVGEllipseElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCy ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCy self
  = liftIO ((js_getCy (unSVGEllipseElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rx\"]" js_getRx ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRx ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRx self
  = liftIO ((js_getRx (unSVGEllipseElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"ry\"]" js_getRy ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRy ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRy self
  = liftIO ((js_getRy (unSVGEllipseElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGEllipseElement (
  ) where
#endif
