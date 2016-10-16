{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.AllVideoCapabilities
       (js_getSourceType, getSourceType, js_getSourceId, getSourceId,
        js_getWidth, getWidth, getWidthUnsafe, getWidthUnchecked,
        js_getHeight, getHeight, getHeightUnsafe, getHeightUnchecked,
        js_getFrameRate, getFrameRate, getFrameRateUnsafe,
        getFrameRateUnchecked, js_getAspectRatio, getAspectRatio,
        getAspectRatioUnsafe, getAspectRatioUnchecked, js_getFacingMode,
        getFacingMode, AllVideoCapabilities(..), gTypeAllVideoCapabilities)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.width Mozilla AllVideoCapabilities.width documentation> 
getWidthUnsafe ::
               (MonadIO m, HasCallStack) =>
                 AllVideoCapabilities -> m CapabilityRange
getWidthUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getWidth (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.width Mozilla AllVideoCapabilities.width documentation> 
getWidthUnchecked ::
                  (MonadIO m) => AllVideoCapabilities -> m CapabilityRange
getWidthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        AllVideoCapabilities -> IO (Nullable CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.height Mozilla AllVideoCapabilities.height documentation> 
getHeight ::
          (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.height Mozilla AllVideoCapabilities.height documentation> 
getHeightUnsafe ::
                (MonadIO m, HasCallStack) =>
                  AllVideoCapabilities -> m CapabilityRange
getHeightUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getHeight (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.height Mozilla AllVideoCapabilities.height documentation> 
getHeightUnchecked ::
                   (MonadIO m) => AllVideoCapabilities -> m CapabilityRange
getHeightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"frameRate\"]"
        js_getFrameRate ::
        AllVideoCapabilities -> IO (Nullable CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.frameRate Mozilla AllVideoCapabilities.frameRate documentation> 
getFrameRate ::
             (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getFrameRate self
  = liftIO (nullableToMaybe <$> (js_getFrameRate (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.frameRate Mozilla AllVideoCapabilities.frameRate documentation> 
getFrameRateUnsafe ::
                   (MonadIO m, HasCallStack) =>
                     AllVideoCapabilities -> m CapabilityRange
getFrameRateUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFrameRate (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.frameRate Mozilla AllVideoCapabilities.frameRate documentation> 
getFrameRateUnchecked ::
                      (MonadIO m) => AllVideoCapabilities -> m CapabilityRange
getFrameRateUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFrameRate (self)))
 
foreign import javascript unsafe "$1[\"aspectRatio\"]"
        js_getAspectRatio ::
        AllVideoCapabilities -> IO (Nullable CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.aspectRatio Mozilla AllVideoCapabilities.aspectRatio documentation> 
getAspectRatio ::
               (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getAspectRatio self
  = liftIO (nullableToMaybe <$> (js_getAspectRatio (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.aspectRatio Mozilla AllVideoCapabilities.aspectRatio documentation> 
getAspectRatioUnsafe ::
                     (MonadIO m, HasCallStack) =>
                       AllVideoCapabilities -> m CapabilityRange
getAspectRatioUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAspectRatio (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.aspectRatio Mozilla AllVideoCapabilities.aspectRatio documentation> 
getAspectRatioUnchecked ::
                        (MonadIO m) => AllVideoCapabilities -> m CapabilityRange
getAspectRatioUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getAspectRatio (self)))
 
foreign import javascript unsafe "$1[\"facingMode\"]"
        js_getFacingMode :: AllVideoCapabilities -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.facingMode Mozilla AllVideoCapabilities.facingMode documentation> 
getFacingMode ::
              (MonadIO m, FromJSString result) =>
                AllVideoCapabilities -> m [result]
getFacingMode self
  = liftIO ((js_getFacingMode (self)) >>= fromJSValUnchecked)