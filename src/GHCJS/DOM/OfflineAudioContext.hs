{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.OfflineAudioContext
       (ghcjs_dom_offline_audio_context_new, offlineAudioContextNew,
        OfflineAudioContext, IsOfflineAudioContext,
        castToOfflineAudioContext, gTypeOfflineAudioContext,
        toOfflineAudioContext)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"webkitOfflineAudioContext\"]($1,\n$2, $3)"
        ghcjs_dom_offline_audio_context_new ::
        Word -> Word -> Float -> IO (JSRef OfflineAudioContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitOfflineAudioContext Mozilla webkitOfflineAudioContext documentation> 
offlineAudioContextNew ::
                         Word -> Word -> Float -> IO OfflineAudioContext
offlineAudioContextNew numberOfChannels numberOfFrames sampleRate
  = ghcjs_dom_offline_audio_context_new numberOfChannels
      numberOfFrames
      sampleRate
      >>= fromJSRefUnchecked
#else
module GHCJS.DOM.OfflineAudioContext (
  ) where
#endif
