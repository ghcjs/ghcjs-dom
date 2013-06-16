{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Navigator
       (webkit_dom_navigator_java_enabled, navigatorJavaEnabled,
        webkit_dom_navigator_get_storage_updates,
        navigatorGetStorageUpdates, webkit_dom_navigator_get_app_code_name,
        navigatorGetAppCodeName, webkit_dom_navigator_get_app_name,
        navigatorGetAppName, webkit_dom_navigator_get_app_version,
        navigatorGetAppVersion, webkit_dom_navigator_get_language,
        navigatorGetLanguage, webkit_dom_navigator_get_user_agent,
        navigatorGetUserAgent, webkit_dom_navigator_get_platform,
        navigatorGetPlatform, webkit_dom_navigator_get_plugins,
        navigatorGetPlugins, webkit_dom_navigator_get_mime_types,
        navigatorGetMimeTypes, webkit_dom_navigator_get_product,
        navigatorGetProduct, webkit_dom_navigator_get_product_sub,
        navigatorGetProductSub, webkit_dom_navigator_get_vendor,
        navigatorGetVendor, webkit_dom_navigator_get_vendor_sub,
        navigatorGetVendorSub, webkit_dom_navigator_get_cookie_enabled,
        navigatorGetCookieEnabled, webkit_dom_navigator_get_on_line,
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
foreign import javascript unsafe "$1[\"javaEnabled\"]()"
        webkit_dom_navigator_java_enabled :: JSRef Navigator -> IO JSBool
#else 
webkit_dom_navigator_java_enabled :: JSRef Navigator -> IO JSBool
webkit_dom_navigator_java_enabled = undefined
#endif
 
navigatorJavaEnabled :: (NavigatorClass self) => self -> IO Bool
navigatorJavaEnabled self
  = fromJSBool <$>
      (webkit_dom_navigator_java_enabled
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getStorageUpdates\"]()"
        webkit_dom_navigator_get_storage_updates ::
        JSRef Navigator -> IO ()
#else 
webkit_dom_navigator_get_storage_updates ::
                                           JSRef Navigator -> IO ()
webkit_dom_navigator_get_storage_updates = undefined
#endif
 
navigatorGetStorageUpdates ::
                           (NavigatorClass self) => self -> IO ()
navigatorGetStorageUpdates self
  = webkit_dom_navigator_get_storage_updates
      (unNavigator (toNavigator self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appCodeName\"]"
        webkit_dom_navigator_get_app_code_name ::
        JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_app_code_name ::
                                         JSRef Navigator -> IO JSString
webkit_dom_navigator_get_app_code_name = undefined
#endif
 
navigatorGetAppCodeName ::
                        (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetAppCodeName self
  = fromJSString <$>
      (webkit_dom_navigator_get_app_code_name
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appName\"]"
        webkit_dom_navigator_get_app_name :: JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_app_name :: JSRef Navigator -> IO JSString
webkit_dom_navigator_get_app_name = undefined
#endif
 
navigatorGetAppName ::
                    (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetAppName self
  = fromJSString <$>
      (webkit_dom_navigator_get_app_name
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appVersion\"]"
        webkit_dom_navigator_get_app_version ::
        JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_app_version ::
                                       JSRef Navigator -> IO JSString
webkit_dom_navigator_get_app_version = undefined
#endif
 
navigatorGetAppVersion ::
                       (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetAppVersion self
  = fromJSString <$>
      (webkit_dom_navigator_get_app_version
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"language\"]"
        webkit_dom_navigator_get_language :: JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_language :: JSRef Navigator -> IO JSString
webkit_dom_navigator_get_language = undefined
#endif
 
navigatorGetLanguage ::
                     (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetLanguage self
  = fromJSString <$>
      (webkit_dom_navigator_get_language
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"userAgent\"]"
        webkit_dom_navigator_get_user_agent ::
        JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_user_agent ::
                                      JSRef Navigator -> IO JSString
webkit_dom_navigator_get_user_agent = undefined
#endif
 
navigatorGetUserAgent ::
                      (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetUserAgent self
  = fromJSString <$>
      (webkit_dom_navigator_get_user_agent
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"platform\"]"
        webkit_dom_navigator_get_platform :: JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_platform :: JSRef Navigator -> IO JSString
webkit_dom_navigator_get_platform = undefined
#endif
 
navigatorGetPlatform ::
                     (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetPlatform self
  = fromJSString <$>
      (webkit_dom_navigator_get_platform
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"plugins\"]"
        webkit_dom_navigator_get_plugins ::
        JSRef Navigator -> IO (JSRef DOMPluginArray)
#else 
webkit_dom_navigator_get_plugins ::
                                   JSRef Navigator -> IO (JSRef DOMPluginArray)
webkit_dom_navigator_get_plugins = undefined
#endif
 
navigatorGetPlugins ::
                    (NavigatorClass self) => self -> IO (Maybe DOMPluginArray)
navigatorGetPlugins self
  = fmap DOMPluginArray . maybeJSNull <$>
      (webkit_dom_navigator_get_plugins (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mimeTypes\"]"
        webkit_dom_navigator_get_mime_types ::
        JSRef Navigator -> IO (JSRef DOMMimeTypeArray)
#else 
webkit_dom_navigator_get_mime_types ::
                                      JSRef Navigator -> IO (JSRef DOMMimeTypeArray)
webkit_dom_navigator_get_mime_types = undefined
#endif
 
navigatorGetMimeTypes ::
                      (NavigatorClass self) => self -> IO (Maybe DOMMimeTypeArray)
navigatorGetMimeTypes self
  = fmap DOMMimeTypeArray . maybeJSNull <$>
      (webkit_dom_navigator_get_mime_types
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"product\"]"
        webkit_dom_navigator_get_product :: JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_product :: JSRef Navigator -> IO JSString
webkit_dom_navigator_get_product = undefined
#endif
 
navigatorGetProduct ::
                    (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetProduct self
  = fromJSString <$>
      (webkit_dom_navigator_get_product (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"productSub\"]"
        webkit_dom_navigator_get_product_sub ::
        JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_product_sub ::
                                       JSRef Navigator -> IO JSString
webkit_dom_navigator_get_product_sub = undefined
#endif
 
navigatorGetProductSub ::
                       (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetProductSub self
  = fromJSString <$>
      (webkit_dom_navigator_get_product_sub
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vendor\"]"
        webkit_dom_navigator_get_vendor :: JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_vendor :: JSRef Navigator -> IO JSString
webkit_dom_navigator_get_vendor = undefined
#endif
 
navigatorGetVendor ::
                   (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetVendor self
  = fromJSString <$>
      (webkit_dom_navigator_get_vendor (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vendorSub\"]"
        webkit_dom_navigator_get_vendor_sub ::
        JSRef Navigator -> IO JSString
#else 
webkit_dom_navigator_get_vendor_sub ::
                                      JSRef Navigator -> IO JSString
webkit_dom_navigator_get_vendor_sub = undefined
#endif
 
navigatorGetVendorSub ::
                      (NavigatorClass self, FromJSString result) => self -> IO result
navigatorGetVendorSub self
  = fromJSString <$>
      (webkit_dom_navigator_get_vendor_sub
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cookieEnabled\"]"
        webkit_dom_navigator_get_cookie_enabled ::
        JSRef Navigator -> IO JSBool
#else 
webkit_dom_navigator_get_cookie_enabled ::
                                          JSRef Navigator -> IO JSBool
webkit_dom_navigator_get_cookie_enabled = undefined
#endif
 
navigatorGetCookieEnabled ::
                          (NavigatorClass self) => self -> IO Bool
navigatorGetCookieEnabled self
  = fromJSBool <$>
      (webkit_dom_navigator_get_cookie_enabled
         (unNavigator (toNavigator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"onLine\"]"
        webkit_dom_navigator_get_on_line :: JSRef Navigator -> IO JSBool
#else 
webkit_dom_navigator_get_on_line :: JSRef Navigator -> IO JSBool
webkit_dom_navigator_get_on_line = undefined
#endif
 
navigatorGetOnLine :: (NavigatorClass self) => self -> IO Bool
navigatorGetOnLine self
  = fromJSBool <$>
      (webkit_dom_navigator_get_on_line (unNavigator (toNavigator self)))