{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedPreserveAspectRatio
       (js_getBaseVal, getBaseVal, js_getAnimVal, getAnimVal,
        SVGAnimatedPreserveAspectRatio,
        castToSVGAnimatedPreserveAspectRatio,
        gTypeSVGAnimatedPreserveAspectRatio)
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
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        JSRef SVGAnimatedPreserveAspectRatio ->
          IO (JSRef SVGPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.baseVal Mozilla SVGAnimatedPreserveAspectRatio.baseVal documentation> 
getBaseVal ::
           (MonadIO m) =>
             SVGAnimatedPreserveAspectRatio -> m (Maybe SVGPreserveAspectRatio)
getBaseVal self
  = liftIO
      ((js_getBaseVal (unSVGAnimatedPreserveAspectRatio self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        JSRef SVGAnimatedPreserveAspectRatio ->
          IO (JSRef SVGPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.animVal Mozilla SVGAnimatedPreserveAspectRatio.animVal documentation> 
getAnimVal ::
           (MonadIO m) =>
             SVGAnimatedPreserveAspectRatio -> m (Maybe SVGPreserveAspectRatio)
getAnimVal self
  = liftIO
      ((js_getAnimVal (unSVGAnimatedPreserveAspectRatio self)) >>=
         fromJSRef)