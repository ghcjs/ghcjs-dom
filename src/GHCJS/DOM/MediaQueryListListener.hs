{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaQueryListListener
       (mediaQueryListListenerNewSync, mediaQueryListListenerNewAsync,
        MediaQueryListListener, IsMediaQueryListListener,
        castToMediaQueryListListener, gTypeMediaQueryListListener,
        toMediaQueryListListener)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
mediaQueryListListenerNewSync ::
                                (Maybe MediaQueryList -> IO Bool) -> IO MediaQueryListListener
mediaQueryListListenerNewSync callback
  = MediaQueryListListener . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ list -> fromJSRefUnchecked list >>= \ list' -> callback list')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
mediaQueryListListenerNewSync' ::
                                 ForeignRetention ->
                                   Bool ->
                                     (Maybe MediaQueryList -> IO Bool) -> IO MediaQueryListListener
mediaQueryListListenerNewSync' retention continueAsync callback
  = MediaQueryListListener . castRef <$>
      syncCallback1 retention continueAsync
        (\ list -> fromJSRefUnchecked list >>= \ list' -> callback list')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
mediaQueryListListenerNewAsync ::
                                 (Maybe MediaQueryList -> IO Bool) -> IO MediaQueryListListener
mediaQueryListListenerNewAsync callback
  = MediaQueryListListener . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ list -> fromJSRefUnchecked list >>= \ list' -> callback list')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
mediaQueryListListenerNewAsync' ::
                                  ForeignRetention ->
                                    (Maybe MediaQueryList -> IO Bool) -> IO MediaQueryListListener
mediaQueryListListenerNewAsync' retention callback
  = MediaQueryListListener . castRef <$>
      asyncCallback1 retention
        (\ list -> fromJSRefUnchecked list >>= \ list' -> callback list')
#else
module GHCJS.DOM.MediaQueryListListener (
  ) where
#endif
