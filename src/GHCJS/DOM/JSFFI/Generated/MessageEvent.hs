{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MessageEvent
       (js_initMessageEvent, initMessageEvent, js_getOrigin, getOrigin,
        js_getLastEventId, getLastEventId, js_getSource, getSource,
        js_getData, getData, js_getMessagePort, getMessagePort,
        MessageEvent, castToMessageEvent, gTypeMessageEvent)
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
 
foreign import javascript unsafe
        "$1[\"initMessageEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initMessageEvent ::
        JSRef MessageEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef SerializedScriptValue ->
                  JSString -> JSString -> JSRef Window -> JSRef MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.initMessageEvent Mozilla MessageEvent.initMessageEvent documentation> 
initMessageEvent ::
                 (MonadIO m, ToJSString typeArg, IsSerializedScriptValue dataArg,
                  ToJSString originArg, ToJSString lastEventIdArg) =>
                   MessageEvent ->
                     typeArg ->
                       Bool ->
                         Bool ->
                           Maybe dataArg ->
                             originArg ->
                               lastEventIdArg -> Maybe Window -> Maybe MessagePort -> m ()
initMessageEvent self typeArg canBubbleArg cancelableArg dataArg
  originArg lastEventIdArg sourceArg messagePort
  = liftIO
      (js_initMessageEvent (unMessageEvent self) (toJSString typeArg)
         canBubbleArg
         cancelableArg
         (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
            dataArg)
         (toJSString originArg)
         (toJSString lastEventIdArg)
         (maybe jsNull pToJSRef sourceArg)
         (maybe jsNull pToJSRef messagePort))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        JSRef MessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.origin Mozilla MessageEvent.origin documentation> 
getOrigin ::
          (MonadIO m, FromJSString result) => MessageEvent -> m result
getOrigin self
  = liftIO (fromJSString <$> (js_getOrigin (unMessageEvent self)))
 
foreign import javascript unsafe "$1[\"lastEventId\"]"
        js_getLastEventId :: JSRef MessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.lastEventId Mozilla MessageEvent.lastEventId documentation> 
getLastEventId ::
               (MonadIO m, FromJSString result) => MessageEvent -> m result
getLastEventId self
  = liftIO
      (fromJSString <$> (js_getLastEventId (unMessageEvent self)))
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        JSRef MessageEvent -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
getSource :: (MonadIO m) => MessageEvent -> m (Maybe EventTarget)
getSource self
  = liftIO ((js_getSource (unMessageEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        JSRef MessageEvent -> IO (JSRef SerializedScriptValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.data Mozilla MessageEvent.data documentation> 
getData ::
        (MonadIO m) => MessageEvent -> m (Maybe SerializedScriptValue)
getData self
  = liftIO ((js_getData (unMessageEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"messagePort\"]"
        js_getMessagePort :: JSRef MessageEvent -> IO (JSRef MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.messagePort Mozilla MessageEvent.messagePort documentation> 
getMessagePort ::
               (MonadIO m) => MessageEvent -> m (Maybe MessagePort)
getMessagePort self
  = liftIO ((js_getMessagePort (unMessageEvent self)) >>= fromJSRef)