{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.UserMessageHandler
       (js_postMessage, postMessage, UserMessageHandler,
        castToUserMessageHandler, gTypeUserMessageHandler)
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

 
foreign import javascript unsafe "$1[\"postMessage\"]($2)"
        js_postMessage ::
        JSRef UserMessageHandler -> JSRef SerializedScriptValue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandler.postMessage Mozilla UserMessageHandler.postMessage documentation> 
postMessage ::
            (MonadIO m, IsSerializedScriptValue message) =>
              UserMessageHandler -> Maybe message -> m ()
postMessage self message
  = liftIO
      (js_postMessage (unUserMessageHandler self)
         (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
            message))
#else
module GHCJS.DOM.UserMessageHandler (
  ) where
#endif
