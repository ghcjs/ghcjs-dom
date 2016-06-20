{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedInteger
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedInteger,
        castToSVGAnimatedInteger, gTypeSVGAnimatedInteger)
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
        js_setBaseVal :: SVGAnimatedInteger -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.baseVal Mozilla SVGAnimatedInteger.baseVal documentation> 
setBaseVal :: (MonadIO m) => SVGAnimatedInteger -> Int -> m ()
setBaseVal self val = liftIO (js_setBaseVal (self) val)
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        SVGAnimatedInteger -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.baseVal Mozilla SVGAnimatedInteger.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedInteger -> m Int
getBaseVal self = liftIO (js_getBaseVal (self))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedInteger -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.animVal Mozilla SVGAnimatedInteger.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedInteger -> m Int
getAnimVal self = liftIO (js_getAnimVal (self))