{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaElementAudioSourceNode
       (js_getMediaElement, getMediaElement, MediaElementAudioSourceNode,
        castToMediaElementAudioSourceNode,
        gTypeMediaElementAudioSourceNode)
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
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"mediaElement\"]"
        js_getMediaElement ::
        MediaElementAudioSourceNode -> IO (Nullable HTMLMediaElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode.mediaElement Mozilla MediaElementAudioSourceNode.mediaElement documentation> 
getMediaElement ::
                (MonadIO m) =>
                  MediaElementAudioSourceNode -> m (Maybe HTMLMediaElement)
getMediaElement self
  = liftIO (nullableToMaybe <$> (js_getMediaElement (self)))