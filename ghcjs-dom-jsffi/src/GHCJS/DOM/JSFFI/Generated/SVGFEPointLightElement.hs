{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEPointLightElement
       (js_getX, getX, js_getY, getY, js_getZ, getZ,
        SVGFEPointLightElement, castToSVGFEPointLightElement,
        gTypeSVGFEPointLightElement)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFEPointLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.x Mozilla SVGFEPointLightElement.x documentation> 
getX ::
     (MonadIO m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGFEPointLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.y Mozilla SVGFEPointLightElement.y documentation> 
getY ::
     (MonadIO m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"z\"]" js_getZ ::
        SVGFEPointLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement.z Mozilla SVGFEPointLightElement.z documentation> 
getZ ::
     (MonadIO m) =>
       SVGFEPointLightElement -> m (Maybe SVGAnimatedNumber)
getZ self = liftIO (nullableToMaybe <$> (js_getZ (self)))