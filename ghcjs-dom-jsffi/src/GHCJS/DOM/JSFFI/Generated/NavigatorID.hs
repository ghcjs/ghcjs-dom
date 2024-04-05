{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NavigatorID
       (js_getAppCodeName, getAppCodeName, js_getAppName, getAppName,
        js_getAppVersion, getAppVersion, js_getPlatform, getPlatform,
        js_getProduct, getProduct, js_getProductSub, getProductSub,
        js_getUserAgent, getUserAgent, js_getVendor, getVendor,
        js_getVendorSub, getVendorSub, NavigatorID(..), gTypeNavigatorID,
        IsNavigatorID, toNavigatorID)
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
 
foreign import javascript unsafe "$1[\"appCodeName\"]"
        js_getAppCodeName :: NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.appCodeName Mozilla NavigatorID.appCodeName documentation> 
getAppCodeName ::
               (MonadIO m, IsNavigatorID self, FromJSString result) =>
                 self -> m result
getAppCodeName self
  = liftIO
      (fromJSString <$> (js_getAppCodeName (toNavigatorID self)))
 
foreign import javascript unsafe "$1[\"appName\"]" js_getAppName ::
        NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.appName Mozilla NavigatorID.appName documentation> 
getAppName ::
           (MonadIO m, IsNavigatorID self, FromJSString result) =>
             self -> m result
getAppName self
  = liftIO (fromJSString <$> (js_getAppName (toNavigatorID self)))
 
foreign import javascript unsafe "$1[\"appVersion\"]"
        js_getAppVersion :: NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.appVersion Mozilla NavigatorID.appVersion documentation> 
getAppVersion ::
              (MonadIO m, IsNavigatorID self, FromJSString result) =>
                self -> m result
getAppVersion self
  = liftIO (fromJSString <$> (js_getAppVersion (toNavigatorID self)))
 
foreign import javascript unsafe "$1[\"platform\"]" js_getPlatform
        :: NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.platform Mozilla NavigatorID.platform documentation> 
getPlatform ::
            (MonadIO m, IsNavigatorID self, FromJSString result) =>
              self -> m result
getPlatform self
  = liftIO (fromJSString <$> (js_getPlatform (toNavigatorID self)))
 
foreign import javascript unsafe "$1[\"product\"]" js_getProduct ::
        NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.product Mozilla NavigatorID.product documentation> 
getProduct ::
           (MonadIO m, IsNavigatorID self, FromJSString result) =>
             self -> m result
getProduct self
  = liftIO (fromJSString <$> (js_getProduct (toNavigatorID self)))
 
foreign import javascript unsafe "$1[\"productSub\"]"
        js_getProductSub :: NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.productSub Mozilla NavigatorID.productSub documentation> 
getProductSub ::
              (MonadIO m, IsNavigatorID self, FromJSString result) =>
                self -> m result
getProductSub self
  = liftIO (fromJSString <$> (js_getProductSub (toNavigatorID self)))
 
foreign import javascript unsafe "$1[\"userAgent\"]"
        js_getUserAgent :: NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.userAgent Mozilla NavigatorID.userAgent documentation> 
getUserAgent ::
             (MonadIO m, IsNavigatorID self, FromJSString result) =>
               self -> m result
getUserAgent self
  = liftIO (fromJSString <$> (js_getUserAgent (toNavigatorID self)))
 
foreign import javascript unsafe "$1[\"vendor\"]" js_getVendor ::
        NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.vendor Mozilla NavigatorID.vendor documentation> 
getVendor ::
          (MonadIO m, IsNavigatorID self, FromJSString result) =>
            self -> m result
getVendor self
  = liftIO (fromJSString <$> (js_getVendor (toNavigatorID self)))
 
foreign import javascript unsafe "$1[\"vendorSub\"]"
        js_getVendorSub :: NavigatorID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorID.vendorSub Mozilla NavigatorID.vendorSub documentation> 
getVendorSub ::
             (MonadIO m, IsNavigatorID self, FromJSString result) =>
               self -> m result
getVendorSub self
  = liftIO (fromJSString <$> (js_getVendorSub (toNavigatorID self)))