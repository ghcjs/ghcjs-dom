{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedBoolean
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedBoolean,
        castToSVGAnimatedBoolean, gTypeSVGAnimatedBoolean)
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
#else
module GHCJS.DOM.SVGAnimatedBoolean (
  ) where
#endif
