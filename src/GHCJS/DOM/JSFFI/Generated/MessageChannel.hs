{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MessageChannel
       (js_newMessageChannel, newMessageChannel, js_getPort1, getPort1,
        js_getPort2, getPort2, MessageChannel, castToMessageChannel,
        gTypeMessageChannel)
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
 
foreign import javascript unsafe "new window[\"MessageChannel\"]()"
        js_newMessageChannel :: IO MessageChannel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel Mozilla MessageChannel documentation> 
newMessageChannel :: (MonadIO m) => m MessageChannel
newMessageChannel = liftIO (js_newMessageChannel)
 
foreign import javascript unsafe "$1[\"port1\"]" js_getPort1 ::
        MessageChannel -> IO (Nullable MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port1 Mozilla MessageChannel.port1 documentation> 
getPort1 :: (MonadIO m) => MessageChannel -> m (Maybe MessagePort)
getPort1 self = liftIO (nullableToMaybe <$> (js_getPort1 (self)))
 
foreign import javascript unsafe "$1[\"port2\"]" js_getPort2 ::
        MessageChannel -> IO (Nullable MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port2 Mozilla MessageChannel.port2 documentation> 
getPort2 :: (MonadIO m) => MessageChannel -> m (Maybe MessagePort)
getPort2 self = liftIO (nullableToMaybe <$> (js_getPort2 (self)))