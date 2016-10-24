{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Worker
       (js_newWorker, newWorker, js_postMessage, postMessage,
        js_terminate, terminate, message, Worker(..), gTypeWorker)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "new window[\"Worker\"]($1)"
        js_newWorker :: JSString -> IO Worker

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation> 
newWorker ::
          (MonadIO m, ToJSString scriptUrl) => scriptUrl -> m Worker
newWorker scriptUrl = liftIO (js_newWorker (toJSString scriptUrl))
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3)"
        js_postMessage ::
        Worker -> Nullable SerializedScriptValue -> Nullable Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.postMessage Mozilla Worker.postMessage documentation> 
postMessage ::
            (MonadIO m, IsSerializedScriptValue message,
             IsArray messagePorts) =>
              Worker -> Maybe message -> Maybe messagePorts -> m ()
postMessage self message messagePorts
  = liftIO
      (js_postMessage (self)
         (maybeToNullable (fmap toSerializedScriptValue message))
         (maybeToNullable (fmap toArray messagePorts)))
 
foreign import javascript unsafe "$1[\"terminate\"]()" js_terminate
        :: Worker -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.terminate Mozilla Worker.terminate documentation> 
terminate :: (MonadIO m) => Worker -> m ()
terminate self = liftIO (js_terminate (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.onmessage Mozilla Worker.onmessage documentation> 
message :: EventName Worker MessageEvent
message = unsafeEventName (toJSString "message")