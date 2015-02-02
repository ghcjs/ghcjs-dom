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
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
navigatorUserMediaSuccessCallbackNewSync ::
                                           (Maybe MediaStream -> IO Bool) ->
                                             IO NavigatorUserMediaSuccessCallback
navigatorUserMediaSuccessCallbackNewSync callback
  = NavigatorUserMediaSuccessCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ stream ->
           fromJSRefUnchecked stream >>= \ stream' -> callback stream')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
navigatorUserMediaSuccessCallbackNewSync' ::
                                            ForeignRetention ->
                                              Bool ->
                                                (Maybe MediaStream -> IO Bool) ->
                                                  IO NavigatorUserMediaSuccessCallback
navigatorUserMediaSuccessCallbackNewSync' retention continueAsync
  callback
  = NavigatorUserMediaSuccessCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ stream ->
           fromJSRefUnchecked stream >>= \ stream' -> callback stream')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
navigatorUserMediaSuccessCallbackNewAsync ::
                                            (Maybe MediaStream -> IO Bool) ->
                                              IO NavigatorUserMediaSuccessCallback
navigatorUserMediaSuccessCallbackNewAsync callback
  = NavigatorUserMediaSuccessCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ stream ->
           fromJSRefUnchecked stream >>= \ stream' -> callback stream')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
navigatorUserMediaSuccessCallbackNewAsync' ::
                                             ForeignRetention ->
                                               (Maybe MediaStream -> IO Bool) ->
                                                 IO NavigatorUserMediaSuccessCallback
navigatorUserMediaSuccessCallbackNewAsync' retention callback
  = NavigatorUserMediaSuccessCallback . castRef <$>
      asyncCallback1 retention
        (\ stream ->
           fromJSRefUnchecked stream >>= \ stream' -> callback stream')
#else
module GHCJS.DOM.NavigatorUserMediaSuccessCallback (
  ) where
#endif
