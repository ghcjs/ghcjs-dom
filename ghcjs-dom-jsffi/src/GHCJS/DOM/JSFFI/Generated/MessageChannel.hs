{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MessageChannel
       (js_newMessageChannel, newMessageChannel, js_getPort1, getPort1,
        getPort1Unsafe, getPort1Unchecked, js_getPort2, getPort2,
        getPort2Unsafe, getPort2Unchecked, MessageChannel(..),
        gTypeMessageChannel)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "new window[\"MessageChannel\"]()"
        js_newMessageChannel :: IO MessageChannel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel Mozilla MessageChannel documentation> 
newMessageChannel :: (MonadIO m) => m MessageChannel
newMessageChannel = liftIO (js_newMessageChannel)
 
foreign import javascript unsafe "$1[\"port1\"]" js_getPort1 ::
        MessageChannel -> IO (Nullable MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port1 Mozilla MessageChannel.port1 documentation> 
getPort1 :: (MonadIO m) => MessageChannel -> m (Maybe MessagePort)
getPort1 self = liftIO (nullableToMaybe <$> (js_getPort1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port1 Mozilla MessageChannel.port1 documentation> 
getPort1Unsafe ::
               (MonadIO m, HasCallStack) => MessageChannel -> m MessagePort
getPort1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPort1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port1 Mozilla MessageChannel.port1 documentation> 
getPort1Unchecked :: (MonadIO m) => MessageChannel -> m MessagePort
getPort1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPort1 (self)))
 
foreign import javascript unsafe "$1[\"port2\"]" js_getPort2 ::
        MessageChannel -> IO (Nullable MessagePort)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port2 Mozilla MessageChannel.port2 documentation> 
getPort2 :: (MonadIO m) => MessageChannel -> m (Maybe MessagePort)
getPort2 self = liftIO (nullableToMaybe <$> (js_getPort2 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port2 Mozilla MessageChannel.port2 documentation> 
getPort2Unsafe ::
               (MonadIO m, HasCallStack) => MessageChannel -> m MessagePort
getPort2Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPort2 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel.port2 Mozilla MessageChannel.port2 documentation> 
getPort2Unchecked :: (MonadIO m) => MessageChannel -> m MessagePort
getPort2Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPort2 (self)))