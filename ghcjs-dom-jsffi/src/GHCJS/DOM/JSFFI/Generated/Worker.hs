{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Worker
       (js_newWorker, newWorker, js_terminate, terminate, js_postMessage,
        postMessage, message, Worker(..), gTypeWorker)
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
 
foreign import javascript unsafe "new window[\"Worker\"]($1)"
        js_newWorker :: JSString -> IO Worker

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation> 
newWorker ::
          (MonadIO m, ToJSString scriptUrl) => scriptUrl -> m Worker
newWorker scriptUrl = liftIO (js_newWorker (toJSString scriptUrl))
 
foreign import javascript unsafe "$1[\"terminate\"]()" js_terminate
        :: Worker -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.terminate Mozilla Worker.terminate documentation> 
terminate :: (MonadIO m) => Worker -> m ()
terminate self = liftIO (js_terminate self)
 
foreign import javascript safe "$1[\"postMessage\"]($2, $3)"
        js_postMessage :: Worker -> JSVal -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.postMessage Mozilla Worker.postMessage documentation> 
postMessage ::
            (MonadIO m, ToJSVal message, IsGObject transfer) =>
              Worker -> message -> [transfer] -> m ()
postMessage self message transfer
  = liftIO
      (toJSVal transfer >>=
         \ transfer' ->
           toJSVal message >>= \ message' -> js_postMessage self message'
             transfer')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.onmessage Mozilla Worker.onmessage documentation> 
message :: EventName Worker MessageEvent
message = unsafeEventNameAsync (toJSString "message")