{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.AudioContext (
    module Generated
  , DecodeAudioError(..)
  , js_decodeAudioData
  , decodeAudioData
) where

import Control.Exception (Exception(..), throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Types (JSVal)
import GHCJS.Foreign (jsNull)
import GHCJS.Marshal (fromJSVal, fromJSValUnchecked)
import GHCJS.Foreign.Callback (releaseCallback)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.Generated.AudioContext as Generated hiding (js_decodeAudioData, decodeAudioData)

data DecodeAudioError = DecodeAudioError deriving (Show, Eq)

instance Exception DecodeAudioError

foreign import javascript interruptible
        "$1[\"decodeAudioData\"]($2, $c, function() { $c(null); });" js_decodeAudioData ::
        AudioContext -> ArrayBuffer -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation>
decodeAudioData :: (MonadIO m, IsAudioContext self, IsArrayBuffer audioData) =>
                   self -> audioData -> m AudioBuffer
decodeAudioData self audioData = liftIO $ nullableToMaybe <$> js_decodeAudioData
        (toAudioContext self)
        (toArrayBuffer audioData)
            >>= maybe (throwIO DecodeAudioError) return

