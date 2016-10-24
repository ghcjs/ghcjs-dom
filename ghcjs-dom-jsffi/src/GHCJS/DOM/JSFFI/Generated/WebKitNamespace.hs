{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitNamespace
       (js_getMessageHandlers, getMessageHandlers,
        getMessageHandlersUnsafe, getMessageHandlersUnchecked,
        WebKitNamespace(..), gTypeWebKitNamespace)
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
 
foreign import javascript unsafe "$1[\"messageHandlers\"]"
        js_getMessageHandlers ::
        WebKitNamespace -> IO (Nullable UserMessageHandlersNamespace)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace.messageHandlers Mozilla WebKitNamespace.messageHandlers documentation> 
getMessageHandlers ::
                   (MonadIO m) =>
                     WebKitNamespace -> m (Maybe UserMessageHandlersNamespace)
getMessageHandlers self
  = liftIO (nullableToMaybe <$> (js_getMessageHandlers (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace.messageHandlers Mozilla WebKitNamespace.messageHandlers documentation> 
getMessageHandlersUnsafe ::
                         (MonadIO m, HasCallStack) =>
                           WebKitNamespace -> m UserMessageHandlersNamespace
getMessageHandlersUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMessageHandlers (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace.messageHandlers Mozilla WebKitNamespace.messageHandlers documentation> 
getMessageHandlersUnchecked ::
                            (MonadIO m) => WebKitNamespace -> m UserMessageHandlersNamespace
getMessageHandlersUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getMessageHandlers (self)))