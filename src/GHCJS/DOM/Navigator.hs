{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Navigator
       (ghcjs_dom_navigator_java_enabled, navigatorJavaEnabled,
        ghcjs_dom_navigator_get_storage_updates,
        navigatorGetStorageUpdates, ghcjs_dom_navigator_get_app_code_name,
        navigatorGetAppCodeName, ghcjs_dom_navigator_get_app_name,
        navigatorGetAppName, ghcjs_dom_navigator_get_app_version,
        navigatorGetAppVersion, ghcjs_dom_navigator_get_language,
        navigatorGetLanguage, ghcjs_dom_navigator_get_user_agent,
        navigatorGetUserAgent, ghcjs_dom_navigator_get_platform,
        navigatorGetPlatform, ghcjs_dom_navigator_get_plugins,
        navigatorGetPlugins, ghcjs_dom_navigator_get_mime_types,
        navigatorGetMimeTypes, ghcjs_dom_navigator_get_product,
        navigatorGetProduct, ghcjs_dom_navigator_get_product_sub,
        navigatorGetProductSub, ghcjs_dom_navigator_get_vendor,
        navigatorGetVendor, ghcjs_dom_navigator_get_vendor_sub,
        navigatorGetVendorSub, ghcjs_dom_navigator_get_cookie_enabled,
        navigatorGetCookieEnabled, ghcjs_dom_navigator_get_on_line,
        navigatorGetOnLine)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"javaEnabled\"]() ? 1 : 0)"
        ghcjs_dom_navigator_java_enabled :: JSRef Navigator -> IO Bool
#else 
ghcjs_dom_navigator_java_enabled :: JSRef Navigator -> IO Bool
ghcjs_dom_navigator_java_enabled = undefined
#endif
 
navigatorJavaEnabled :: (IsNavigator self) => self -> IO Bool
navigatorJavaEnabled self
  = ghcjs_dom_navigator_java_enabled (unNavigator (toNavigator self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getStorageUpdates\"]()"
        ghcjs_dom_navigator_get_storage_updates :: JSRef Navigator -> IO ()
#else 
ghcjs_dom_navigator_get_storage_updates :: JSRef Navigator -> IO ()
ghcjs_dom_navigator_get_storage_updates = undefined
#endif
 
navigatorGetStorageUpdates :: (IsNavigator self) => self -> IO ()
navigatorGetStorageUpdates self
  = ghcjs_dom_navigator_get_storage_updates
      (unNavigator (toNavigator self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appCodeName\"]"
        ghcjs_dom_navigator_get_app_code_name ::
        JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_app_code_name ::
                                        JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_app_code_name = undefined
#endif
 
navigatorGetAppCodeName ::
                        (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetAppCodeName self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_app_code_name
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appName\"]"
        ghcjs_dom_navigator_get_app_name :: JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_app_name :: JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_app_name = undefined
#endif
 
navigatorGetAppName ::
                    (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetAppName self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_app_name (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appVersion\"]"
        ghcjs_dom_navigator_get_app_version ::
        JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_app_version ::
                                      JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_app_version = undefined
#endif
 
navigatorGetAppVersion ::
                       (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetAppVersion self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_app_version
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"language\"]"
        ghcjs_dom_navigator_get_language :: JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_language :: JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_language = undefined
#endif
 
navigatorGetLanguage ::
                     (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetLanguage self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_language (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"userAgent\"]"
        ghcjs_dom_navigator_get_user_agent ::
        JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_user_agent ::
                                     JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_user_agent = undefined
#endif
 
navigatorGetUserAgent ::
                      (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetUserAgent self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_user_agent
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"platform\"]"
        ghcjs_dom_navigator_get_platform :: JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_platform :: JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_platform = undefined
#endif
 
navigatorGetPlatform ::
                     (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetPlatform self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_platform (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"plugins\"]"
        ghcjs_dom_navigator_get_plugins ::
        JSRef Navigator -> IO (JSRef DOMPluginArray)
#else 
ghcjs_dom_navigator_get_plugins ::
                                  JSRef Navigator -> IO (JSRef DOMPluginArray)
ghcjs_dom_navigator_get_plugins = undefined
#endif
 
navigatorGetPlugins ::
                    (IsNavigator self) => self -> IO (Maybe DOMPluginArray)
navigatorGetPlugins self
  = fmap DOMPluginArray . maybeJSNull <$>
      (ghcjs_dom_navigator_get_plugins (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mimeTypes\"]"
        ghcjs_dom_navigator_get_mime_types ::
        JSRef Navigator -> IO (JSRef DOMMimeTypeArray)
#else 
ghcjs_dom_navigator_get_mime_types ::
                                     JSRef Navigator -> IO (JSRef DOMMimeTypeArray)
ghcjs_dom_navigator_get_mime_types = undefined
#endif
 
navigatorGetMimeTypes ::
                      (IsNavigator self) => self -> IO (Maybe DOMMimeTypeArray)
navigatorGetMimeTypes self
  = fmap DOMMimeTypeArray . maybeJSNull <$>
      (ghcjs_dom_navigator_get_mime_types
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"product\"]"
        ghcjs_dom_navigator_get_product :: JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_product :: JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_product = undefined
#endif
 
navigatorGetProduct ::
                    (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetProduct self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_product (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"productSub\"]"
        ghcjs_dom_navigator_get_product_sub ::
        JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_product_sub ::
                                      JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_product_sub = undefined
#endif
 
navigatorGetProductSub ::
                       (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetProductSub self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_product_sub
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vendor\"]"
        ghcjs_dom_navigator_get_vendor :: JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_vendor :: JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_vendor = undefined
#endif
 
navigatorGetVendor ::
                   (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetVendor self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_vendor (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vendorSub\"]"
        ghcjs_dom_navigator_get_vendor_sub ::
        JSRef Navigator -> IO JSString
#else 
ghcjs_dom_navigator_get_vendor_sub ::
                                     JSRef Navigator -> IO JSString
ghcjs_dom_navigator_get_vendor_sub = undefined
#endif
 
navigatorGetVendorSub ::
                      (IsNavigator self, FromJSString result) => self -> IO result
navigatorGetVendorSub self
  = fromJSString <$>
      (ghcjs_dom_navigator_get_vendor_sub
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"cookieEnabled\"] ? 1 : 0)"
        ghcjs_dom_navigator_get_cookie_enabled ::
        JSRef Navigator -> IO Bool
#else 
ghcjs_dom_navigator_get_cookie_enabled ::
                                         JSRef Navigator -> IO Bool
ghcjs_dom_navigator_get_cookie_enabled = undefined
#endif
 
navigatorGetCookieEnabled :: (IsNavigator self) => self -> IO Bool
navigatorGetCookieEnabled self
  = ghcjs_dom_navigator_get_cookie_enabled
      (unNavigator (toNavigator self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"onLine\"] ? 1 : 0)"
        ghcjs_dom_navigator_get_on_line :: JSRef Navigator -> IO Bool
#else 
ghcjs_dom_navigator_get_on_line :: JSRef Navigator -> IO Bool
ghcjs_dom_navigator_get_on_line = undefined
#endif
 
navigatorGetOnLine :: (IsNavigator self) => self -> IO Bool
navigatorGetOnLine self
  = ghcjs_dom_navigator_get_on_line (unNavigator (toNavigator self))