{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DedicatedWorkerGlobalScope
       (js_postMessage, postMessage, message,
        DedicatedWorkerGlobalScope(..), gTypeDedicatedWorkerGlobalScope)
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
 
foreign import javascript safe "$1[\"postMessage\"]($2, $3)"
        js_postMessage ::
        DedicatedWorkerGlobalScope -> JSVal -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.postMessage Mozilla DedicatedWorkerGlobalScope.postMessage documentation> 
postMessage ::
            (MonadIO m, ToJSVal message, IsGObject transfer) =>
              DedicatedWorkerGlobalScope -> message -> [transfer] -> m ()
postMessage self message transfer
  = liftIO
      (toJSVal transfer >>=
         \ transfer' ->
           toJSVal message >>= \ message' -> js_postMessage self message'
             transfer')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.onmessage Mozilla DedicatedWorkerGlobalScope.onmessage documentation> 
message :: EventName DedicatedWorkerGlobalScope MessageEvent
message = unsafeEventNameAsync (toJSString "message")