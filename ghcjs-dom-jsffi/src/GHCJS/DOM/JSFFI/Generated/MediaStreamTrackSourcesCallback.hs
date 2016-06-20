{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaStreamTrackSourcesCallback
       (newMediaStreamTrackSourcesCallback,
        newMediaStreamTrackSourcesCallbackSync,
        newMediaStreamTrackSourcesCallbackAsync,
        MediaStreamTrackSourcesCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallback ::
                                   (MonadIO m) =>
                                     ([Maybe SourceInfo] -> IO ()) ->
                                       m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallback callback
  = liftIO
      (MediaStreamTrackSourcesCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ sources ->
              fromJSValUnchecked sources >>= \ sources' -> callback sources'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallbackSync ::
                                       (MonadIO m) =>
                                         ([Maybe SourceInfo] -> IO ()) ->
                                           m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallbackSync callback
  = liftIO
      (MediaStreamTrackSourcesCallback <$>
         syncCallback1 ContinueAsync
           (\ sources ->
              fromJSValUnchecked sources >>= \ sources' -> callback sources'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation> 
newMediaStreamTrackSourcesCallbackAsync ::
                                        (MonadIO m) =>
                                          ([Maybe SourceInfo] -> IO ()) ->
                                            m MediaStreamTrackSourcesCallback
newMediaStreamTrackSourcesCallbackAsync callback
  = liftIO
      (MediaStreamTrackSourcesCallback <$>
         asyncCallback1
           (\ sources ->
              fromJSValUnchecked sources >>= \ sources' -> callback sources'))