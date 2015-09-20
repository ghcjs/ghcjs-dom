{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCIceServer
       (js_getUrls, getUrls, js_getUsername, getUsername,
        js_getCredential, getCredential, RTCIceServer, castToRTCIceServer,
        gTypeRTCIceServer)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString)
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
 
foreign import javascript unsafe "$1[\"urls\"]" js_getUrls ::
        RTCIceServer -> IO JSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer.urls Mozilla RTCIceServer.urls documentation> 
getUrls ::
        (MonadIO m, FromJSString result) => RTCIceServer -> m [result]
getUrls self = liftIO ((js_getUrls (self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"username\"]" js_getUsername
        :: RTCIceServer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer.username Mozilla RTCIceServer.username documentation> 
getUsername ::
            (MonadIO m, FromJSString result) => RTCIceServer -> m result
getUsername self
  = liftIO (fromJSString <$> (js_getUsername (self)))
 
foreign import javascript unsafe "$1[\"credential\"]"
        js_getCredential :: RTCIceServer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer.credential Mozilla RTCIceServer.credential documentation> 
getCredential ::
              (MonadIO m, FromJSString result) => RTCIceServer -> m result
getCredential self
  = liftIO (fromJSString <$> (js_getCredential (self)))