{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PositionCallback
       (positionCallbackNewSync, positionCallbackNewAsync,
        PositionCallback, IsPositionCallback, castToPositionCallback,
        gTypePositionCallback, toPositionCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
positionCallbackNewSync ::
                          (Maybe Geoposition -> IO Bool) -> IO PositionCallback
positionCallbackNewSync callback
  = PositionCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ position ->
           fromJSRefUnchecked position >>= \ position' -> callback position')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
positionCallbackNewSync' ::
                           ForeignRetention ->
                             Bool -> (Maybe Geoposition -> IO Bool) -> IO PositionCallback
positionCallbackNewSync' retention continueAsync callback
  = PositionCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ position ->
           fromJSRefUnchecked position >>= \ position' -> callback position')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
positionCallbackNewAsync ::
                           (Maybe Geoposition -> IO Bool) -> IO PositionCallback
positionCallbackNewAsync callback
  = PositionCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ position ->
           fromJSRefUnchecked position >>= \ position' -> callback position')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
positionCallbackNewAsync' ::
                            ForeignRetention ->
                              (Maybe Geoposition -> IO Bool) -> IO PositionCallback
positionCallbackNewAsync' retention callback
  = PositionCallback . castRef <$>
      asyncCallback1 retention
        (\ position ->
           fromJSRefUnchecked position >>= \ position' -> callback position')
#else
module GHCJS.DOM.PositionCallback (
  ) where
#endif
