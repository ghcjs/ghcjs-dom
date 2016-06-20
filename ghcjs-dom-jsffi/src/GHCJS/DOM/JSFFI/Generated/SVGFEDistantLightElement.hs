{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDistantLightElement
       (js_getAzimuth, getAzimuth, js_getElevation, getElevation,
        SVGFEDistantLightElement, castToSVGFEDistantLightElement,
        gTypeSVGFEDistantLightElement)
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
 
foreign import javascript unsafe "$1[\"azimuth\"]" js_getAzimuth ::
        SVGFEDistantLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.azimuth Mozilla SVGFEDistantLightElement.azimuth documentation> 
getAzimuth ::
           (MonadIO m) =>
             SVGFEDistantLightElement -> m (Maybe SVGAnimatedNumber)
getAzimuth self
  = liftIO (nullableToMaybe <$> (js_getAzimuth (self)))
 
foreign import javascript unsafe "$1[\"elevation\"]"
        js_getElevation ::
        SVGFEDistantLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.elevation Mozilla SVGFEDistantLightElement.elevation documentation> 
getElevation ::
             (MonadIO m) =>
               SVGFEDistantLightElement -> m (Maybe SVGAnimatedNumber)
getElevation self
  = liftIO (nullableToMaybe <$> (js_getElevation (self)))