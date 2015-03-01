{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AllVideoCapabilities
       (js_getSourceType, getSourceType, js_getSourceId, getSourceId,
        js_getWidth, getWidth, js_getHeight, getHeight, js_getFrameRate,
        getFrameRate, js_getAspectRatio, getAspectRatio, js_getFacingMode,
        getFacingMode, AllVideoCapabilities, castToAllVideoCapabilities,
        gTypeAllVideoCapabilities)
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

 
foreign import javascript unsafe "$1[\"sourceType\"]"
        js_getSourceType ::
        JSRef AllVideoCapabilities -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.sourceType Mozilla AllVideoCapabilities.sourceType documentation> 
getSourceType ::
              (MonadIO m, FromJSString result) =>
                AllVideoCapabilities -> m [result]
getSourceType self
  = liftIO
      ((js_getSourceType (unAllVideoCapabilities self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"sourceId\"]" js_getSourceId
        :: JSRef AllVideoCapabilities -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.sourceId Mozilla AllVideoCapabilities.sourceId documentation> 
getSourceId ::
            (MonadIO m, FromJSString result) =>
              AllVideoCapabilities -> m [result]
getSourceId self
  = liftIO
      ((js_getSourceId (unAllVideoCapabilities self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef AllVideoCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.width Mozilla AllVideoCapabilities.width documentation> 
getWidth ::
         (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getWidth self
  = liftIO
      ((js_getWidth (unAllVideoCapabilities self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef AllVideoCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.height Mozilla AllVideoCapabilities.height documentation> 
getHeight ::
          (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getHeight self
  = liftIO
      ((js_getHeight (unAllVideoCapabilities self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"frameRate\"]"
        js_getFrameRate ::
        JSRef AllVideoCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.frameRate Mozilla AllVideoCapabilities.frameRate documentation> 
getFrameRate ::
             (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getFrameRate self
  = liftIO
      ((js_getFrameRate (unAllVideoCapabilities self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"aspectRatio\"]"
        js_getAspectRatio ::
        JSRef AllVideoCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.aspectRatio Mozilla AllVideoCapabilities.aspectRatio documentation> 
getAspectRatio ::
               (MonadIO m) => AllVideoCapabilities -> m (Maybe CapabilityRange)
getAspectRatio self
  = liftIO
      ((js_getAspectRatio (unAllVideoCapabilities self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"facingMode\"]"
        js_getFacingMode ::
        JSRef AllVideoCapabilities -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.facingMode Mozilla AllVideoCapabilities.facingMode documentation> 
getFacingMode ::
              (MonadIO m, FromJSString result) =>
                AllVideoCapabilities -> m [result]
getFacingMode self
  = liftIO
      ((js_getFacingMode (unAllVideoCapabilities self)) >>=
         fromJSRefUnchecked)
#else
module GHCJS.DOM.AllVideoCapabilities (
  ) where
#endif
