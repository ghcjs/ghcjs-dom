{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedBoolean
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedBoolean(..),
        gTypeSVGAnimatedBoolean)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe "$1[\"baseVal\"] = $2;"
        js_setBaseVal :: SVGAnimatedBoolean -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.baseVal Mozilla SVGAnimatedBoolean.baseVal documentation> 
setBaseVal :: (MonadIO m) => SVGAnimatedBoolean -> Bool -> m ()
setBaseVal self val = liftIO (js_setBaseVal self val)
 
foreign import javascript unsafe "($1[\"baseVal\"] ? 1 : 0)"
        js_getBaseVal :: SVGAnimatedBoolean -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.baseVal Mozilla SVGAnimatedBoolean.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedBoolean -> m Bool
getBaseVal self = liftIO (js_getBaseVal self)
 
foreign import javascript unsafe "($1[\"animVal\"] ? 1 : 0)"
        js_getAnimVal :: SVGAnimatedBoolean -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.animVal Mozilla SVGAnimatedBoolean.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedBoolean -> m Bool
getAnimVal self = liftIO (js_getAnimVal self)