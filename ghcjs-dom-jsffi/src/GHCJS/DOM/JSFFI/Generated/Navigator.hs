{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Navigator
       (js_requestMediaKeySystemAccess, requestMediaKeySystemAccess,
        requestMediaKeySystemAccess_, js_getGamepads, getGamepads,
        getGamepads_, js_getUserMedia, getUserMedia,
        js_registerProtocolHandler, registerProtocolHandler,
        js_isProtocolHandlerRegistered, isProtocolHandlerRegistered,
        isProtocolHandlerRegistered_, js_unregisterProtocolHandler,
        unregisterProtocolHandler, js_vibratePattern, vibratePattern,
        vibratePattern_, js_vibrate, vibrate, vibrate_, js_javaEnabled,
        javaEnabled, javaEnabled_, js_getStorageUpdates, getStorageUpdates,
        js_getGeolocation, getGeolocation, js_getMediaDevices,
        getMediaDevices, js_getWebkitTemporaryStorage,
        getWebkitTemporaryStorage, js_getWebkitPersistentStorage,
        getWebkitPersistentStorage, js_getWebdriver, getWebdriver,
        js_getPlugins, getPlugins, js_getMimeTypes, getMimeTypes,
        js_getCookieEnabled, getCookieEnabled, Navigator(..),
        gTypeNavigator)
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
 
foreign import javascript interruptible
        "$1[\"requestMediaKeySystemAccess\"]($2,\n$3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_requestMediaKeySystemAccess ::
        Navigator -> JSString -> JSVal -> IO (JSVal, MediaKeySystemAccess)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.requestMediaKeySystemAccess Mozilla Navigator.requestMediaKeySystemAccess documentation> 
requestMediaKeySystemAccess ::
                            (MonadIO m, ToJSString keySystem) =>
                              Navigator ->
                                keySystem ->
                                  [MediaKeySystemConfiguration] -> m MediaKeySystemAccess
requestMediaKeySystemAccess self keySystem supportedConfiguration
  = liftIO
      ((toJSVal supportedConfiguration >>=
          \ supportedConfiguration' ->
            js_requestMediaKeySystemAccess self (toJSString keySystem)
              supportedConfiguration')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.requestMediaKeySystemAccess Mozilla Navigator.requestMediaKeySystemAccess documentation> 
requestMediaKeySystemAccess_ ::
                             (MonadIO m, ToJSString keySystem) =>
                               Navigator -> keySystem -> [MediaKeySystemConfiguration] -> m ()
requestMediaKeySystemAccess_ self keySystem supportedConfiguration
  = liftIO
      (void
         (toJSVal supportedConfiguration >>=
            \ supportedConfiguration' ->
              js_requestMediaKeySystemAccess self (toJSString keySystem)
                supportedConfiguration'))
 
foreign import javascript unsafe "$1[\"getGamepads\"]()"
        js_getGamepads :: Navigator -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getGamepads Mozilla Navigator.getGamepads documentation> 
getGamepads :: (MonadIO m) => Navigator -> m [Gamepad]
getGamepads self
  = liftIO ((js_getGamepads self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getGamepads Mozilla Navigator.getGamepads documentation> 
getGamepads_ :: (MonadIO m) => Navigator -> m ()
getGamepads_ self = liftIO (void (js_getGamepads self))
 
foreign import javascript unsafe "$1[\"getUserMedia\"]($2, $3, $4)"
        js_getUserMedia ::
        Navigator ->
          MediaStreamConstraints ->
            NavigatorUserMediaSuccessCallback ->
              NavigatorUserMediaErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getUserMedia Mozilla Navigator.getUserMedia documentation> 
getUserMedia ::
             (MonadIO m) =>
               Navigator ->
                 MediaStreamConstraints ->
                   NavigatorUserMediaSuccessCallback ->
                     NavigatorUserMediaErrorCallback -> m ()
getUserMedia self constraints successCallback errorCallback
  = liftIO
      (js_getUserMedia self constraints successCallback errorCallback)
 
foreign import javascript safe
        "$1[\"registerProtocolHandler\"]($2,\n$3, $4)"
        js_registerProtocolHandler ::
        Navigator -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.registerProtocolHandler Mozilla Navigator.registerProtocolHandler documentation> 
registerProtocolHandler ::
                        (MonadIO m, ToJSString scheme, ToJSString url, ToJSString title) =>
                          Navigator -> scheme -> url -> title -> m ()
registerProtocolHandler self scheme url title
  = liftIO
      (js_registerProtocolHandler self (toJSString scheme)
         (toJSString url)
         (toJSString title))
 
foreign import javascript safe
        "$1[\"isProtocolHandlerRegistered\"]($2,\n$3)"
        js_isProtocolHandlerRegistered ::
        Navigator -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.isProtocolHandlerRegistered Mozilla Navigator.isProtocolHandlerRegistered documentation> 
isProtocolHandlerRegistered ::
                            (MonadIO m, ToJSString scheme, ToJSString url,
                             FromJSString result) =>
                              Navigator -> scheme -> url -> m result
isProtocolHandlerRegistered self scheme url
  = liftIO
      (fromJSString <$>
         (js_isProtocolHandlerRegistered self (toJSString scheme)
            (toJSString url)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.isProtocolHandlerRegistered Mozilla Navigator.isProtocolHandlerRegistered documentation> 
isProtocolHandlerRegistered_ ::
                             (MonadIO m, ToJSString scheme, ToJSString url) =>
                               Navigator -> scheme -> url -> m ()
isProtocolHandlerRegistered_ self scheme url
  = liftIO
      (void
         (js_isProtocolHandlerRegistered self (toJSString scheme)
            (toJSString url)))
 
foreign import javascript safe
        "$1[\"unregisterProtocolHandler\"]($2,\n$3)"
        js_unregisterProtocolHandler ::
        Navigator -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.unregisterProtocolHandler Mozilla Navigator.unregisterProtocolHandler documentation> 
unregisterProtocolHandler ::
                          (MonadIO m, ToJSString scheme, ToJSString url) =>
                            Navigator -> scheme -> url -> m ()
unregisterProtocolHandler self scheme url
  = liftIO
      (js_unregisterProtocolHandler self (toJSString scheme)
         (toJSString url))
 
foreign import javascript unsafe "($1[\"vibrate\"]($2) ? 1 : 0)"
        js_vibratePattern :: Navigator -> JSVal -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibratePattern :: (MonadIO m) => Navigator -> [Word] -> m Bool
vibratePattern self pattern'
  = liftIO
      (toJSVal pattern' >>=
         \ pattern'' -> js_vibratePattern self pattern'')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibratePattern_ :: (MonadIO m) => Navigator -> [Word] -> m ()
vibratePattern_ self pattern'
  = liftIO
      (void
         (toJSVal pattern' >>=
            \ pattern'' -> js_vibratePattern self pattern''))
 
foreign import javascript unsafe "($1[\"vibrate\"]($2) ? 1 : 0)"
        js_vibrate :: Navigator -> Word -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibrate :: (MonadIO m) => Navigator -> Word -> m Bool
vibrate self time = liftIO (js_vibrate self time)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibrate_ :: (MonadIO m) => Navigator -> Word -> m ()
vibrate_ self time = liftIO (void (js_vibrate self time))
 
foreign import javascript unsafe "($1[\"javaEnabled\"]() ? 1 : 0)"
        js_javaEnabled :: Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.javaEnabled Mozilla Navigator.javaEnabled documentation> 
javaEnabled :: (MonadIO m) => Navigator -> m Bool
javaEnabled self = liftIO (js_javaEnabled self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.javaEnabled Mozilla Navigator.javaEnabled documentation> 
javaEnabled_ :: (MonadIO m) => Navigator -> m ()
javaEnabled_ self = liftIO (void (js_javaEnabled self))
 
foreign import javascript unsafe "$1[\"getStorageUpdates\"]()"
        js_getStorageUpdates :: Navigator -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getStorageUpdates Mozilla Navigator.getStorageUpdates documentation> 
getStorageUpdates :: (MonadIO m) => Navigator -> m ()
getStorageUpdates self = liftIO (js_getStorageUpdates self)
 
foreign import javascript unsafe "$1[\"geolocation\"]"
        js_getGeolocation :: Navigator -> IO Geolocation

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.geolocation Mozilla Navigator.geolocation documentation> 
getGeolocation :: (MonadIO m) => Navigator -> m Geolocation
getGeolocation self = liftIO (js_getGeolocation self)
 
foreign import javascript unsafe "$1[\"mediaDevices\"]"
        js_getMediaDevices :: Navigator -> IO MediaDevices

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.mediaDevices Mozilla Navigator.mediaDevices documentation> 
getMediaDevices :: (MonadIO m) => Navigator -> m MediaDevices
getMediaDevices self = liftIO (js_getMediaDevices self)
 
foreign import javascript unsafe "$1[\"webkitTemporaryStorage\"]"
        js_getWebkitTemporaryStorage :: Navigator -> IO StorageQuota

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitTemporaryStorage Mozilla Navigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorage ::
                          (MonadIO m) => Navigator -> m StorageQuota
getWebkitTemporaryStorage self
  = liftIO (js_getWebkitTemporaryStorage self)
 
foreign import javascript unsafe "$1[\"webkitPersistentStorage\"]"
        js_getWebkitPersistentStorage :: Navigator -> IO StorageQuota

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitPersistentStorage Mozilla Navigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorage ::
                           (MonadIO m) => Navigator -> m StorageQuota
getWebkitPersistentStorage self
  = liftIO (js_getWebkitPersistentStorage self)
 
foreign import javascript unsafe "($1[\"webdriver\"] ? 1 : 0)"
        js_getWebdriver :: Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webdriver Mozilla Navigator.webdriver documentation> 
getWebdriver :: (MonadIO m) => Navigator -> m Bool
getWebdriver self = liftIO (js_getWebdriver self)
 
foreign import javascript unsafe "$1[\"plugins\"]" js_getPlugins ::
        Navigator -> IO PluginArray

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.plugins Mozilla Navigator.plugins documentation> 
getPlugins :: (MonadIO m) => Navigator -> m PluginArray
getPlugins self = liftIO (js_getPlugins self)
 
foreign import javascript unsafe "$1[\"mimeTypes\"]"
        js_getMimeTypes :: Navigator -> IO MimeTypeArray

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.mimeTypes Mozilla Navigator.mimeTypes documentation> 
getMimeTypes :: (MonadIO m) => Navigator -> m MimeTypeArray
getMimeTypes self = liftIO (js_getMimeTypes self)
 
foreign import javascript unsafe "($1[\"cookieEnabled\"] ? 1 : 0)"
        js_getCookieEnabled :: Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.cookieEnabled Mozilla Navigator.cookieEnabled documentation> 
getCookieEnabled :: (MonadIO m) => Navigator -> m Bool
getCookieEnabled self = liftIO (js_getCookieEnabled self)