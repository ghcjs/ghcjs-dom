{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.NavigatorUserMediaSuccessCallback
       (newNavigatorUserMediaSuccessCallback,
        newNavigatorUserMediaSuccessCallbackSync,
        newNavigatorUserMediaSuccessCallbackAsync,
        NavigatorUserMediaSuccessCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallback ::
                                     (MonadIO m) =>
                                       (Maybe MediaStream -> IO ()) ->
                                         m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallback callback
  = liftIO
      (NavigatorUserMediaSuccessCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ stream ->
              fromJSValUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackSync ::
                                         (MonadIO m) =>
                                           (Maybe MediaStream -> IO ()) ->
                                             m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackSync callback
  = liftIO
      (NavigatorUserMediaSuccessCallback <$>
         syncCallback1 ContinueAsync
           (\ stream ->
              fromJSValUnchecked stream >>= \ stream' -> callback stream'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation> 
newNavigatorUserMediaSuccessCallbackAsync ::
                                          (MonadIO m) =>
                                            (Maybe MediaStream -> IO ()) ->
                                              m NavigatorUserMediaSuccessCallback
newNavigatorUserMediaSuccessCallbackAsync callback
  = liftIO
      (NavigatorUserMediaSuccessCallback <$>
         asyncCallback1
           (\ stream ->
              fromJSValUnchecked stream >>= \ stream' -> callback stream'))