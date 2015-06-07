{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SpeechSynthesisUtterance
       (js_newSpeechSynthesisUtterance, newSpeechSynthesisUtterance,
        js_setText, setText, js_getText, getText, js_setLang, setLang,
        js_getLang, getLang, js_setVoice, setVoice, js_getVoice, getVoice,
        js_setVolume, setVolume, js_getVolume, getVolume, js_setRate,
        setRate, js_getRate, getRate, js_setPitch, setPitch, js_getPitch,
        getPitch, start, end, error, pause, resume, mark, boundary,
        SpeechSynthesisUtterance, castToSpeechSynthesisUtterance,
        gTypeSpeechSynthesisUtterance)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
        "new window[\"SpeechSynthesisUtterance\"]($1)"
        js_newSpeechSynthesisUtterance ::
        JSString -> IO (JSRef SpeechSynthesisUtterance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance Mozilla SpeechSynthesisUtterance documentation> 
newSpeechSynthesisUtterance ::
                            (MonadIO m, ToJSString text) => text -> m SpeechSynthesisUtterance
newSpeechSynthesisUtterance text
  = liftIO
      (js_newSpeechSynthesisUtterance (toJSString text) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        JSRef SpeechSynthesisUtterance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.text Mozilla SpeechSynthesisUtterance.text documentation> 
setText ::
        (MonadIO m, ToJSString val) =>
          SpeechSynthesisUtterance -> val -> m ()
setText self val
  = liftIO
      (js_setText (unSpeechSynthesisUtterance self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        JSRef SpeechSynthesisUtterance -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.text Mozilla SpeechSynthesisUtterance.text documentation> 
getText ::
        (MonadIO m, FromJSString result) =>
          SpeechSynthesisUtterance -> m result
getText self
  = liftIO
      (fromJSString <$> (js_getText (unSpeechSynthesisUtterance self)))
 
foreign import javascript unsafe "$1[\"lang\"] = $2;" js_setLang ::
        JSRef SpeechSynthesisUtterance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.lang Mozilla SpeechSynthesisUtterance.lang documentation> 
setLang ::
        (MonadIO m, ToJSString val) =>
          SpeechSynthesisUtterance -> val -> m ()
setLang self val
  = liftIO
      (js_setLang (unSpeechSynthesisUtterance self) (toJSString val))
 
foreign import javascript unsafe "$1[\"lang\"]" js_getLang ::
        JSRef SpeechSynthesisUtterance -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.lang Mozilla SpeechSynthesisUtterance.lang documentation> 
getLang ::
        (MonadIO m, FromJSString result) =>
          SpeechSynthesisUtterance -> m result
getLang self
  = liftIO
      (fromJSString <$> (js_getLang (unSpeechSynthesisUtterance self)))
 
foreign import javascript unsafe "$1[\"voice\"] = $2;" js_setVoice
        ::
        JSRef SpeechSynthesisUtterance ->
          JSRef SpeechSynthesisVoice -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.voice Mozilla SpeechSynthesisUtterance.voice documentation> 
setVoice ::
         (MonadIO m) =>
           SpeechSynthesisUtterance -> Maybe SpeechSynthesisVoice -> m ()
setVoice self val
  = liftIO
      (js_setVoice (unSpeechSynthesisUtterance self)
         (maybe jsNull pToJSRef val))
 
foreign import javascript unsafe "$1[\"voice\"]" js_getVoice ::
        JSRef SpeechSynthesisUtterance -> IO (JSRef SpeechSynthesisVoice)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.voice Mozilla SpeechSynthesisUtterance.voice documentation> 
getVoice ::
         (MonadIO m) =>
           SpeechSynthesisUtterance -> m (Maybe SpeechSynthesisVoice)
getVoice self
  = liftIO
      ((js_getVoice (unSpeechSynthesisUtterance self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        js_setVolume :: JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.volume Mozilla SpeechSynthesisUtterance.volume documentation> 
setVolume ::
          (MonadIO m) => SpeechSynthesisUtterance -> Float -> m ()
setVolume self val
  = liftIO (js_setVolume (unSpeechSynthesisUtterance self) val)
 
foreign import javascript unsafe "$1[\"volume\"]" js_getVolume ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.volume Mozilla SpeechSynthesisUtterance.volume documentation> 
getVolume :: (MonadIO m) => SpeechSynthesisUtterance -> m Float
getVolume self
  = liftIO (js_getVolume (unSpeechSynthesisUtterance self))
 
foreign import javascript unsafe "$1[\"rate\"] = $2;" js_setRate ::
        JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.rate Mozilla SpeechSynthesisUtterance.rate documentation> 
setRate :: (MonadIO m) => SpeechSynthesisUtterance -> Float -> m ()
setRate self val
  = liftIO (js_setRate (unSpeechSynthesisUtterance self) val)
 
foreign import javascript unsafe "$1[\"rate\"]" js_getRate ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.rate Mozilla SpeechSynthesisUtterance.rate documentation> 
getRate :: (MonadIO m) => SpeechSynthesisUtterance -> m Float
getRate self
  = liftIO (js_getRate (unSpeechSynthesisUtterance self))
 
foreign import javascript unsafe "$1[\"pitch\"] = $2;" js_setPitch
        :: JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pitch Mozilla SpeechSynthesisUtterance.pitch documentation> 
setPitch ::
         (MonadIO m) => SpeechSynthesisUtterance -> Float -> m ()
setPitch self val
  = liftIO (js_setPitch (unSpeechSynthesisUtterance self) val)
 
foreign import javascript unsafe "$1[\"pitch\"]" js_getPitch ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pitch Mozilla SpeechSynthesisUtterance.pitch documentation> 
getPitch :: (MonadIO m) => SpeechSynthesisUtterance -> m Float
getPitch self
  = liftIO (js_getPitch (unSpeechSynthesisUtterance self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onstart Mozilla SpeechSynthesisUtterance.onstart documentation> 
start :: EventName SpeechSynthesisUtterance Event
start = unsafeEventName (toJSString "start")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onend Mozilla SpeechSynthesisUtterance.onend documentation> 
end :: EventName SpeechSynthesisUtterance Event
end = unsafeEventName (toJSString "end")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onerror Mozilla SpeechSynthesisUtterance.onerror documentation> 
error :: EventName SpeechSynthesisUtterance UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onpause Mozilla SpeechSynthesisUtterance.onpause documentation> 
pause :: EventName SpeechSynthesisUtterance Event
pause = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onresume Mozilla SpeechSynthesisUtterance.onresume documentation> 
resume :: EventName SpeechSynthesisUtterance Event
resume = unsafeEventName (toJSString "resume")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onmark Mozilla SpeechSynthesisUtterance.onmark documentation> 
mark :: EventName SpeechSynthesisUtterance Event
mark = unsafeEventName (toJSString "mark")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onboundary Mozilla SpeechSynthesisUtterance.onboundary documentation> 
boundary :: EventName SpeechSynthesisUtterance Event
boundary = unsafeEventName (toJSString "boundary")