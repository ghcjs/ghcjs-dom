{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StringCallback
       (newStringCallback, newStringCallbackSync, newStringCallbackAsync,
        StringCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback Mozilla StringCallback documentation> 
newStringCallback ::
                  (MonadIO m, FromJSString data') =>
                    (data' -> IO ()) -> m (StringCallback data')
newStringCallback callback
  = liftIO
      (StringCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ data' ->
              fromJSValUnchecked data' >>= \ data'' -> callback data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback Mozilla StringCallback documentation> 
newStringCallbackSync ::
                      (MonadIO m, FromJSString data') =>
                        (data' -> IO ()) -> m (StringCallback data')
newStringCallbackSync callback
  = liftIO
      (StringCallback <$>
         syncCallback1 ContinueAsync
           (\ data' ->
              fromJSValUnchecked data' >>= \ data'' -> callback data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback Mozilla StringCallback documentation> 
newStringCallbackAsync ::
                       (MonadIO m, FromJSString data') =>
                         (data' -> IO ()) -> m (StringCallback data')
newStringCallbackAsync callback
  = liftIO
      (StringCallback <$>
         asyncCallback1
           (\ data' ->
              fromJSValUnchecked data' >>= \ data'' -> callback data''))