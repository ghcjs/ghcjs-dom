{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaStreamAudioSourceNode
       (js_getMediaStream, getMediaStream, getMediaStreamUnsafe,
        getMediaStreamUnchecked, MediaStreamAudioSourceNode(..),
        gTypeMediaStreamAudioSourceNode)
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
 
foreign import javascript unsafe "$1[\"mediaStream\"]"
        js_getMediaStream ::
        MediaStreamAudioSourceNode -> IO (Nullable MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioSourceNode.mediaStream Mozilla MediaStreamAudioSourceNode.mediaStream documentation> 
getMediaStream ::
               (MonadIO m) => MediaStreamAudioSourceNode -> m (Maybe MediaStream)
getMediaStream self
  = liftIO (nullableToMaybe <$> (js_getMediaStream (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioSourceNode.mediaStream Mozilla MediaStreamAudioSourceNode.mediaStream documentation> 
getMediaStreamUnsafe ::
                     (MonadIO m, HasCallStack) =>
                       MediaStreamAudioSourceNode -> m MediaStream
getMediaStreamUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMediaStream (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioSourceNode.mediaStream Mozilla MediaStreamAudioSourceNode.mediaStream documentation> 
getMediaStreamUnchecked ::
                        (MonadIO m) => MediaStreamAudioSourceNode -> m MediaStream
getMediaStreamUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getMediaStream (self)))