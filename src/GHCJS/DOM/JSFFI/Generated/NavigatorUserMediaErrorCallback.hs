{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.NavigatorUserMediaErrorCallback
       (newNavigatorUserMediaErrorCallback,
        newNavigatorUserMediaErrorCallbackSync,
        newNavigatorUserMediaErrorCallbackAsync,
        NavigatorUserMediaErrorCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
newNavigatorUserMediaErrorCallback ::
                                   (MonadIO m) =>
                                     (Maybe NavigatorUserMediaError -> IO ()) ->
                                       m NavigatorUserMediaErrorCallback
newNavigatorUserMediaErrorCallback callback
  = liftIO
      (syncCallback1 ThrowWouldBlock
         (\ error ->
            fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
newNavigatorUserMediaErrorCallbackSync ::
                                       (MonadIO m) =>
                                         (Maybe NavigatorUserMediaError -> IO ()) ->
                                           m NavigatorUserMediaErrorCallback
newNavigatorUserMediaErrorCallbackSync callback
  = liftIO
      (syncCallback1 ContinueAsync
         (\ error ->
            fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
newNavigatorUserMediaErrorCallbackAsync ::
                                        (MonadIO m) =>
                                          (Maybe NavigatorUserMediaError -> IO ()) ->
                                            m NavigatorUserMediaErrorCallback
newNavigatorUserMediaErrorCallbackAsync callback
  = liftIO
      (asyncCallback1
         (\ error ->
            fromJSRefUnchecked error >>= \ error' -> callback error'))