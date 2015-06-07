{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCDataChannelEvent
       (js_getChannel, getChannel, RTCDataChannelEvent,
        castToRTCDataChannelEvent, gTypeRTCDataChannelEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"channel\"]" js_getChannel ::
        JSRef RTCDataChannelEvent -> IO (JSRef RTCDataChannel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent.channel Mozilla RTCDataChannelEvent.channel documentation> 
getChannel ::
           (MonadIO m) => RTCDataChannelEvent -> m (Maybe RTCDataChannel)
getChannel self
  = liftIO
      ((js_getChannel (unRTCDataChannelEvent self)) >>= fromJSRef)