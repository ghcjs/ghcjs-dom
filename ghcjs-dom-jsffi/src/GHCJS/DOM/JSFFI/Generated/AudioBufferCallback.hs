{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioBufferCallback
       (newAudioBufferCallback, newAudioBufferCallbackSync,
        newAudioBufferCallbackAsync, AudioBufferCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
newAudioBufferCallback ::
                       (MonadIO m) =>
                         (Maybe AudioBuffer -> IO ()) -> m AudioBufferCallback
newAudioBufferCallback callback
  = liftIO
      (AudioBufferCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ audioBuffer ->
              fromJSValUnchecked audioBuffer >>=
                \ audioBuffer' -> callback audioBuffer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
newAudioBufferCallbackSync ::
                           (MonadIO m) =>
                             (Maybe AudioBuffer -> IO ()) -> m AudioBufferCallback
newAudioBufferCallbackSync callback
  = liftIO
      (AudioBufferCallback <$>
         syncCallback1 ContinueAsync
           (\ audioBuffer ->
              fromJSValUnchecked audioBuffer >>=
                \ audioBuffer' -> callback audioBuffer'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation> 
newAudioBufferCallbackAsync ::
                            (MonadIO m) =>
                              (Maybe AudioBuffer -> IO ()) -> m AudioBufferCallback
newAudioBufferCallbackAsync callback
  = liftIO
      (AudioBufferCallback <$>
         asyncCallback1
           (\ audioBuffer ->
              fromJSValUnchecked audioBuffer >>=
                \ audioBuffer' -> callback audioBuffer'))