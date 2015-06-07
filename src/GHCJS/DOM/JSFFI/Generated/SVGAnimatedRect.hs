{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedRect
       (js_getBaseVal, getBaseVal, js_getAnimVal, getAnimVal,
        SVGAnimatedRect, castToSVGAnimatedRect, gTypeSVGAnimatedRect)
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
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        JSRef SVGAnimatedRect -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect.baseVal Mozilla SVGAnimatedRect.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedRect -> m (Maybe SVGRect)
getBaseVal self
  = liftIO ((js_getBaseVal (unSVGAnimatedRect self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        JSRef SVGAnimatedRect -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect.animVal Mozilla SVGAnimatedRect.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedRect -> m (Maybe SVGRect)
getAnimVal self
  = liftIO ((js_getAnimVal (unSVGAnimatedRect self)) >>= fromJSRef)