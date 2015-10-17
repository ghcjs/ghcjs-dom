{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaStreamAudioSourceNode
       (js_getMediaStream, getMediaStream, MediaStreamAudioSourceNode,
        castToMediaStreamAudioSourceNode, gTypeMediaStreamAudioSourceNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"mediaStream\"]"
        js_getMediaStream ::
        MediaStreamAudioSourceNode -> IO (Nullable MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioSourceNode.mediaStream Mozilla MediaStreamAudioSourceNode.mediaStream documentation> 
getMediaStream ::
               (MonadIO m) => MediaStreamAudioSourceNode -> m (Maybe MediaStream)
getMediaStream self
  = liftIO (nullableToMaybe <$> (js_getMediaStream (self)))