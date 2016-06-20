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
 
foreign import javascript unsafe
        "$1[\"initMessageEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initMessageEvent ::
        MessageEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSVal ->
                  JSString -> JSString -> Nullable Window -> Nullable Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.initMessageEvent Mozilla MessageEvent.initMessageEvent documentation> 
initMessageEvent ::
                 (MonadIO m, ToJSString typeArg, ToJSString originArg,
                  ToJSString lastEventIdArg, IsArray messagePorts) =>
                   MessageEvent ->
                     typeArg ->
                       Bool ->
                         Bool ->
                           JSVal ->
                             originArg ->
                               lastEventIdArg -> Maybe Window -> Maybe messagePorts -> m ()
initMessageEvent self typeArg canBubbleArg cancelableArg dataArg
  originArg lastEventIdArg sourceArg messagePorts
  = liftIO
      (js_initMessageEvent (self) (toJSString typeArg) canBubbleArg
         cancelableArg
         dataArg
         (toJSString originArg)
         (toJSString lastEventIdArg)
         (maybeToNullable sourceArg)
         (maybeToNullable (fmap toArray messagePorts)))
 
foreign import javascript unsafe
        "$1[\"webkitInitMessageEvent\"]($2,\n$3, $4, $5, $6, $7, $8, $9)"
        js_webkitInitMessageEvent ::
        MessageEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSVal ->
                  JSString -> JSString -> Nullable Window -> Nullable Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.webkitInitMessageEvent Mozilla MessageEvent.webkitInitMessageEvent documentation> 
webkitInitMessageEvent ::
                       (MonadIO m, ToJSString typeArg, ToJSString originArg,
                        ToJSString lastEventIdArg, IsArray transferables) =>
                         MessageEvent ->
                           typeArg ->
                             Bool ->
                               Bool ->
                                 JSVal ->
                                   originArg ->
                                     lastEventIdArg -> Maybe Window -> Maybe transferables -> m ()
webkitInitMessageEvent self typeArg canBubbleArg cancelableArg
  dataArg originArg lastEventIdArg sourceArg transferables
  = liftIO
      (js_webkitInitMessageEvent (self) (toJSString typeArg) canBubbleArg
         cancelableArg
         dataArg
         (toJSString originArg)
         (toJSString lastEventIdArg)
         (maybeToNullable sourceArg)
         (maybeToNullable (fmap toArray transferables)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        MessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.origin Mozilla MessageEvent.origin documentation> 
getOrigin ::
          (MonadIO m, FromJSString result) => MessageEvent -> m result
getOrigin self = liftIO (fromJSString <$> (js_getOrigin (self)))
 
foreign import javascript unsafe "$1[\"lastEventId\"]"
        js_getLastEventId :: MessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.lastEventId Mozilla MessageEvent.lastEventId documentation> 
getLastEventId ::
               (MonadIO m, FromJSString result) => MessageEvent -> m result
getLastEventId self
  = liftIO (fromJSString <$> (js_getLastEventId (self)))
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        MessageEvent -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
getSource :: (MonadIO m) => MessageEvent -> m (Maybe EventTarget)
getSource self = liftIO (nullableToMaybe <$> (js_getSource (self)))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        MessageEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.data Mozilla MessageEvent.data documentation> 
getData :: (MonadIO m) => MessageEvent -> m JSVal
getData self = liftIO (js_getData (self))
 
foreign import javascript unsafe "$1[\"ports\"]" js_getPorts ::
        MessageEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.ports Mozilla MessageEvent.ports documentation> 
getPorts :: (MonadIO m) => MessageEvent -> m [Maybe MessagePort]
getPorts self
  = liftIO ((js_getPorts (self)) >>= fromJSValUnchecked)