{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WritableStream
       (js_newWritableStream, newWritableStream, js_abort, abort, abort_,
        js_close, close, close_, js_write, write, write_, js_getClosed,
        getClosed, js_getReady, getReady, js_getState, getState,
        WritableStream(..), gTypeWritableStream)
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
 
foreign import javascript unsafe "new window[\"WritableStream\"]()"
        js_newWritableStream :: IO WritableStream

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream Mozilla WritableStream documentation> 
newWritableStream :: (MonadIO m) => m WritableStream
newWritableStream = liftIO (js_newWritableStream)
 
foreign import javascript interruptible
        "$1[\"abort\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_abort :: WritableStream -> Optional JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.abort Mozilla WritableStream.abort documentation> 
abort ::
      (MonadIO m, ToJSVal reason) =>
        WritableStream -> Maybe reason -> m JSVal
abort self reason
  = liftIO
      ((mapM toJSVal reason >>=
          \ reason' -> js_abort self (maybeToOptional reason'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.abort Mozilla WritableStream.abort documentation> 
abort_ ::
       (MonadIO m, ToJSVal reason) =>
         WritableStream -> Maybe reason -> m ()
abort_ self reason
  = liftIO
      (void
         (mapM toJSVal reason >>=
            \ reason' -> js_abort self (maybeToOptional reason')))
 
foreign import javascript interruptible
        "$1[\"close\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_close :: WritableStream -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.close Mozilla WritableStream.close documentation> 
close :: (MonadIO m) => WritableStream -> m JSVal
close self = liftIO ((js_close self) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.close Mozilla WritableStream.close documentation> 
close_ :: (MonadIO m) => WritableStream -> m ()
close_ self = liftIO (void (js_close self))
 
foreign import javascript interruptible
        "$1[\"write\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_write :: WritableStream -> JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.write Mozilla WritableStream.write documentation> 
write ::
      (MonadIO m, ToJSVal chunk) => WritableStream -> chunk -> m JSVal
write self chunk
  = liftIO
      ((toJSVal chunk >>= \ chunk' -> js_write self chunk') >>=
         checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.write Mozilla WritableStream.write documentation> 
write_ ::
       (MonadIO m, ToJSVal chunk) => WritableStream -> chunk -> m ()
write_ self chunk
  = liftIO
      (void (toJSVal chunk >>= \ chunk' -> js_write self chunk'))
 
foreign import javascript interruptible
        "$1[\"closed\"].then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getClosed :: WritableStream -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.closed Mozilla WritableStream.closed documentation> 
getClosed :: (MonadIO m) => WritableStream -> m Bool
getClosed self
  = liftIO ((js_getClosed self) >>= checkPromiseResult)
 
foreign import javascript interruptible
        "$1[\"ready\"].then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getReady :: WritableStream -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.ready Mozilla WritableStream.ready documentation> 
getReady :: (MonadIO m) => WritableStream -> m Bool
getReady self = liftIO ((js_getReady self) >>= checkPromiseResult)
 
foreign import javascript unsafe "$1[\"state\"]" js_getState ::
        WritableStream -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WritableStream.state Mozilla WritableStream.state documentation> 
getState ::
         (MonadIO m, FromJSString result) => WritableStream -> m result
getState self = liftIO (fromJSString <$> (js_getState self))