{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NotificationCenter
       (js_createNotification, createNotification, createNotification_,
        createNotificationUnsafe, createNotificationUnchecked,
        js_checkPermission, checkPermission, checkPermission_,
        js_requestPermission, requestPermission, NotificationCenter(..),
        gTypeNotificationCenter)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "$1[\"createNotification\"]($2, $3,\n$4)" js_createNotification ::
        NotificationCenter ->
          JSString -> JSString -> JSString -> IO (Nullable Notification)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.createNotification Mozilla NotificationCenter.createNotification documentation> 
createNotification ::
                   (MonadIO m, ToJSString iconUrl, ToJSString title,
                    ToJSString body) =>
                     NotificationCenter ->
                       iconUrl -> title -> body -> m (Maybe Notification)
createNotification self iconUrl title body
  = liftIO
      (nullableToMaybe <$>
         (js_createNotification (self) (toJSString iconUrl)
            (toJSString title)
            (toJSString body)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.createNotification Mozilla NotificationCenter.createNotification documentation> 
createNotification_ ::
                    (MonadIO m, ToJSString iconUrl, ToJSString title,
                     ToJSString body) =>
                      NotificationCenter -> iconUrl -> title -> body -> m ()
createNotification_ self iconUrl title body
  = liftIO
      (void
         (js_createNotification (self) (toJSString iconUrl)
            (toJSString title)
            (toJSString body)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.createNotification Mozilla NotificationCenter.createNotification documentation> 
createNotificationUnsafe ::
                         (MonadIO m, ToJSString iconUrl, ToJSString title, ToJSString body,
                          HasCallStack) =>
                           NotificationCenter -> iconUrl -> title -> body -> m Notification
createNotificationUnsafe self iconUrl title body
  = liftIO
      ((nullableToMaybe <$>
          (js_createNotification (self) (toJSString iconUrl)
             (toJSString title)
             (toJSString body)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.createNotification Mozilla NotificationCenter.createNotification documentation> 
createNotificationUnchecked ::
                            (MonadIO m, ToJSString iconUrl, ToJSString title,
                             ToJSString body) =>
                              NotificationCenter -> iconUrl -> title -> body -> m Notification
createNotificationUnchecked self iconUrl title body
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createNotification (self) (toJSString iconUrl)
            (toJSString title)
            (toJSString body)))
 
foreign import javascript unsafe "$1[\"checkPermission\"]()"
        js_checkPermission :: NotificationCenter -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.checkPermission Mozilla NotificationCenter.checkPermission documentation> 
checkPermission :: (MonadIO m) => NotificationCenter -> m Int
checkPermission self = liftIO (js_checkPermission (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.checkPermission Mozilla NotificationCenter.checkPermission documentation> 
checkPermission_ :: (MonadIO m) => NotificationCenter -> m ()
checkPermission_ self = liftIO (void (js_checkPermission (self)))
 
foreign import javascript unsafe "$1[\"requestPermission\"]($2)"
        js_requestPermission ::
        NotificationCenter -> Nullable VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.requestPermission Mozilla NotificationCenter.requestPermission documentation> 
requestPermission ::
                  (MonadIO m) => NotificationCenter -> Maybe VoidCallback -> m ()
requestPermission self callback
  = liftIO (js_requestPermission (self) (maybeToNullable callback))