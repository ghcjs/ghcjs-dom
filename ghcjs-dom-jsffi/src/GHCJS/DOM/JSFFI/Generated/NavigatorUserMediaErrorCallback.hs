{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NavigatorUserMediaErrorCallback
       (newNavigatorUserMediaErrorCallback,
        newNavigatorUserMediaErrorCallbackSync,
        newNavigatorUserMediaErrorCallbackAsync,
        NavigatorUserMediaErrorCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
newNavigatorUserMediaErrorCallback ::
                                   (MonadIO m) =>
                                     (NavigatorUserMediaError -> IO ()) ->
                                       m NavigatorUserMediaErrorCallback
newNavigatorUserMediaErrorCallback callback
  = liftIO
      (NavigatorUserMediaErrorCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
newNavigatorUserMediaErrorCallbackSync ::
                                       (MonadIO m) =>
                                         (NavigatorUserMediaError -> IO ()) ->
                                           m NavigatorUserMediaErrorCallback
newNavigatorUserMediaErrorCallbackSync callback
  = liftIO
      (NavigatorUserMediaErrorCallback <$>
         syncCallback1 ContinueAsync
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation> 
newNavigatorUserMediaErrorCallbackAsync ::
                                        (MonadIO m) =>
                                          (NavigatorUserMediaError -> IO ()) ->
                                            m NavigatorUserMediaErrorCallback
newNavigatorUserMediaErrorCallbackAsync callback
  = liftIO
      (NavigatorUserMediaErrorCallback <$>
         asyncCallback1
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))