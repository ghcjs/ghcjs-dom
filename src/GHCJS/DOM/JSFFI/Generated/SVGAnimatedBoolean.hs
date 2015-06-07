{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedBoolean
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedBoolean,
        castToSVGAnimatedBoolean, gTypeSVGAnimatedBoolean)
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
        js_setBaseVal :: JSRef SVGAnimatedBoolean -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.baseVal Mozilla SVGAnimatedBoolean.baseVal documentation> 
setBaseVal :: (MonadIO m) => SVGAnimatedBoolean -> Bool -> m ()
setBaseVal self val
  = liftIO (js_setBaseVal (unSVGAnimatedBoolean self) val)
 
foreign import javascript unsafe "($1[\"baseVal\"] ? 1 : 0)"
        js_getBaseVal :: JSRef SVGAnimatedBoolean -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.baseVal Mozilla SVGAnimatedBoolean.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedBoolean -> m Bool
getBaseVal self
  = liftIO (js_getBaseVal (unSVGAnimatedBoolean self))
 
foreign import javascript unsafe "($1[\"animVal\"] ? 1 : 0)"
        js_getAnimVal :: JSRef SVGAnimatedBoolean -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.animVal Mozilla SVGAnimatedBoolean.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedBoolean -> m Bool
getAnimVal self
  = liftIO (js_getAnimVal (unSVGAnimatedBoolean self))