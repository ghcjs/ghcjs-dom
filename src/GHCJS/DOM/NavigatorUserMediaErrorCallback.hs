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
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
navigatorUserMediaErrorCallbackNewSync ::
                                         (Maybe NavigatorUserMediaError -> IO Bool) ->
                                           IO NavigatorUserMediaErrorCallback
navigatorUserMediaErrorCallbackNewSync callback
  = NavigatorUserMediaErrorCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
navigatorUserMediaErrorCallbackNewSync' ::
                                          ForeignRetention ->
                                            Bool ->
                                              (Maybe NavigatorUserMediaError -> IO Bool) ->
                                                IO NavigatorUserMediaErrorCallback
navigatorUserMediaErrorCallbackNewSync' retention continueAsync
  callback
  = NavigatorUserMediaErrorCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
navigatorUserMediaErrorCallbackNewAsync ::
                                          (Maybe NavigatorUserMediaError -> IO Bool) ->
                                            IO NavigatorUserMediaErrorCallback
navigatorUserMediaErrorCallbackNewAsync callback
  = NavigatorUserMediaErrorCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
navigatorUserMediaErrorCallbackNewAsync' ::
                                           ForeignRetention ->
                                             (Maybe NavigatorUserMediaError -> IO Bool) ->
                                               IO NavigatorUserMediaErrorCallback
navigatorUserMediaErrorCallbackNewAsync' retention callback
  = NavigatorUserMediaErrorCallback . castRef <$>
      asyncCallback1 retention
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')
#else
module GHCJS.DOM.NavigatorUserMediaErrorCallback (
  ) where
#endif
