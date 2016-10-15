{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaStreamAudioDestinationNode
       (js_getStream, getStream, getStreamUnchecked,
        MediaStreamAudioDestinationNode(..),
        gTypeMediaStreamAudioDestinationNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"stream\"]" js_getStream ::
        MediaStreamAudioDestinationNode -> IO (Nullable MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioDestinationNode.stream Mozilla MediaStreamAudioDestinationNode.stream documentation> 
getStream ::
          (MonadIO m) =>
            MediaStreamAudioDestinationNode -> m (Maybe MediaStream)
getStream self = liftIO (nullableToMaybe <$> (js_getStream (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioDestinationNode.stream Mozilla MediaStreamAudioDestinationNode.stream documentation> 
getStreamUnchecked ::
                   (MonadIO m) => MediaStreamAudioDestinationNode -> m MediaStream
getStreamUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStream (self)))