{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VideoStreamTrack
       (js_newVideoStreamTrack, newVideoStreamTrack, VideoStreamTrack,
        castToVideoStreamTrack, gTypeVideoStreamTrack)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"VideoStreamTrack\"]($1)" js_newVideoStreamTrack ::
        JSRef Dictionary -> IO (JSRef VideoStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoStreamTrack Mozilla VideoStreamTrack documentation> 
newVideoStreamTrack ::
                    (MonadIO m, IsDictionary videoConstraints) =>
                      Maybe videoConstraints -> m VideoStreamTrack
newVideoStreamTrack videoConstraints
  = liftIO
      (js_newVideoStreamTrack
         (maybe jsNull (unDictionary . toDictionary) videoConstraints)
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.VideoStreamTrack (
  ) where
#endif
