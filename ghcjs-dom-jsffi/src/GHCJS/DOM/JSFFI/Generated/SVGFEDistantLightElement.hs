{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDistantLightElement
       (js_getAzimuth, getAzimuth, getAzimuthUnsafe, getAzimuthUnchecked,
        js_getElevation, getElevation, getElevationUnsafe,
        getElevationUnchecked, SVGFEDistantLightElement(..),
        gTypeSVGFEDistantLightElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"azimuth\"]" js_getAzimuth ::
        SVGFEDistantLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.azimuth Mozilla SVGFEDistantLightElement.azimuth documentation> 
getAzimuth ::
           (MonadIO m) =>
             SVGFEDistantLightElement -> m (Maybe SVGAnimatedNumber)
getAzimuth self
  = liftIO (nullableToMaybe <$> (js_getAzimuth (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.azimuth Mozilla SVGFEDistantLightElement.azimuth documentation> 
getAzimuthUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGFEDistantLightElement -> m SVGAnimatedNumber
getAzimuthUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAzimuth (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.azimuth Mozilla SVGFEDistantLightElement.azimuth documentation> 
getAzimuthUnchecked ::
                    (MonadIO m) => SVGFEDistantLightElement -> m SVGAnimatedNumber
getAzimuthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAzimuth (self)))
 
foreign import javascript unsafe "$1[\"elevation\"]"
        js_getElevation ::
        SVGFEDistantLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.elevation Mozilla SVGFEDistantLightElement.elevation documentation> 
getElevation ::
             (MonadIO m) =>
               SVGFEDistantLightElement -> m (Maybe SVGAnimatedNumber)
getElevation self
  = liftIO (nullableToMaybe <$> (js_getElevation (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.elevation Mozilla SVGFEDistantLightElement.elevation documentation> 
getElevationUnsafe ::
                   (MonadIO m, HasCallStack) =>
                     SVGFEDistantLightElement -> m SVGAnimatedNumber
getElevationUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getElevation (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.elevation Mozilla SVGFEDistantLightElement.elevation documentation> 
getElevationUnchecked ::
                      (MonadIO m) => SVGFEDistantLightElement -> m SVGAnimatedNumber
getElevationUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getElevation (self)))