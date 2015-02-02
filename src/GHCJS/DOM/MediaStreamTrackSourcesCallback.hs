{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStreamTrackSourcesCallback
       (mediaStreamTrackSourcesCallbackNewSync,
        mediaStreamTrackSourcesCallbackNewAsync,
        MediaStreamTrackSourcesCallback, IsMediaStreamTrackSourcesCallback,
        castToMediaStreamTrackSourcesCallback,
        gTypeMediaStreamTrackSourcesCallback,
        toMediaStreamTrackSourcesCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
mediaStreamTrackSourcesCallbackNewSync ::
                                         ([Maybe SourceInfo] -> IO Bool) ->
                                           IO MediaStreamTrackSourcesCallback
mediaStreamTrackSourcesCallbackNewSync callback
  = MediaStreamTrackSourcesCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ sources ->
           fromJSRefUnchecked sources >>= \ sources' -> callback sources')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
mediaStreamTrackSourcesCallbackNewSync' ::
                                          ForeignRetention ->
                                            Bool ->
                                              ([Maybe SourceInfo] -> IO Bool) ->
                                                IO MediaStreamTrackSourcesCallback
mediaStreamTrackSourcesCallbackNewSync' retention continueAsync
  callback
  = MediaStreamTrackSourcesCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ sources ->
           fromJSRefUnchecked sources >>= \ sources' -> callback sources')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
mediaStreamTrackSourcesCallbackNewAsync ::
                                          ([Maybe SourceInfo] -> IO Bool) ->
                                            IO MediaStreamTrackSourcesCallback
mediaStreamTrackSourcesCallbackNewAsync callback
  = MediaStreamTrackSourcesCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ sources ->
           fromJSRefUnchecked sources >>= \ sources' -> callback sources')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
mediaStreamTrackSourcesCallbackNewAsync' ::
                                           ForeignRetention ->
                                             ([Maybe SourceInfo] -> IO Bool) ->
                                               IO MediaStreamTrackSourcesCallback
mediaStreamTrackSourcesCallbackNewAsync' retention callback
  = MediaStreamTrackSourcesCallback . castRef <$>
      asyncCallback1 retention
        (\ sources ->
           fromJSRefUnchecked sources >>= \ sources' -> callback sources')
#else
module GHCJS.DOM.MediaStreamTrackSourcesCallback (
  ) where
#endif
