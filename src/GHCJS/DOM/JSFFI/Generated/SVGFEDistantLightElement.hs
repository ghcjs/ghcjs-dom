{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDistantLightElement
       (js_getAzimuth, getAzimuth, js_getElevation, getElevation,
        SVGFEDistantLightElement, castToSVGFEDistantLightElement,
        gTypeSVGFEDistantLightElement)
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
 
foreign import javascript unsafe "$1[\"azimuth\"]" js_getAzimuth ::
        JSRef SVGFEDistantLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.azimuth Mozilla SVGFEDistantLightElement.azimuth documentation> 
getAzimuth ::
           (MonadIO m) =>
             SVGFEDistantLightElement -> m (Maybe SVGAnimatedNumber)
getAzimuth self
  = liftIO
      ((js_getAzimuth (unSVGFEDistantLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"elevation\"]"
        js_getElevation ::
        JSRef SVGFEDistantLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.elevation Mozilla SVGFEDistantLightElement.elevation documentation> 
getElevation ::
             (MonadIO m) =>
               SVGFEDistantLightElement -> m (Maybe SVGAnimatedNumber)
getElevation self
  = liftIO
      ((js_getElevation (unSVGFEDistantLightElement self)) >>= fromJSRef)