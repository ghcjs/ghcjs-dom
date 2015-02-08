{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioStreamTrack
       (ghcjs_dom_audio_stream_track_new, audioStreamTrackNew,
        AudioStreamTrack, IsAudioStreamTrack, castToAudioStreamTrack,
        gTypeAudioStreamTrack, toAudioStreamTrack)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"AudioStreamTrack\"]($1)"
        ghcjs_dom_audio_stream_track_new ::
        JSRef Dictionary -> IO (JSRef AudioStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioStreamTrack Mozilla AudioStreamTrack documentation> 
audioStreamTrackNew ::
                    (MonadIO m, IsDictionary audioConstraints) =>
                      Maybe audioConstraints -> m AudioStreamTrack
audioStreamTrackNew audioConstraints
  = liftIO
      (ghcjs_dom_audio_stream_track_new
         (maybe jsNull (unDictionary . toDictionary) audioConstraints)
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.AudioStreamTrack (
  ) where
#endif
