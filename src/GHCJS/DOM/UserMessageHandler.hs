{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.UserMessageHandler
       (ghcjs_dom_user_message_handler_post_message,
        userMessageHandlerPostMessage, UserMessageHandler,
        IsUserMessageHandler, castToUserMessageHandler,
        gTypeUserMessageHandler, toUserMessageHandler)
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

 
foreign import javascript unsafe "$1[\"postMessage\"]($2)"
        ghcjs_dom_user_message_handler_post_message ::
        JSRef UserMessageHandler -> JSRef SerializedScriptValue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandler.postMessage Mozilla UserMessageHandler.postMessage documentation> 
userMessageHandlerPostMessage ::
                              (MonadIO m, IsUserMessageHandler self,
                               IsSerializedScriptValue message) =>
                                self -> Maybe message -> m ()
userMessageHandlerPostMessage self message
  = liftIO
      (ghcjs_dom_user_message_handler_post_message
         (unUserMessageHandler (toUserMessageHandler self))
         (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
            message))
#else
module GHCJS.DOM.UserMessageHandler (
  ) where
#endif
