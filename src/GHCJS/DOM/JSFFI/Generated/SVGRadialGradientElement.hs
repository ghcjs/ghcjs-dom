{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGRadialGradientElement
       (js_getCx, getCx, js_getCy, getCy, js_getR, getR, js_getFx, getFx,
        js_getFy, getFy, js_getFr, getFr, SVGRadialGradientElement,
        castToSVGRadialGradientElement, gTypeSVGRadialGradientElement)
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
 
foreign import javascript unsafe "$1[\"cx\"]" js_getCx ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cx Mozilla SVGRadialGradientElement.cx documentation> 
getCx ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getCx self
  = liftIO
      ((js_getCx (unSVGRadialGradientElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cy Mozilla SVGRadialGradientElement.cy documentation> 
getCy ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getCy self
  = liftIO
      ((js_getCy (unSVGRadialGradientElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"r\"]" js_getR ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.r Mozilla SVGRadialGradientElement.r documentation> 
getR ::
     (MonadIO m) =>
       SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getR self
  = liftIO
      ((js_getR (unSVGRadialGradientElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"fx\"]" js_getFx ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fx Mozilla SVGRadialGradientElement.fx documentation> 
getFx ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFx self
  = liftIO
      ((js_getFx (unSVGRadialGradientElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"fy\"]" js_getFy ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fy Mozilla SVGRadialGradientElement.fy documentation> 
getFy ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFy self
  = liftIO
      ((js_getFy (unSVGRadialGradientElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"fr\"]" js_getFr ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fr Mozilla SVGRadialGradientElement.fr documentation> 
getFr ::
      (MonadIO m) =>
        SVGRadialGradientElement -> m (Maybe SVGAnimatedLength)
getFr self
  = liftIO
      ((js_getFr (unSVGRadialGradientElement self)) >>= fromJSRef)