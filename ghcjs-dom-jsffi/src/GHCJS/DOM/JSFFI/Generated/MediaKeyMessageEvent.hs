{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeyMessageEvent
       (js_getMessage, getMessage, getMessageUnsafe, getMessageUnchecked,
        js_getDestinationURL, getDestinationURL, MediaKeyMessageEvent(..),
        gTypeMediaKeyMessageEvent)
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
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        MediaKeyMessageEvent -> IO (Nullable Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessage ::
           (MonadIO m) => MediaKeyMessageEvent -> m (Maybe Uint8Array)
getMessage self
  = liftIO (nullableToMaybe <$> (js_getMessage (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessageUnsafe ::
                 (MonadIO m, HasCallStack) => MediaKeyMessageEvent -> m Uint8Array
getMessageUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMessage (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessageUnchecked ::
                    (MonadIO m) => MediaKeyMessageEvent -> m Uint8Array
getMessageUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getMessage (self)))
 
foreign import javascript unsafe "$1[\"destinationURL\"]"
        js_getDestinationURL :: MediaKeyMessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.destinationURL Mozilla WebKitMediaKeyMessageEvent.destinationURL documentation> 
getDestinationURL ::
                  (MonadIO m, FromJSString result) =>
                    MediaKeyMessageEvent -> m result
getDestinationURL self
  = liftIO (fromJSString <$> (js_getDestinationURL (self)))