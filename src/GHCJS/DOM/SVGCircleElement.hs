{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGCircleElement
       (js_getCx, getCx, js_getCy, getCy, js_getR, getR, SVGCircleElement,
        castToSVGCircleElement, gTypeSVGCircleElement)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"cx\"]" js_getCx ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cx Mozilla SVGCircleElement.cx documentation> 
getCx ::
      (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getCx self
  = liftIO ((js_getCx (unSVGCircleElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cy Mozilla SVGCircleElement.cy documentation> 
getCy ::
      (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getCy self
  = liftIO ((js_getCy (unSVGCircleElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"r\"]" js_getR ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.r Mozilla SVGCircleElement.r documentation> 
getR ::
     (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getR self
  = liftIO ((js_getR (unSVGCircleElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGCircleElement (
  ) where
#endif
