{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedEnumeration
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedEnumeration,
        castToSVGAnimatedEnumeration, gTypeSVGAnimatedEnumeration)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        js_setBaseVal :: SVGAnimatedEnumeration -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.baseVal Mozilla SVGAnimatedEnumeration.baseVal documentation> 
setBaseVal :: (MonadIO m) => SVGAnimatedEnumeration -> Word -> m ()
setBaseVal self val = liftIO (js_setBaseVal (self) val)
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        SVGAnimatedEnumeration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.baseVal Mozilla SVGAnimatedEnumeration.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedEnumeration -> m Word
getBaseVal self = liftIO (js_getBaseVal (self))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedEnumeration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.animVal Mozilla SVGAnimatedEnumeration.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedEnumeration -> m Word
getAnimVal self = liftIO (js_getAnimVal (self))