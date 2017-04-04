{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Notification
       (js_show, show, js_cancel, cancel, js_close, close,
        js_requestPermission, requestPermission, js_getPermission,
        getPermission, click, cLoseEvent, display, error, showEvent,
        js_setDir, setDir, js_getDir, getDir, js_setReplaceId,
        setReplaceId, js_getReplaceId, getReplaceId, js_setTag, setTag,
        js_getTag, getTag, Notification(..), gTypeNotification)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"show\"]()" js_show ::
        Notification -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.show Mozilla Notification.show documentation> 
show :: (MonadIO m) => Notification -> m ()
show self = liftIO (js_show self)
 
foreign import javascript unsafe "$1[\"cancel\"]()" js_cancel ::
        Notification -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.cancel Mozilla Notification.cancel documentation> 
cancel :: (MonadIO m) => Notification -> m ()
cancel self = liftIO (js_cancel self)
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        Notification -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.close Mozilla Notification.close documentation> 
close :: (MonadIO m) => Notification -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"requestPermission\"]($2)"
        js_requestPermission ::
        Notification ->
          Optional (NotificationPermissionCallback callback) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.requestPermission Mozilla Notification.requestPermission documentation> 
requestPermission ::
                  (MonadIO m, ToJSString callback) =>
                    Notification ->
                      Maybe (NotificationPermissionCallback callback) -> m ()
requestPermission self callback
  = liftIO (js_requestPermission self (maybeToOptional callback))
 
foreign import javascript unsafe "$1[\"permission\"]"
        js_getPermission :: Notification -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.permission Mozilla Notification.permission documentation> 
getPermission ::
              (MonadIO m, FromJSString result) => Notification -> m result
getPermission self
  = liftIO (fromJSString <$> (js_getPermission self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onclick Mozilla Notification.onclick documentation> 
click :: EventName Notification MouseEvent
click = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onclose Mozilla Notification.onclose documentation> 
cLoseEvent :: EventName Notification CloseEvent
cLoseEvent = unsafeEventName (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.ondisplay Mozilla Notification.ondisplay documentation> 
display :: EventName Notification ondisplay
display = unsafeEventName (toJSString "display")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onerror Mozilla Notification.onerror documentation> 
error :: EventName Notification UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onshow Mozilla Notification.onshow documentation> 
showEvent :: EventName Notification MouseEvent
showEvent = unsafeEventName (toJSString "show")
 
foreign import javascript unsafe "$1[\"dir\"] = $2;" js_setDir ::
        Notification -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.dir Mozilla Notification.dir documentation> 
setDir ::
       (MonadIO m, ToJSString val) => Notification -> val -> m ()
setDir self val = liftIO (js_setDir self (toJSString val))
 
foreign import javascript unsafe "$1[\"dir\"]" js_getDir ::
        Notification -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.dir Mozilla Notification.dir documentation> 
getDir ::
       (MonadIO m, FromJSString result) => Notification -> m result
getDir self = liftIO (fromJSString <$> (js_getDir self))
 
foreign import javascript unsafe "$1[\"replaceId\"] = $2;"
        js_setReplaceId :: Notification -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.replaceId Mozilla Notification.replaceId documentation> 
setReplaceId ::
             (MonadIO m, ToJSString val) => Notification -> val -> m ()
setReplaceId self val
  = liftIO (js_setReplaceId self (toJSString val))
 
foreign import javascript unsafe "$1[\"replaceId\"]"
        js_getReplaceId :: Notification -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.replaceId Mozilla Notification.replaceId documentation> 
getReplaceId ::
             (MonadIO m, FromJSString result) => Notification -> m result
getReplaceId self
  = liftIO (fromJSString <$> (js_getReplaceId self))
 
foreign import javascript unsafe "$1[\"tag\"] = $2;" js_setTag ::
        Notification -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.tag Mozilla Notification.tag documentation> 
setTag ::
       (MonadIO m, ToJSString val) => Notification -> val -> m ()
setTag self val = liftIO (js_setTag self (toJSString val))
 
foreign import javascript unsafe "$1[\"tag\"]" js_getTag ::
        Notification -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.tag Mozilla Notification.tag documentation> 
getTag ::
       (MonadIO m, FromJSString result) => Notification -> m result
getTag self = liftIO (fromJSString <$> (js_getTag self))