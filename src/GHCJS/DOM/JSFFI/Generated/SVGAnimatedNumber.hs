{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedNumber
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedNumber,
        castToSVGAnimatedNumber, gTypeSVGAnimatedNumber)
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
 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        js_setBaseVal :: JSRef SVGAnimatedNumber -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.baseVal Mozilla SVGAnimatedNumber.baseVal documentation> 
setBaseVal :: (MonadIO m) => SVGAnimatedNumber -> Float -> m ()
setBaseVal self val
  = liftIO (js_setBaseVal (unSVGAnimatedNumber self) val)
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        JSRef SVGAnimatedNumber -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.baseVal Mozilla SVGAnimatedNumber.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedNumber -> m Float
getBaseVal self = liftIO (js_getBaseVal (unSVGAnimatedNumber self))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        JSRef SVGAnimatedNumber -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.animVal Mozilla SVGAnimatedNumber.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedNumber -> m Float
getAnimVal self = liftIO (js_getAnimVal (unSVGAnimatedNumber self))