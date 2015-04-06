{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RequestAnimationFrameCallback
       (newRequestAnimationFrameCallbackSync,
        newRequestAnimationFrameCallbackSync',
        newRequestAnimationFrameCallbackAsync,
        newRequestAnimationFrameCallbackAsync',
        RequestAnimationFrameCallback, castToRequestAnimationFrameCallback,
        gTypeRequestAnimationFrameCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackSync ::
                                     (MonadIO m) =>
                                       (Double -> IO Bool) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackSync callback
  = liftIO
      (RequestAnimationFrameCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ highResTime ->
              fromJSRefUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackSync' ::
                                      (MonadIO m) =>
                                        ForeignRetention ->
                                          Bool ->
                                            (Double -> IO Bool) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackSync' retention continueAsync
  callback
  = liftIO
      (RequestAnimationFrameCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ highResTime ->
              fromJSRefUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackAsync ::
                                      (MonadIO m) =>
                                        (Double -> IO Bool) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackAsync callback
  = liftIO
      (RequestAnimationFrameCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ highResTime ->
              fromJSRefUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackAsync' ::
                                       (MonadIO m) =>
                                         ForeignRetention ->
                                           (Double -> IO Bool) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackAsync' retention callback
  = liftIO
      (RequestAnimationFrameCallback . castRef <$>
         asyncCallback1 retention
           (\ highResTime ->
              fromJSRefUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))
#else
module GHCJS.DOM.RequestAnimationFrameCallback (
  ) where
#endif
