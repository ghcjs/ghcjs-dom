{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MessageEvent
       (ghcjs_dom_message_event_init_message_event,
        messageEventInitMessageEvent, ghcjs_dom_message_event_get_origin,
        messageEventGetOrigin, ghcjs_dom_message_event_get_last_event_id,
        messageEventGetLastEventId, ghcjs_dom_message_event_get_source,
        messageEventGetSource, ghcjs_dom_message_event_get_data,
        messageEventGetData, ghcjs_dom_message_event_get_message_port,
        messageEventGetMessagePort, MessageEvent, IsMessageEvent,
        castToMessageEvent, gTypeMessageEvent, toMessageEvent)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"initMessageEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        ghcjs_dom_message_event_init_message_event ::
        JSRef MessageEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef SerializedScriptValue ->
                  JSString ->
                    JSString -> JSRef DOMWindow -> JSRef MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.initMessageEvent Mozilla MessageEvent.initMessageEvent documentation> 
messageEventInitMessageEvent ::
                             (IsMessageEvent self, ToJSString typeArg,
                              IsSerializedScriptValue dataArg, ToJSString originArg,
                              ToJSString lastEventIdArg, IsDOMWindow sourceArg,
                              IsMessagePort messagePort) =>
                               self ->
                                 typeArg ->
                                   Bool ->
                                     Bool ->
                                       Maybe dataArg ->
                                         originArg ->
                                           lastEventIdArg ->
                                             Maybe sourceArg -> Maybe messagePort -> IO ()
messageEventInitMessageEvent self typeArg canBubbleArg
  cancelableArg dataArg originArg lastEventIdArg sourceArg
  messagePort
  = ghcjs_dom_message_event_init_message_event
      (unMessageEvent (toMessageEvent self))
      (toJSString typeArg)
      canBubbleArg
      cancelableArg
      (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
         dataArg)
      (toJSString originArg)
      (toJSString lastEventIdArg)
      (maybe jsNull (unDOMWindow . toDOMWindow) sourceArg)
      (maybe jsNull (unMessagePort . toMessagePort) messagePort)
 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_message_event_get_origin ::
        JSRef MessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.origin Mozilla MessageEvent.origin documentation> 
messageEventGetOrigin ::
                      (IsMessageEvent self, FromJSString result) => self -> IO result
messageEventGetOrigin self
  = fromJSString <$>
      (ghcjs_dom_message_event_get_origin
         (unMessageEvent (toMessageEvent self)))
 
foreign import javascript unsafe "$1[\"lastEventId\"]"
        ghcjs_dom_message_event_get_last_event_id ::
        JSRef MessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.lastEventId Mozilla MessageEvent.lastEventId documentation> 
messageEventGetLastEventId ::
                           (IsMessageEvent self, FromJSString result) => self -> IO result
messageEventGetLastEventId self
  = fromJSString <$>
      (ghcjs_dom_message_event_get_last_event_id
         (unMessageEvent (toMessageEvent self)))
 
foreign import javascript unsafe "$1[\"source\"]"
        ghcjs_dom_message_event_get_source ::
        JSRef MessageEvent -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
messageEventGetSource ::
                      (IsMessageEvent self) => self -> IO (Maybe EventTarget)
messageEventGetSource self
  = (ghcjs_dom_message_event_get_source
       (unMessageEvent (toMessageEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_message_event_get_data ::
        JSRef MessageEvent -> IO (JSRef SerializedScriptValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.data Mozilla MessageEvent.data documentation> 
messageEventGetData ::
                    (IsMessageEvent self) => self -> IO (Maybe SerializedScriptValue)
messageEventGetData self
  = (ghcjs_dom_message_event_get_data
       (unMessageEvent (toMessageEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"messagePort\"]"
        ghcjs_dom_message_event_get_message_port ::
        JSRef MessageEvent -> IO (JSRef MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.messagePort Mozilla MessageEvent.messagePort documentation> 
messageEventGetMessagePort ::
                           (IsMessageEvent self) => self -> IO (Maybe MessagePort)
messageEventGetMessagePort self
  = (ghcjs_dom_message_event_get_message_port
       (unMessageEvent (toMessageEvent self)))
      >>= fromJSRef
#else
module GHCJS.DOM.MessageEvent (
  ) where
#endif
