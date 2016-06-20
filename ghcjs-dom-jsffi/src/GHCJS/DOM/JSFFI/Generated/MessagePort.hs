{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MessagePort
       (js_postMessage, postMessage, js_start, start, js_close, close,
        message, MessagePort, castToMessagePort, gTypeMessagePort)
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
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3)"
        js_postMessage :: MessagePort -> JSVal -> Nullable Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.postMessage Mozilla MessagePort.postMessage documentation> 
postMessage ::
            (MonadIO m, IsArray messagePorts) =>
              MessagePort -> JSVal -> Maybe messagePorts -> m ()
postMessage self message messagePorts
  = liftIO
      (js_postMessage (self) message
         (maybeToNullable (fmap toArray messagePorts)))
 
foreign import javascript unsafe "$1[\"start\"]()" js_start ::
        MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.start Mozilla MessagePort.start documentation> 
start :: (MonadIO m) => MessagePort -> m ()
start self = liftIO (js_start (self))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.close Mozilla MessagePort.close documentation> 
close :: (MonadIO m) => MessagePort -> m ()
close self = liftIO (js_close (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.onmessage Mozilla MessagePort.onmessage documentation> 
message :: EventName MessagePort MessageEvent
message = unsafeEventName (toJSString "message")