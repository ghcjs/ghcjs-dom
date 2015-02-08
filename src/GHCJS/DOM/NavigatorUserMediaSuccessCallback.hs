{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NavigatorUserMediaSuccessCallback
       (navigatorUserMediaSuccessCallbackNewSync,
        navigatorUserMediaSuccessCallbackNewAsync,
        NavigatorUserMediaSuccessCallback,
        IsNavigatorUserMediaSuccessCallback,
        castToNavigatorUserMediaSuccessCallback,
        gTypeNavigatorUserMediaSuccessCallback,
        toNavigatorUserMediaSuccessCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
navigatorUserMediaSuccessCallbackNewSync ::
                                         (MonadIO m) =>
                                           (Maybe MediaStream -> IO Bool) ->
                                             m NavigatorUserMediaSuccessCallback
navigatorUserMediaSuccessCallbackNewSync callback
  = liftIO
      (NavigatorUserMediaSuccessCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ stream ->
              fromJSRefUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
navigatorUserMediaSuccessCallbackNewSync' ::
                                          (MonadIO m) =>
                                            ForeignRetention ->
                                              Bool ->
                                                (Maybe MediaStream -> IO Bool) ->
                                                  m NavigatorUserMediaSuccessCallback
navigatorUserMediaSuccessCallbackNewSync' retention continueAsync
  callback
  = liftIO
      (NavigatorUserMediaSuccessCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ stream ->
              fromJSRefUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
navigatorUserMediaSuccessCallbackNewAsync ::
                                          (MonadIO m) =>
                                            (Maybe MediaStream -> IO Bool) ->
                                              m NavigatorUserMediaSuccessCallback
navigatorUserMediaSuccessCallbackNewAsync callback
  = liftIO
      (NavigatorUserMediaSuccessCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ stream ->
              fromJSRefUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
navigatorUserMediaSuccessCallbackNewAsync' ::
                                           (MonadIO m) =>
                                             ForeignRetention ->
                                               (Maybe MediaStream -> IO Bool) ->
                                                 m NavigatorUserMediaSuccessCallback
navigatorUserMediaSuccessCallbackNewAsync' retention callback
  = liftIO
      (NavigatorUserMediaSuccessCallback . castRef <$>
         asyncCallback1 retention
           (\ stream ->
              fromJSRefUnchecked stream >>= \ stream' -> callback stream'))
#else
module GHCJS.DOM.NavigatorUserMediaSuccessCallback (
  ) where
#endif
