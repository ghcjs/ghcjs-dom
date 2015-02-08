{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NavigatorUserMediaErrorCallback
       (navigatorUserMediaErrorCallbackNewSync,
        navigatorUserMediaErrorCallbackNewAsync,
        NavigatorUserMediaErrorCallback, IsNavigatorUserMediaErrorCallback,
        castToNavigatorUserMediaErrorCallback,
        gTypeNavigatorUserMediaErrorCallback,
        toNavigatorUserMediaErrorCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
navigatorUserMediaErrorCallbackNewSync ::
                                       (MonadIO m) =>
                                         (Maybe NavigatorUserMediaError -> IO Bool) ->
                                           m NavigatorUserMediaErrorCallback
navigatorUserMediaErrorCallbackNewSync callback
  = liftIO
      (NavigatorUserMediaErrorCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
navigatorUserMediaErrorCallbackNewSync' ::
                                        (MonadIO m) =>
                                          ForeignRetention ->
                                            Bool ->
                                              (Maybe NavigatorUserMediaError -> IO Bool) ->
                                                m NavigatorUserMediaErrorCallback
navigatorUserMediaErrorCallbackNewSync' retention continueAsync
  callback
  = liftIO
      (NavigatorUserMediaErrorCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
navigatorUserMediaErrorCallbackNewAsync ::
                                        (MonadIO m) =>
                                          (Maybe NavigatorUserMediaError -> IO Bool) ->
                                            m NavigatorUserMediaErrorCallback
navigatorUserMediaErrorCallbackNewAsync callback
  = liftIO
      (NavigatorUserMediaErrorCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
navigatorUserMediaErrorCallbackNewAsync' ::
                                         (MonadIO m) =>
                                           ForeignRetention ->
                                             (Maybe NavigatorUserMediaError -> IO Bool) ->
                                               m NavigatorUserMediaErrorCallback
navigatorUserMediaErrorCallbackNewAsync' retention callback
  = liftIO
      (NavigatorUserMediaErrorCallback . castRef <$>
         asyncCallback1 retention
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))
#else
module GHCJS.DOM.NavigatorUserMediaErrorCallback (
  ) where
#endif
