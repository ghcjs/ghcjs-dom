{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ReadableStreamSource
       (js_start, start, js_pull, pull, js_cancel, cancel,
        js_getController, getController, ReadableStreamSource(..),
        gTypeReadableStreamSource)
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
 
foreign import javascript interruptible
        "$1[\"start\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_start ::
        ReadableStreamSource -> ReadableStreamDefaultController -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamSource.start Mozilla ReadableStreamSource.start documentation> 
start ::
      (MonadIO m) =>
        ReadableStreamSource -> ReadableStreamDefaultController -> m ()
start self controller
  = liftIO ((js_start self controller) >>= maybeThrowPromiseRejected)
 
foreign import javascript interruptible
        "$1[\"pull\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_pull ::
        ReadableStreamSource -> ReadableStreamDefaultController -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamSource.pull Mozilla ReadableStreamSource.pull documentation> 
pull ::
     (MonadIO m) =>
       ReadableStreamSource -> ReadableStreamDefaultController -> m ()
pull self controller
  = liftIO ((js_pull self controller) >>= maybeThrowPromiseRejected)
 
foreign import javascript unsafe "$1[\"cancel\"]($2)" js_cancel ::
        ReadableStreamSource -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamSource.cancel Mozilla ReadableStreamSource.cancel documentation> 
cancel ::
       (MonadIO m, ToJSVal reason) =>
         ReadableStreamSource -> reason -> m ()
cancel self reason
  = liftIO (toJSVal reason >>= \ reason' -> js_cancel self reason')
 
foreign import javascript unsafe "$1[\"controller\"]"
        js_getController :: ReadableStreamSource -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamSource.controller Mozilla ReadableStreamSource.controller documentation> 
getController :: (MonadIO m) => ReadableStreamSource -> m JSVal
getController self = liftIO (js_getController self)