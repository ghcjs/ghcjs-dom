{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Navigator
       (js_getGamepads, getGamepads, js_webkitGetUserMedia,
        webkitGetUserMedia, js_registerProtocolHandler,
        registerProtocolHandler, js_isProtocolHandlerRegistered,
        isProtocolHandlerRegistered, js_unregisterProtocolHandler,
        unregisterProtocolHandler, js_vibratePattern, vibratePattern,
        js_vibrate, vibrate, js_javaEnabled, javaEnabled,
        js_getStorageUpdates, getStorageUpdates, js_getWebkitBattery,
        getWebkitBattery, js_getGeolocation, getGeolocation,
        js_getWebkitTemporaryStorage, getWebkitTemporaryStorage,
        js_getWebkitPersistentStorage, getWebkitPersistentStorage,
        js_getAppCodeName, getAppCodeName, js_getAppName, getAppName,
        js_getAppVersion, getAppVersion, js_getLanguage, getLanguage,
        js_getUserAgent, getUserAgent, js_getPlatform, getPlatform,
        js_getPlugins, getPlugins, js_getMimeTypes, getMimeTypes,
        js_getProduct, getProduct, js_getProductSub, getProductSub,
        js_getVendor, getVendor, js_getVendorSub, getVendorSub,
        js_getCookieEnabled, getCookieEnabled, js_getOnLine, getOnLine,
        js_getHardwareConcurrency, getHardwareConcurrency, Navigator,
        castToNavigator, gTypeNavigator)
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
 
foreign import javascript unsafe "$1[\"getGamepads\"]()"
        js_getGamepads :: JSRef Navigator -> IO (JSRef [Maybe Gamepad])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getGamepads Mozilla Navigator.getGamepads documentation> 
getGamepads :: (MonadIO m) => Navigator -> m [Maybe Gamepad]
getGamepads self
  = liftIO
      ((js_getGamepads (unNavigator self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"webkitGetUserMedia\"]($2, $3,\n$4)" js_webkitGetUserMedia ::
        JSRef Navigator ->
          JSRef Dictionary ->
            JSRef NavigatorUserMediaSuccessCallback ->
              JSRef NavigatorUserMediaErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitGetUserMedia Mozilla Navigator.webkitGetUserMedia documentation> 
webkitGetUserMedia ::
                   (MonadIO m, IsDictionary options) =>
                     Navigator ->
                       Maybe options ->
                         Maybe NavigatorUserMediaSuccessCallback ->
                           Maybe NavigatorUserMediaErrorCallback -> m ()
webkitGetUserMedia self options successCallback errorCallback
  = liftIO
      (js_webkitGetUserMedia (unNavigator self)
         (maybe jsNull (unDictionary . toDictionary) options)
         (maybe jsNull pToJSRef successCallback)
         (maybe jsNull pToJSRef errorCallback))
 
foreign import javascript unsafe
        "$1[\"registerProtocolHandler\"]($2,\n$3, $4)"
        js_registerProtocolHandler ::
        JSRef Navigator -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.registerProtocolHandler Mozilla Navigator.registerProtocolHandler documentation> 
registerProtocolHandler ::
                        (MonadIO m, ToJSString scheme, ToJSString url, ToJSString title) =>
                          Navigator -> scheme -> url -> title -> m ()
registerProtocolHandler self scheme url title
  = liftIO
      (js_registerProtocolHandler (unNavigator self) (toJSString scheme)
         (toJSString url)
         (toJSString title))
 
foreign import javascript unsafe
        "$1[\"isProtocolHandlerRegistered\"]($2,\n$3)"
        js_isProtocolHandlerRegistered ::
        JSRef Navigator -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.isProtocolHandlerRegistered Mozilla Navigator.isProtocolHandlerRegistered documentation> 
isProtocolHandlerRegistered ::
                            (MonadIO m, ToJSString scheme, ToJSString url,
                             FromJSString result) =>
                              Navigator -> scheme -> url -> m result
isProtocolHandlerRegistered self scheme url
  = liftIO
      (fromJSString <$>
         (js_isProtocolHandlerRegistered (unNavigator self)
            (toJSString scheme)
            (toJSString url)))
 
foreign import javascript unsafe
        "$1[\"unregisterProtocolHandler\"]($2,\n$3)"
        js_unregisterProtocolHandler ::
        JSRef Navigator -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.unregisterProtocolHandler Mozilla Navigator.unregisterProtocolHandler documentation> 
unregisterProtocolHandler ::
                          (MonadIO m, ToJSString scheme, ToJSString url) =>
                            Navigator -> scheme -> url -> m ()
unregisterProtocolHandler self scheme url
  = liftIO
      (js_unregisterProtocolHandler (unNavigator self)
         (toJSString scheme)
         (toJSString url))
 
foreign import javascript unsafe "($1[\"vibrate\"]($2) ? 1 : 0)"
        js_vibratePattern :: JSRef Navigator -> JSRef [Word] -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibratePattern :: (MonadIO m) => Navigator -> [Word] -> m Bool
vibratePattern self pattern'
  = liftIO
      (toJSRef pattern' >>=
         \ pattern'' -> js_vibratePattern (unNavigator self) pattern'')
 
foreign import javascript unsafe "($1[\"vibrate\"]($2) ? 1 : 0)"
        js_vibrate :: JSRef Navigator -> Word -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vibrate Mozilla Navigator.vibrate documentation> 
vibrate :: (MonadIO m) => Navigator -> Word -> m Bool
vibrate self time = liftIO (js_vibrate (unNavigator self) time)
 
foreign import javascript unsafe "($1[\"javaEnabled\"]() ? 1 : 0)"
        js_javaEnabled :: JSRef Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.javaEnabled Mozilla Navigator.javaEnabled documentation> 
javaEnabled :: (MonadIO m) => Navigator -> m Bool
javaEnabled self = liftIO (js_javaEnabled (unNavigator self))
 
foreign import javascript unsafe "$1[\"getStorageUpdates\"]()"
        js_getStorageUpdates :: JSRef Navigator -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.getStorageUpdates Mozilla Navigator.getStorageUpdates documentation> 
getStorageUpdates :: (MonadIO m) => Navigator -> m ()
getStorageUpdates self
  = liftIO (js_getStorageUpdates (unNavigator self))
 
foreign import javascript unsafe "$1[\"webkitBattery\"]"
        js_getWebkitBattery :: JSRef Navigator -> IO (JSRef BatteryManager)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitBattery Mozilla Navigator.webkitBattery documentation> 
getWebkitBattery ::
                 (MonadIO m) => Navigator -> m (Maybe BatteryManager)
getWebkitBattery self
  = liftIO ((js_getWebkitBattery (unNavigator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"geolocation\"]"
        js_getGeolocation :: JSRef Navigator -> IO (JSRef Geolocation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.geolocation Mozilla Navigator.geolocation documentation> 
getGeolocation :: (MonadIO m) => Navigator -> m (Maybe Geolocation)
getGeolocation self
  = liftIO ((js_getGeolocation (unNavigator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitTemporaryStorage\"]"
        js_getWebkitTemporaryStorage ::
        JSRef Navigator -> IO (JSRef StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitTemporaryStorage Mozilla Navigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorage ::
                          (MonadIO m) => Navigator -> m (Maybe StorageQuota)
getWebkitTemporaryStorage self
  = liftIO
      ((js_getWebkitTemporaryStorage (unNavigator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitPersistentStorage\"]"
        js_getWebkitPersistentStorage ::
        JSRef Navigator -> IO (JSRef StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitPersistentStorage Mozilla Navigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorage ::
                           (MonadIO m) => Navigator -> m (Maybe StorageQuota)
getWebkitPersistentStorage self
  = liftIO
      ((js_getWebkitPersistentStorage (unNavigator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appCodeName\"]"
        js_getAppCodeName :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appCodeName Mozilla Navigator.appCodeName documentation> 
getAppCodeName ::
               (MonadIO m, FromJSString result) => Navigator -> m result
getAppCodeName self
  = liftIO (fromJSString <$> (js_getAppCodeName (unNavigator self)))
 
foreign import javascript unsafe "$1[\"appName\"]" js_getAppName ::
        JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appName Mozilla Navigator.appName documentation> 
getAppName ::
           (MonadIO m, FromJSString result) => Navigator -> m result
getAppName self
  = liftIO (fromJSString <$> (js_getAppName (unNavigator self)))
 
foreign import javascript unsafe "$1[\"appVersion\"]"
        js_getAppVersion :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.appVersion Mozilla Navigator.appVersion documentation> 
getAppVersion ::
              (MonadIO m, FromJSString result) => Navigator -> m result
getAppVersion self
  = liftIO (fromJSString <$> (js_getAppVersion (unNavigator self)))
 
foreign import javascript unsafe "$1[\"language\"]" js_getLanguage
        :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.language Mozilla Navigator.language documentation> 
getLanguage ::
            (MonadIO m, FromJSString result) => Navigator -> m result
getLanguage self
  = liftIO (fromJSString <$> (js_getLanguage (unNavigator self)))
 
foreign import javascript unsafe "$1[\"userAgent\"]"
        js_getUserAgent :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.userAgent Mozilla Navigator.userAgent documentation> 
getUserAgent ::
             (MonadIO m, FromJSString result) => Navigator -> m result
getUserAgent self
  = liftIO (fromJSString <$> (js_getUserAgent (unNavigator self)))
 
foreign import javascript unsafe "$1[\"platform\"]" js_getPlatform
        :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.platform Mozilla Navigator.platform documentation> 
getPlatform ::
            (MonadIO m, FromJSString result) => Navigator -> m result
getPlatform self
  = liftIO (fromJSString <$> (js_getPlatform (unNavigator self)))
 
foreign import javascript unsafe "$1[\"plugins\"]" js_getPlugins ::
        JSRef Navigator -> IO (JSRef PluginArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.plugins Mozilla Navigator.plugins documentation> 
getPlugins :: (MonadIO m) => Navigator -> m (Maybe PluginArray)
getPlugins self
  = liftIO ((js_getPlugins (unNavigator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"mimeTypes\"]"
        js_getMimeTypes :: JSRef Navigator -> IO (JSRef MimeTypeArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.mimeTypes Mozilla Navigator.mimeTypes documentation> 
getMimeTypes :: (MonadIO m) => Navigator -> m (Maybe MimeTypeArray)
getMimeTypes self
  = liftIO ((js_getMimeTypes (unNavigator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"product\"]" js_getProduct ::
        JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.product Mozilla Navigator.product documentation> 
getProduct ::
           (MonadIO m, FromJSString result) => Navigator -> m result
getProduct self
  = liftIO (fromJSString <$> (js_getProduct (unNavigator self)))
 
foreign import javascript unsafe "$1[\"productSub\"]"
        js_getProductSub :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.productSub Mozilla Navigator.productSub documentation> 
getProductSub ::
              (MonadIO m, FromJSString result) => Navigator -> m result
getProductSub self
  = liftIO (fromJSString <$> (js_getProductSub (unNavigator self)))
 
foreign import javascript unsafe "$1[\"vendor\"]" js_getVendor ::
        JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vendor Mozilla Navigator.vendor documentation> 
getVendor ::
          (MonadIO m, FromJSString result) => Navigator -> m result
getVendor self
  = liftIO (fromJSString <$> (js_getVendor (unNavigator self)))
 
foreign import javascript unsafe "$1[\"vendorSub\"]"
        js_getVendorSub :: JSRef Navigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.vendorSub Mozilla Navigator.vendorSub documentation> 
getVendorSub ::
             (MonadIO m, FromJSString result) => Navigator -> m result
getVendorSub self
  = liftIO (fromJSString <$> (js_getVendorSub (unNavigator self)))
 
foreign import javascript unsafe "($1[\"cookieEnabled\"] ? 1 : 0)"
        js_getCookieEnabled :: JSRef Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.cookieEnabled Mozilla Navigator.cookieEnabled documentation> 
getCookieEnabled :: (MonadIO m) => Navigator -> m Bool
getCookieEnabled self
  = liftIO (js_getCookieEnabled (unNavigator self))
 
foreign import javascript unsafe "($1[\"onLine\"] ? 1 : 0)"
        js_getOnLine :: JSRef Navigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.onLine Mozilla Navigator.onLine documentation> 
getOnLine :: (MonadIO m) => Navigator -> m Bool
getOnLine self = liftIO (js_getOnLine (unNavigator self))
 
foreign import javascript unsafe "$1[\"hardwareConcurrency\"]"
        js_getHardwareConcurrency :: JSRef Navigator -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.hardwareConcurrency Mozilla Navigator.hardwareConcurrency documentation> 
getHardwareConcurrency :: (MonadIO m) => Navigator -> m Int
getHardwareConcurrency self
  = liftIO (js_getHardwareConcurrency (unNavigator self))