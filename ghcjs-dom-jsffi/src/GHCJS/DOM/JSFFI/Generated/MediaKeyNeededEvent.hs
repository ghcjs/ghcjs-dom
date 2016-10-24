{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeyNeededEvent
       (js_getInitData, getInitData, getInitDataUnsafe,
        getInitDataUnchecked, MediaKeyNeededEvent(..),
        gTypeMediaKeyNeededEvent)
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
 
foreign import javascript unsafe "$1[\"initData\"]" js_getInitData
        :: MediaKeyNeededEvent -> IO (Nullable Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent.initData Mozilla MediaKeyNeededEvent.initData documentation> 
getInitData ::
            (MonadIO m) => MediaKeyNeededEvent -> m (Maybe Uint8Array)
getInitData self
  = liftIO (nullableToMaybe <$> (js_getInitData (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent.initData Mozilla MediaKeyNeededEvent.initData documentation> 
getInitDataUnsafe ::
                  (MonadIO m, HasCallStack) => MediaKeyNeededEvent -> m Uint8Array
getInitDataUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getInitData (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent.initData Mozilla MediaKeyNeededEvent.initData documentation> 
getInitDataUnchecked ::
                     (MonadIO m) => MediaKeyNeededEvent -> m Uint8Array
getInitDataUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getInitData (self)))