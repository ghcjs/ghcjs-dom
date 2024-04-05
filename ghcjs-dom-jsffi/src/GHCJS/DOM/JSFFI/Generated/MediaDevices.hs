{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaDevices
       (js_enumerateDevices, enumerateDevices, enumerateDevices_,
        js_getSupportedConstraints, getSupportedConstraints,
        getSupportedConstraints_, js_getUserMedia, getUserMedia,
        getUserMedia_, devicechange, MediaDevices(..), gTypeMediaDevices)
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
 
foreign import javascript interruptible
        "$1[\"enumerateDevices\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_enumerateDevices :: MediaDevices -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.enumerateDevices Mozilla MediaDevices.enumerateDevices documentation> 
enumerateDevices ::
                 (MonadIO m) => MediaDevices -> m [MediaDeviceInfo]
enumerateDevices self
  = liftIO
      (((js_enumerateDevices self) >>= checkPromiseResult) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.enumerateDevices Mozilla MediaDevices.enumerateDevices documentation> 
enumerateDevices_ :: (MonadIO m) => MediaDevices -> m ()
enumerateDevices_ self = liftIO (void (js_enumerateDevices self))
 
foreign import javascript unsafe
        "$1[\"getSupportedConstraints\"]()" js_getSupportedConstraints ::
        MediaDevices -> IO MediaTrackSupportedConstraints

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.getSupportedConstraints Mozilla MediaDevices.getSupportedConstraints documentation> 
getSupportedConstraints ::
                        (MonadIO m) => MediaDevices -> m MediaTrackSupportedConstraints
getSupportedConstraints self
  = liftIO (js_getSupportedConstraints self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.getSupportedConstraints Mozilla MediaDevices.getSupportedConstraints documentation> 
getSupportedConstraints_ :: (MonadIO m) => MediaDevices -> m ()
getSupportedConstraints_ self
  = liftIO (void (js_getSupportedConstraints self))
 
foreign import javascript interruptible
        "$1[\"getUserMedia\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getUserMedia ::
        MediaDevices ->
          Optional MediaStreamConstraints -> IO (JSVal, MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.getUserMedia Mozilla MediaDevices.getUserMedia documentation> 
getUserMedia ::
             (MonadIO m) =>
               MediaDevices -> Maybe MediaStreamConstraints -> m MediaStream
getUserMedia self constraints
  = liftIO
      ((js_getUserMedia self (maybeToOptional constraints)) >>=
         checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.getUserMedia Mozilla MediaDevices.getUserMedia documentation> 
getUserMedia_ ::
              (MonadIO m) => MediaDevices -> Maybe MediaStreamConstraints -> m ()
getUserMedia_ self constraints
  = liftIO
      (void (js_getUserMedia self (maybeToOptional constraints)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.ondevicechange Mozilla MediaDevices.ondevicechange documentation> 
devicechange :: EventName MediaDevices ondevicechange
devicechange = unsafeEventName (toJSString "devicechange")