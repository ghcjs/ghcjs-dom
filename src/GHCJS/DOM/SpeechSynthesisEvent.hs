{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SpeechSynthesisEvent
       (ghcjs_dom_speech_synthesis_event_get_char_index,
        speechSynthesisEventGetCharIndex,
        ghcjs_dom_speech_synthesis_event_get_elapsed_time,
        speechSynthesisEventGetElapsedTime,
        ghcjs_dom_speech_synthesis_event_get_name,
        speechSynthesisEventGetName, SpeechSynthesisEvent,
        IsSpeechSynthesisEvent, castToSpeechSynthesisEvent,
        gTypeSpeechSynthesisEvent, toSpeechSynthesisEvent)
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

 
foreign import javascript unsafe "$1[\"charIndex\"]"
        ghcjs_dom_speech_synthesis_event_get_char_index ::
        JSRef SpeechSynthesisEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.charIndex Mozilla SpeechSynthesisEvent.charIndex documentation> 
speechSynthesisEventGetCharIndex ::
                                 (MonadIO m, IsSpeechSynthesisEvent self) => self -> m Word
speechSynthesisEventGetCharIndex self
  = liftIO
      (ghcjs_dom_speech_synthesis_event_get_char_index
         (unSpeechSynthesisEvent (toSpeechSynthesisEvent self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        ghcjs_dom_speech_synthesis_event_get_elapsed_time ::
        JSRef SpeechSynthesisEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.elapsedTime Mozilla SpeechSynthesisEvent.elapsedTime documentation> 
speechSynthesisEventGetElapsedTime ::
                                   (MonadIO m, IsSpeechSynthesisEvent self) => self -> m Float
speechSynthesisEventGetElapsedTime self
  = liftIO
      (ghcjs_dom_speech_synthesis_event_get_elapsed_time
         (unSpeechSynthesisEvent (toSpeechSynthesisEvent self)))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_speech_synthesis_event_get_name ::
        JSRef SpeechSynthesisEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.name Mozilla SpeechSynthesisEvent.name documentation> 
speechSynthesisEventGetName ::
                            (MonadIO m, IsSpeechSynthesisEvent self, FromJSString result) =>
                              self -> m result
speechSynthesisEventGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_speech_synthesis_event_get_name
            (unSpeechSynthesisEvent (toSpeechSynthesisEvent self))))
#else
module GHCJS.DOM.SpeechSynthesisEvent (
  ) where
#endif
