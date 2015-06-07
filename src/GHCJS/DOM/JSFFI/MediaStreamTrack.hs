{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.MediaStreamTrack (
    module Generated
  , js_getSources
  , getSources
) where

import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Types (JSRef)
import GHCJS.Marshal (fromJSRefUnchecked)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.Generated.MediaStreamTrack as Generated hiding (js_getSources, getSources)

foreign import javascript interruptible "$1[\"getSources\"]($c);"
        js_getSources :: JSRef MediaStreamTrack -> IO (JSRef ([Maybe SourceInfo]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack.getSources Mozilla MediaStreamTrack.getSources documentation>
getSources :: (MonadIO m, IsMediaStreamTrack self) => self -> m [Maybe SourceInfo]
getSources self = liftIO $
      js_getSources (unMediaStreamTrack (toMediaStreamTrack self)) >>= fromJSRefUnchecked


