{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AllVideoCapabilities
       (js_getSourceType, getSourceType, js_getSourceId, getSourceId,
        js_getWidth, getWidth, js_getHeight, getHeight, js_getFrameRate,
        getFrameRate, js_getAspectRatio, getAspectRatio, js_getFacingMode,
        getFacingMode, AllVideoCapabilities, castToAllVideoCapabilities,
        gTypeAllVideoCapabilities)
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
 
foreign import javascript unsafe "$1[\"sourceType\"]"
        js_getSourceType :: AllVideoCapabilities -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.sourceType Mozilla AllVideoCapabilities.sourceType documentation> 
getSourceType ::
              (MonadIO m, FromJSString result) =>
                AllVideoCapabilities -> m [result]
getSourceType self
  = liftIO ((js_getSourceType (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"sourceId\"]" js_getSourceId
        :: AllVideoCapabilities -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.sourceId Mozilla AllVideoCapabilities.sourceId documentation> 
getSourceId ::
            (MonadIO m, FromJSString result) =>
              AllVideoCapabilities -> m [result]
getSourceId self
  = liftIO ((js_getSourceId (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        AllVideoCapabilities -> IO (Nullable CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.width Mozilla AllVideoCapabilities.width documentation> 
getWidth ::
         (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        AllVideoCapabilities -> IO (Nullable CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.height Mozilla AllVideoCapabilities.height documentation> 
getHeight ::
          (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"frameRate\"]"
        js_getFrameRate ::
        AllVideoCapabilities -> IO (Nullable CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.frameRate Mozilla AllVideoCapabilities.frameRate documentation> 
getFrameRate ::
             (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getFrameRate self
  = liftIO (nullableToMaybe <$> (js_getFrameRate (self)))
 
foreign import javascript unsafe "$1[\"aspectRatio\"]"
        js_getAspectRatio ::
        AllVideoCapabilities -> IO (Nullable CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.aspectRatio Mozilla AllVideoCapabilities.aspectRatio documentation> 
getAspectRatio ::
               (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getAspectRatio self
  = liftIO (nullableToMaybe <$> (js_getAspectRatio (self)))
 
foreign import javascript unsafe "$1[\"facingMode\"]"
        js_getFacingMode :: AllVideoCapabilities -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.facingMode Mozilla AllVideoCapabilities.facingMode documentation> 
getFacingMode ::
              (MonadIO m, FromJSString result) =>
                AllVideoCapabilities -> m [result]
getFacingMode self
  = liftIO ((js_getFacingMode (self)) >>= fromJSValUnchecked)