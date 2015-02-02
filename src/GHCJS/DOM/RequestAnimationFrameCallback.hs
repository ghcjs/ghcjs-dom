{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RequestAnimationFrameCallback
       (requestAnimationFrameCallbackNewSync,
        requestAnimationFrameCallbackNewAsync,
        RequestAnimationFrameCallback, IsRequestAnimationFrameCallback,
        castToRequestAnimationFrameCallback,
        gTypeRequestAnimationFrameCallback,
        toRequestAnimationFrameCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
requestAnimationFrameCallbackNewSync ::
                                       (Double -> IO Bool) -> IO RequestAnimationFrameCallback
requestAnimationFrameCallbackNewSync callback
  = RequestAnimationFrameCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ highResTime ->
           fromJSRefUnchecked highResTime >>=
             \ highResTime' -> callback highResTime')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
requestAnimationFrameCallbackNewSync' ::
                                        ForeignRetention ->
                                          Bool ->
                                            (Double -> IO Bool) -> IO RequestAnimationFrameCallback
requestAnimationFrameCallbackNewSync' retention continueAsync
  callback
  = RequestAnimationFrameCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ highResTime ->
           fromJSRefUnchecked highResTime >>=
             \ highResTime' -> callback highResTime')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
requestAnimationFrameCallbackNewAsync ::
                                        (Double -> IO Bool) -> IO RequestAnimationFrameCallback
requestAnimationFrameCallbackNewAsync callback
  = RequestAnimationFrameCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ highResTime ->
           fromJSRefUnchecked highResTime >>=
             \ highResTime' -> callback highResTime')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
requestAnimationFrameCallbackNewAsync' ::
                                         ForeignRetention ->
                                           (Double -> IO Bool) -> IO RequestAnimationFrameCallback
requestAnimationFrameCallbackNewAsync' retention callback
  = RequestAnimationFrameCallback . castRef <$>
      asyncCallback1 retention
        (\ highResTime ->
           fromJSRefUnchecked highResTime >>=
             \ highResTime' -> callback highResTime')
#else
module GHCJS.DOM.RequestAnimationFrameCallback (
  ) where
#endif
