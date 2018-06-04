{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCSessionDescription
       (js_newRTCSessionDescription, newRTCSessionDescription, js_getType,
        getType, js_getSdp, getSdp, RTCSessionDescription(..),
        gTypeRTCSessionDescription)
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
 
foreign import javascript unsafe
        "new window[\"RTCSessionDescription\"]($1)"
        js_newRTCSessionDescription ::
        RTCSessionDescriptionInit -> IO RTCSessionDescription

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation> 
newRTCSessionDescription ::
                         (MonadIO m) => RTCSessionDescriptionInit -> m RTCSessionDescription
newRTCSessionDescription descriptionInitDict
  = liftIO (js_newRTCSessionDescription descriptionInitDict)
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        RTCSessionDescription -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.type Mozilla RTCSessionDescription.type documentation> 
getType :: (MonadIO m) => RTCSessionDescription -> m RTCSdpType
getType self = liftIO ((js_getType self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"sdp\"]" js_getSdp ::
        RTCSessionDescription -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
getSdp ::
       (MonadIO m, FromJSString result) =>
         RTCSessionDescription -> m result
getSdp self = liftIO (fromJSString <$> (js_getSdp self))