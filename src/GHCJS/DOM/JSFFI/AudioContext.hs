{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.AudioContext (
    module Generated
  , DecodeAudioError(..)
  , js_decodeAudioData
  , decodeAudioData
) where

import Control.Exception (Exception(..), throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Types (JSRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Marshal (fromJSRef, fromJSRefUnchecked)
import GHCJS.Foreign.Callback (releaseCallback)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.Generated.AudioContext as Generated hiding (js_decodeAudioData, decodeAudioData)

data DecodeAudioError = DecodeAudioError deriving (Show, Eq)

instance Exception DecodeAudioError

foreign import javascript interruptible
        "$1[\"decodeAudioData\"]($2, $c, function() { $c(null); });" js_decodeAudioData ::
        JSRef AudioContext -> JSRef ArrayBuffer -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation>
decodeAudioData :: (MonadIO m, IsAudioContext self, IsArrayBuffer audioData) =>
                   self -> audioData -> m AudioBuffer
decodeAudioData self audioData = liftIO $ js_decodeAudioData
        (unAudioContext (toAudioContext self))
        (unArrayBuffer  (toArrayBuffer audioData))
            >>= fromJSRef >>= maybe (throwIO DecodeAudioError) return

