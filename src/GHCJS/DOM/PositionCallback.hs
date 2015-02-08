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
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
positionCallbackNewSync ::
                        (MonadIO m) => (Maybe Geoposition -> IO Bool) -> m PositionCallback
positionCallbackNewSync callback
  = liftIO
      (PositionCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ position ->
              fromJSRefUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
positionCallbackNewSync' ::
                         (MonadIO m) =>
                           ForeignRetention ->
                             Bool -> (Maybe Geoposition -> IO Bool) -> m PositionCallback
positionCallbackNewSync' retention continueAsync callback
  = liftIO
      (PositionCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ position ->
              fromJSRefUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
positionCallbackNewAsync ::
                         (MonadIO m) => (Maybe Geoposition -> IO Bool) -> m PositionCallback
positionCallbackNewAsync callback
  = liftIO
      (PositionCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ position ->
              fromJSRefUnchecked position >>= \ position' -> callback position'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation> 
positionCallbackNewAsync' ::
                          (MonadIO m) =>
                            ForeignRetention ->
                              (Maybe Geoposition -> IO Bool) -> m PositionCallback
positionCallbackNewAsync' retention callback
  = liftIO
      (PositionCallback . castRef <$>
         asyncCallback1 retention
           (\ position ->
              fromJSRefUnchecked position >>= \ position' -> callback position'))
#else
module GHCJS.DOM.PositionCallback (
  ) where
#endif
