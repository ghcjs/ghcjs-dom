{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEPointLightElement
       (js_getX, getX, js_getY, getY, js_getZ, getZ,
        SVGFEPointLightElement, castToSVGFEPointLightElement,
        gTypeSVGFEPointLightElement)
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
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.x Mozilla SVGFEPointLightElement.x documentation> 
getX ::
     (MonadIO m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getX self
  = liftIO ((js_getX (unSVGFEPointLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.y Mozilla SVGFEPointLightElement.y documentation> 
getY ::
     (MonadIO m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getY self
  = liftIO ((js_getY (unSVGFEPointLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"z\"]" js_getZ ::
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.z Mozilla SVGFEPointLightElement.z documentation> 
getZ ::
     (MonadIO m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getZ self
  = liftIO ((js_getZ (unSVGFEPointLightElement self)) >>= fromJSRef)