{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEPointLightElement
       (js_getX, getX, js_getY, getY, js_getZ, getZ,
        SVGFEPointLightElement(..), gTypeSVGFEPointLightElement)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFEPointLightElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.x Mozilla SVGFEPointLightElement.x documentation> 
getX ::
     (MonadIO m) => SVGFEPointLightElement -> m SVGAnimatedNumber
getX self = liftIO (js_getX self)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGFEPointLightElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.y Mozilla SVGFEPointLightElement.y documentation> 
getY ::
     (MonadIO m) => SVGFEPointLightElement -> m SVGAnimatedNumber
getY self = liftIO (js_getY self)
 
foreign import javascript unsafe "$1[\"z\"]" js_getZ ::
        SVGFEPointLightElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.z Mozilla SVGFEPointLightElement.z documentation> 
getZ ::
     (MonadIO m) => SVGFEPointLightElement -> m SVGAnimatedNumber
getZ self = liftIO (js_getZ self)