{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Request
       (js_newRequest, newRequest, js_clone, clone, clone_, js_getMethod,
        getMethod, js_getUrl, getUrl, js_getHeaders, getHeaders,
        js_getType, getType, js_getDestination, getDestination,
        js_getReferrer, getReferrer, js_getReferrerPolicy,
        getReferrerPolicy, js_getMode, getMode, js_getCredentials,
        getCredentials, js_getCache, getCache, js_getRedirect, getRedirect,
        js_getIntegrity, getIntegrity, Request(..), gTypeRequest)
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
 
foreign import javascript unsafe "new window[\"Request\"]($1, $2)"
        js_newRequest :: JSVal -> Optional RequestInit -> IO Request

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request Mozilla Request documentation> 
newRequest ::
           (MonadIO m, ToJSVal input) =>
             input -> Maybe RequestInit -> m Request
newRequest input init
  = liftIO
      (toJSVal input >>= \ input' -> js_newRequest input'
         (maybeToOptional init))
 
foreign import javascript safe "$1[\"clone\"]()" js_clone ::
        Request -> IO Request

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.clone Mozilla Request.clone documentation> 
clone :: (MonadIO m) => Request -> m Request
clone self = liftIO (js_clone self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.clone Mozilla Request.clone documentation> 
clone_ :: (MonadIO m) => Request -> m ()
clone_ self = liftIO (void (js_clone self))
 
foreign import javascript unsafe "$1[\"method\"]" js_getMethod ::
        Request -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.method Mozilla Request.method documentation> 
getMethod ::
          (MonadIO m, FromJSString result) => Request -> m result
getMethod self = liftIO (fromJSString <$> (js_getMethod self))
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        Request -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.url Mozilla Request.url documentation> 
getUrl :: (MonadIO m, FromJSString result) => Request -> m result
getUrl self = liftIO (fromJSString <$> (js_getUrl self))
 
foreign import javascript unsafe "$1[\"headers\"]" js_getHeaders ::
        Request -> IO Headers

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.headers Mozilla Request.headers documentation> 
getHeaders :: (MonadIO m) => Request -> m Headers
getHeaders self = liftIO (js_getHeaders self)
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        Request -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.type Mozilla Request.type documentation> 
getType :: (MonadIO m) => Request -> m RequestType
getType self = liftIO ((js_getType self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"destination\"]"
        js_getDestination :: Request -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.destination Mozilla Request.destination documentation> 
getDestination :: (MonadIO m) => Request -> m RequestDestination
getDestination self
  = liftIO ((js_getDestination self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"referrer\"]" js_getReferrer
        :: Request -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.referrer Mozilla Request.referrer documentation> 
getReferrer ::
            (MonadIO m, FromJSString result) => Request -> m result
getReferrer self = liftIO (fromJSString <$> (js_getReferrer self))
 
foreign import javascript unsafe "$1[\"referrerPolicy\"]"
        js_getReferrerPolicy :: Request -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.referrerPolicy Mozilla Request.referrerPolicy documentation> 
getReferrerPolicy :: (MonadIO m) => Request -> m ReferrerPolicy
getReferrerPolicy self
  = liftIO ((js_getReferrerPolicy self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        Request -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.mode Mozilla Request.mode documentation> 
getMode :: (MonadIO m) => Request -> m RequestMode
getMode self = liftIO ((js_getMode self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"credentials\"]"
        js_getCredentials :: Request -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.credentials Mozilla Request.credentials documentation> 
getCredentials :: (MonadIO m) => Request -> m RequestCredentials
getCredentials self
  = liftIO ((js_getCredentials self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"cache\"]" js_getCache ::
        Request -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.cache Mozilla Request.cache documentation> 
getCache :: (MonadIO m) => Request -> m RequestCache
getCache self = liftIO ((js_getCache self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"redirect\"]" js_getRedirect
        :: Request -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.redirect Mozilla Request.redirect documentation> 
getRedirect :: (MonadIO m) => Request -> m RequestRedirect
getRedirect self
  = liftIO ((js_getRedirect self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"integrity\"]"
        js_getIntegrity :: Request -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Request.integrity Mozilla Request.integrity documentation> 
getIntegrity ::
             (MonadIO m, FromJSString result) => Request -> m result
getIntegrity self
  = liftIO (fromJSString <$> (js_getIntegrity self))