{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MessageEvent
       (js_newMessageEvent, newMessageEvent, js_initMessageEvent,
        initMessageEvent, js_getOrigin, getOrigin, js_getLastEventId,
        getLastEventId, js_getSource, getSource, getSourceUnsafe,
        getSourceUnchecked, js_getData, getData, js_getPorts, getPorts,
        MessageEvent(..), gTypeMessageEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new window[\"MessageEvent\"]($1,\n$2)" js_newMessageEvent ::
        JSString -> Optional MessageEventInit -> IO MessageEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent Mozilla MessageEvent documentation> 
newMessageEvent ::
                (MonadIO m, ToJSString type') =>
                  type' -> Maybe MessageEventInit -> m MessageEvent
newMessageEvent type' eventInitDict
  = liftIO
      (js_newMessageEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe
        "$1[\"initMessageEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initMessageEvent ::
        MessageEvent ->
          JSString ->
            Bool ->
              Bool ->
                Optional JSVal ->
                  Optional JSString ->
                    Optional JSString -> Optional MessageEventSource -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.initMessageEvent Mozilla MessageEvent.initMessageEvent documentation> 
initMessageEvent ::
                 (MonadIO m, ToJSString type', ToJSVal data', ToJSString originArg,
                  ToJSString lastEventId, IsMessageEventSource source) =>
                   MessageEvent ->
                     type' ->
                       Bool ->
                         Bool ->
                           Maybe data' ->
                             Maybe originArg ->
                               Maybe lastEventId -> Maybe source -> [MessagePort] -> m ()
initMessageEvent self type' bubbles cancelable data' originArg
  lastEventId source messagePorts
  = liftIO
      (toJSVal messagePorts >>=
         \ messagePorts' ->
           mapM toJSVal source >>=
             \ source' ->
               mapM toJSVal data' >>=
                 \ data'' ->
                   js_initMessageEvent self (toJSString type') bubbles cancelable
                     (maybeToOptional data'')
                 (toOptionalJSString originArg)
                 (toOptionalJSString lastEventId)
                 (maybeToOptional (fmap MessageEventSource source'))
             messagePorts')
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        MessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.origin Mozilla MessageEvent.origin documentation> 
getOrigin ::
          (MonadIO m, FromJSString result) => MessageEvent -> m result
getOrigin self = liftIO (fromJSString <$> (js_getOrigin self))
 
foreign import javascript unsafe "$1[\"lastEventId\"]"
        js_getLastEventId :: MessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.lastEventId Mozilla MessageEvent.lastEventId documentation> 
getLastEventId ::
               (MonadIO m, FromJSString result) => MessageEvent -> m result
getLastEventId self
  = liftIO (fromJSString <$> (js_getLastEventId self))
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        MessageEvent -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
getSource :: (MonadIO m) => MessageEvent -> m (Maybe EventTarget)
getSource self = liftIO (nullableToMaybe <$> (js_getSource self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
getSourceUnsafe ::
                (MonadIO m, HasCallStack) => MessageEvent -> m EventTarget
getSourceUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSource self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.source Mozilla MessageEvent.source documentation> 
getSourceUnchecked :: (MonadIO m) => MessageEvent -> m EventTarget
getSourceUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getSource self))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        MessageEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.data Mozilla MessageEvent.data documentation> 
getData :: (MonadIO m) => MessageEvent -> m JSVal
getData self = liftIO (js_getData self)
 
foreign import javascript unsafe "$1[\"ports\"]" js_getPorts ::
        MessageEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent.ports Mozilla MessageEvent.ports documentation> 
getPorts :: (MonadIO m) => MessageEvent -> m [MessagePort]
getPorts self = liftIO ((js_getPorts self) >>= fromJSValUnchecked)