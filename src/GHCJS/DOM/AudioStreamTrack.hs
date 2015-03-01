{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioStreamTrack
       (js_newAudioStreamTrack, newAudioStreamTrack, AudioStreamTrack,
        castToAudioStreamTrack, gTypeAudioStreamTrack)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"AudioStreamTrack\"]($1)" js_newAudioStreamTrack ::
        JSRef Dictionary -> IO (JSRef AudioStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioStreamTrack Mozilla AudioStreamTrack documentation> 
newAudioStreamTrack ::
                    (MonadIO m, IsDictionary audioConstraints) =>
                      Maybe audioConstraints -> m AudioStreamTrack
newAudioStreamTrack audioConstraints
  = liftIO
      (js_newAudioStreamTrack
         (maybe jsNull (unDictionary . toDictionary) audioConstraints)
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.AudioStreamTrack (
  ) where
#endif
