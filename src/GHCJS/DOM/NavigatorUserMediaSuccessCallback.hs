{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NavigatorUserMediaSuccessCallback
       (newNavigatorUserMediaSuccessCallbackSync,
        newNavigatorUserMediaSuccessCallbackSync',
        newNavigatorUserMediaSuccessCallbackAsync,
        newNavigatorUserMediaSuccessCallbackAsync',
        NavigatorUserMediaSuccessCallback,
        castToNavigatorUserMediaSuccessCallback,
        gTypeNavigatorUserMediaSuccessCallback)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackSync ::
                                         (MonadIO m) =>
                                           (Maybe MediaStream -> IO Bool) ->
                                             m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackSync callback
  = liftIO
      (NavigatorUserMediaSuccessCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ stream ->
              fromJSRefUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackSync' ::
                                          (MonadIO m) =>
                                            ForeignRetention ->
                                              Bool ->
                                                (Maybe MediaStream -> IO Bool) ->
                                                  m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackSync' retention continueAsync
  callback
  = liftIO
      (NavigatorUserMediaSuccessCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ stream ->
              fromJSRefUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackAsync ::
                                          (MonadIO m) =>
                                            (Maybe MediaStream -> IO Bool) ->
                                              m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackAsync callback
  = liftIO
      (NavigatorUserMediaSuccessCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ stream ->
              fromJSRefUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackAsync' ::
                                           (MonadIO m) =>
                                             ForeignRetention ->
                                               (Maybe MediaStream -> IO Bool) ->
                                                 m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackAsync' retention callback
  = liftIO
      (NavigatorUserMediaSuccessCallback . castRef <$>
         asyncCallback1 retention
           (\ stream ->
              fromJSRefUnchecked stream >>= \ stream' -> callback stream'))
#else
module GHCJS.DOM.NavigatorUserMediaSuccessCallback (
  ) where
#endif
