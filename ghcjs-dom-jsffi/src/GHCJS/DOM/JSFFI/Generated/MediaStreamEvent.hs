{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaStreamEvent
       (js_getStream, getStream, getStreamUnsafe, getStreamUnchecked,
        MediaStreamEvent(..), gTypeMediaStreamEvent)
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
 
foreign import javascript unsafe "$1[\"stream\"]" js_getStream ::
        MediaStreamEvent -> IO (Nullable MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent.stream Mozilla MediaStreamEvent.stream documentation> 
getStream ::
          (MonadIO m) => MediaStreamEvent -> m (Maybe MediaStream)
getStream self = liftIO (nullableToMaybe <$> (js_getStream (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent.stream Mozilla MediaStreamEvent.stream documentation> 
getStreamUnsafe ::
                (MonadIO m, HasCallStack) => MediaStreamEvent -> m MediaStream
getStreamUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStream (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent.stream Mozilla MediaStreamEvent.stream documentation> 
getStreamUnchecked ::
                   (MonadIO m) => MediaStreamEvent -> m MediaStream
getStreamUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStream (self)))