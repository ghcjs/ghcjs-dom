{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MessageEvent
       (js_initMessageEvent, initMessageEvent, js_webkitInitMessageEvent,
        webkitInitMessageEvent, js_getOrigin, getOrigin, js_getLastEventId,
        getLastEventId, js_getSource, getSource, js_getData, getData,
        js_getPorts, getPorts, MessageEvent, castToMessageEvent,
        gTypeMessageEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
                JSRef a ->
                  JSString -> JSString -> JSRef Window -> JSRef Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.initMessageEvent Mozilla MessageEvent.initMessageEvent documentation> 
initMessageEvent ::
                 (MonadIO m, ToJSString typeArg, ToJSString originArg,
                  ToJSString lastEventIdArg, IsArray messagePorts) =>
                   MessageEvent ->
                     typeArg ->
                       Bool ->
                         Bool ->
                           JSRef a ->
                             originArg ->
                               lastEventIdArg -> Maybe Window -> Maybe messagePorts -> m ()
initMessageEvent self typeArg canBubbleArg cancelableArg dataArg
  originArg lastEventIdArg sourceArg messagePorts
  = liftIO
      (js_initMessageEvent (unMessageEvent self) (toJSString typeArg)
         canBubbleArg
         cancelableArg
         dataArg
         (toJSString originArg)
         (toJSString lastEventIdArg)
         (maybe jsNull pToJSRef sourceArg)
         (maybe jsNull (unArray . toArray) messagePorts))
 
foreign import javascript unsafe
        "$1[\"webkitInitMessageEvent\"]($2,\n$3, $4, $5, $6, $7, $8, $9)"
        js_webkitInitMessageEvent ::
        JSRef MessageEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef a ->
                  JSString -> JSString -> JSRef Window -> JSRef Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.webkitInitMessageEvent Mozilla MessageEvent.webkitInitMessageEvent documentation> 
webkitInitMessageEvent ::
                       (MonadIO m, ToJSString typeArg, ToJSString originArg,
                        ToJSString lastEventIdArg, IsArray transferables) =>
                         MessageEvent ->
                           typeArg ->
                             Bool ->
                               Bool ->
                                 JSRef a ->
                                   originArg ->
                                     lastEventIdArg -> Maybe Window -> Maybe transferables -> m ()
webkitInitMessageEvent self typeArg canBubbleArg cancelableArg
  dataArg originArg lastEventIdArg sourceArg transferables
  = liftIO
      (js_webkitInitMessageEvent (unMessageEvent self)
         (toJSString typeArg)
         canBubbleArg
         cancelableArg
         dataArg
         (toJSString originArg)
         (toJSString lastEventIdArg)
         (maybe jsNull pToJSRef sourceArg)
         (maybe jsNull (unArray . toArray) transferables))
 
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
        JSRef MessageEvent -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.data Mozilla MessageEvent.data documentation> 
getData :: (MonadIO m) => MessageEvent -> m (JSRef a)
getData self = liftIO (js_getData (unMessageEvent self))
 
foreign import javascript unsafe "$1[\"ports\"]" js_getPorts ::
        JSRef MessageEvent -> IO (JSRef [Maybe MessagePort])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.ports Mozilla MessageEvent.ports documentation> 
getPorts :: (MonadIO m) => MessageEvent -> m [Maybe MessagePort]
getPorts self
  = liftIO
      ((js_getPorts (unMessageEvent self)) >>= fromJSRefUnchecked)