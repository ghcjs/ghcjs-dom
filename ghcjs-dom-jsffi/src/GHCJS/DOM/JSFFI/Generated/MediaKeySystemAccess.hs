{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeySystemAccess
       (js_getConfiguration, getConfiguration, getConfiguration_,
        js_createMediaKeys, createMediaKeys, createMediaKeys_,
        js_getKeySystem, getKeySystem, MediaKeySystemAccess(..),
        gTypeMediaKeySystemAccess)
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
 
foreign import javascript unsafe "$1[\"getConfiguration\"]()"
        js_getConfiguration ::
        MediaKeySystemAccess -> IO MediaKeySystemConfiguration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.getConfiguration Mozilla MediaKeySystemAccess.getConfiguration documentation> 
getConfiguration ::
                 (MonadIO m) =>
                   MediaKeySystemAccess -> m MediaKeySystemConfiguration
getConfiguration self = liftIO (js_getConfiguration self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.getConfiguration Mozilla MediaKeySystemAccess.getConfiguration documentation> 
getConfiguration_ :: (MonadIO m) => MediaKeySystemAccess -> m ()
getConfiguration_ self = liftIO (void (js_getConfiguration self))
 
foreign import javascript interruptible
        "$1[\"createMediaKeys\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_createMediaKeys :: MediaKeySystemAccess -> IO (JSVal, MediaKeys)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.createMediaKeys Mozilla MediaKeySystemAccess.createMediaKeys documentation> 
createMediaKeys ::
                (MonadIO m) => MediaKeySystemAccess -> m MediaKeys
createMediaKeys self
  = liftIO ((js_createMediaKeys self) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.createMediaKeys Mozilla MediaKeySystemAccess.createMediaKeys documentation> 
createMediaKeys_ :: (MonadIO m) => MediaKeySystemAccess -> m ()
createMediaKeys_ self = liftIO (void (js_createMediaKeys self))
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: MediaKeySystemAccess -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess.keySystem Mozilla MediaKeySystemAccess.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) =>
               MediaKeySystemAccess -> m result
getKeySystem self
  = liftIO (fromJSString <$> (js_getKeySystem self))