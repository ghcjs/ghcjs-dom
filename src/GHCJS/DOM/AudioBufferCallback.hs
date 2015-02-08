{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioBufferCallback
       (audioBufferCallbackNewSync, audioBufferCallbackNewAsync,
        AudioBufferCallback, IsAudioBufferCallback,
        castToAudioBufferCallback, gTypeAudioBufferCallback,
        toAudioBufferCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
audioBufferCallbackNewSync ::
                           (MonadIO m) =>
                             (Maybe AudioBuffer -> IO Bool) -> m AudioBufferCallback
audioBufferCallbackNewSync callback
  = liftIO
      (AudioBufferCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ audioBuffer ->
              fromJSRefUnchecked audioBuffer >>=
                \ audioBuffer' -> callback audioBuffer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
audioBufferCallbackNewSync' ::
                            (MonadIO m) =>
                              ForeignRetention ->
                                Bool -> (Maybe AudioBuffer -> IO Bool) -> m AudioBufferCallback
audioBufferCallbackNewSync' retention continueAsync callback
  = liftIO
      (AudioBufferCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ audioBuffer ->
              fromJSRefUnchecked audioBuffer >>=
                \ audioBuffer' -> callback audioBuffer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
audioBufferCallbackNewAsync ::
                            (MonadIO m) =>
                              (Maybe AudioBuffer -> IO Bool) -> m AudioBufferCallback
audioBufferCallbackNewAsync callback
  = liftIO
      (AudioBufferCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ audioBuffer ->
              fromJSRefUnchecked audioBuffer >>=
                \ audioBuffer' -> callback audioBuffer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
audioBufferCallbackNewAsync' ::
                             (MonadIO m) =>
                               ForeignRetention ->
                                 (Maybe AudioBuffer -> IO Bool) -> m AudioBufferCallback
audioBufferCallbackNewAsync' retention callback
  = liftIO
      (AudioBufferCallback . castRef <$>
         asyncCallback1 retention
           (\ audioBuffer ->
              fromJSRefUnchecked audioBuffer >>=
                \ audioBuffer' -> callback audioBuffer'))
#else
module GHCJS.DOM.AudioBufferCallback (
  ) where
#endif
