{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStreamTrackSourcesCallback
       (newMediaStreamTrackSourcesCallbackSync,
        newMediaStreamTrackSourcesCallbackSync',
        newMediaStreamTrackSourcesCallbackAsync,
        newMediaStreamTrackSourcesCallbackAsync',
        MediaStreamTrackSourcesCallback,
        castToMediaStreamTrackSourcesCallback,
        gTypeMediaStreamTrackSourcesCallback)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallbackSync ::
                                       (MonadIO m) =>
                                         ([Maybe SourceInfo] -> IO Bool) ->
                                           m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallbackSync callback
  = liftIO
      (MediaStreamTrackSourcesCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ sources ->
              fromJSRefUnchecked sources >>= \ sources' -> callback sources'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallbackSync' ::
                                        (MonadIO m) =>
                                          ForeignRetention ->
                                            Bool ->
                                              ([Maybe SourceInfo] -> IO Bool) ->
                                                m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallbackSync' retention continueAsync
  callback
  = liftIO
      (MediaStreamTrackSourcesCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ sources ->
              fromJSRefUnchecked sources >>= \ sources' -> callback sources'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallbackAsync ::
                                        (MonadIO m) =>
                                          ([Maybe SourceInfo] -> IO Bool) ->
                                            m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallbackAsync callback
  = liftIO
      (MediaStreamTrackSourcesCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ sources ->
              fromJSRefUnchecked sources >>= \ sources' -> callback sources'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallbackAsync' ::
                                         (MonadIO m) =>
                                           ForeignRetention ->
                                             ([Maybe SourceInfo] -> IO Bool) ->
                                               m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallbackAsync' retention callback
  = liftIO
      (MediaStreamTrackSourcesCallback . castRef <$>
         asyncCallback1 retention
           (\ sources ->
              fromJSRefUnchecked sources >>= \ sources' -> callback sources'))
#else
module GHCJS.DOM.MediaStreamTrackSourcesCallback (
  ) where
#endif
