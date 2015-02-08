{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VideoStreamTrack
       (ghcjs_dom_video_stream_track_new, videoStreamTrackNew,
        VideoStreamTrack, IsVideoStreamTrack, castToVideoStreamTrack,
        gTypeVideoStreamTrack, toVideoStreamTrack)
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
        "new window[\"VideoStreamTrack\"]($1)"
        ghcjs_dom_video_stream_track_new ::
        JSRef Dictionary -> IO (JSRef VideoStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoStreamTrack Mozilla VideoStreamTrack documentation> 
videoStreamTrackNew ::
                    (MonadIO m, IsDictionary videoConstraints) =>
                      Maybe videoConstraints -> m VideoStreamTrack
videoStreamTrackNew videoConstraints
  = liftIO
      (ghcjs_dom_video_stream_track_new
         (maybe jsNull (unDictionary . toDictionary) videoConstraints)
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.VideoStreamTrack (
  ) where
#endif
