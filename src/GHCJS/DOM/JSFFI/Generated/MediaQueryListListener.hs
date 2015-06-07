{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaQueryListListener
       (newMediaQueryListListener, newMediaQueryListListenerSync,
        newMediaQueryListListenerAsync, MediaQueryListListener)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListener ::
                          (MonadIO m) =>
                            (Maybe MediaQueryList -> IO ()) -> m MediaQueryListListener
newMediaQueryListListener callback
  = liftIO
      (syncCallback1 ThrowWouldBlock
         (\ list -> fromJSRefUnchecked list >>= \ list' -> callback list'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListenerSync ::
                              (MonadIO m) =>
                                (Maybe MediaQueryList -> IO ()) -> m MediaQueryListListener
newMediaQueryListListenerSync callback
  = liftIO
      (syncCallback1 ContinueAsync
         (\ list -> fromJSRefUnchecked list >>= \ list' -> callback list'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListenerAsync ::
                               (MonadIO m) =>
                                 (Maybe MediaQueryList -> IO ()) -> m MediaQueryListListener
newMediaQueryListListenerAsync callback
  = liftIO
      (asyncCallback1
         (\ list -> fromJSRefUnchecked list >>= \ list' -> callback list'))