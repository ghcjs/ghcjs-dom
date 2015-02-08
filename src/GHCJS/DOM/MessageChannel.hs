{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MessageChannel
       (ghcjs_dom_message_channel_new, messageChannelNew,
        ghcjs_dom_message_channel_get_port1, messageChannelGetPort1,
        ghcjs_dom_message_channel_get_port2, messageChannelGetPort2,
        MessageChannel, IsMessageChannel, castToMessageChannel,
        gTypeMessageChannel, toMessageChannel)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"MessageChannel\"]()"
        ghcjs_dom_message_channel_new :: IO (JSRef MessageChannel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel Mozilla MessageChannel documentation> 
messageChannelNew :: (MonadIO m) => m MessageChannel
messageChannelNew
  = liftIO (ghcjs_dom_message_channel_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"port1\"]"
        ghcjs_dom_message_channel_get_port1 ::
        JSRef MessageChannel -> IO (JSRef MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port1 Mozilla MessageChannel.port1 documentation> 
messageChannelGetPort1 ::
                       (MonadIO m, IsMessageChannel self) => self -> m (Maybe MessagePort)
messageChannelGetPort1 self
  = liftIO
      ((ghcjs_dom_message_channel_get_port1
          (unMessageChannel (toMessageChannel self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"port2\"]"
        ghcjs_dom_message_channel_get_port2 ::
        JSRef MessageChannel -> IO (JSRef MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port2 Mozilla MessageChannel.port2 documentation> 
messageChannelGetPort2 ::
                       (MonadIO m, IsMessageChannel self) => self -> m (Maybe MessagePort)
messageChannelGetPort2 self
  = liftIO
      ((ghcjs_dom_message_channel_get_port2
          (unMessageChannel (toMessageChannel self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.MessageChannel (
  ) where
#endif
